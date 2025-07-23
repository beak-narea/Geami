#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import String

# 속도 제한값
BURGER_MAX_LIN_VEL = 0.22
BURGER_MAX_ANG_VEL = 2.84
WAFFLE_MAX_LIN_VEL = 0.26
WAFFLE_MAX_ANG_VEL = 1.82

def constrain(val, min_val, max_val):
    return min(max(val, min_val), max_val)

class MotorTeleopController:
    def __init__(self):
        rospy.init_node('motor_teleop_controller')

        # 퍼블리셔 & 서브스크라이버
        self.cmd_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        rospy.Subscriber('/key_input', String, self.key_input_callback)
        rospy.Subscriber('/cmd_vel', Twist, self.cmd_vel_callback)

        # 모델 속도 설정
        self.model = rospy.get_param("model", "burger")
        if self.model == "burger":
            self.max_lin_vel = BURGER_MAX_LIN_VEL
            self.max_ang_vel = BURGER_MAX_ANG_VEL
        else:
            self.max_lin_vel = WAFFLE_MAX_LIN_VEL
            self.max_ang_vel = WAFFLE_MAX_ANG_VEL

        rospy.loginfo("MotorTeleopController started (model: %s)", self.model)

    def key_input_callback(self, data):
        try:
            command = data.data.strip().lower()
            if ':' not in command:
                rospy.logwarn("형식 오류 (예: front:0.1)")
                return

            direction, value = command.split(':')
            value = float(value)

            twist = Twist()
            if direction == 'front':
                twist.linear.x = constrain(value, -self.max_lin_vel, self.max_lin_vel)
            elif direction == 'back':
                twist.linear.x = constrain(-value, -self.max_lin_vel, self.max_lin_vel)
            elif direction == 'left':
                twist.angular.z = constrain(value, -self.max_ang_vel, self.max_ang_vel)
            elif direction == 'right':
                twist.angular.z = constrain(-value, -self.max_ang_vel, self.max_ang_vel)
            elif direction == 'stop':
                twist.linear.x = 0.0
                twist.angular.z = 0.0
            else:
                rospy.logwarn("알 수 없는 방향: %s", direction)
                return

            self.cmd_pub.publish(twist)
            rospy.loginfo("입력 수신 - 방향: %s, 속도: %.2f", direction, value)

        except Exception as e:
            rospy.logerr("key_input 처리 중 오류: %s", str(e))

    def cmd_vel_callback(self, msg):
        linear = msg.linear.x
        angular = msg.angular.z

        if linear > 0:
            direction = "front"
        elif linear < 0:
            direction = "back"
        elif angular > 0:
            direction = "left"
        elif angular < 0:
            direction = "right"
        else:
            direction = "stop"

        speed = abs(linear if linear != 0 else angular)
        rospy.loginfo("모터 제어 - 방향: %s, 속도: %.2f", direction, speed)

        # 여기에 실제 MDAS 제어용 RS485 전송 코드 삽입
        # 예: self.serial.write(...)
        # 또는: self.modbus.send_command(...)
        pass

    def run(self):
        rospy.spin()

if __name__ == '__main__':
    try:
        controller = MotorTeleopController()
        controller.run()
    except rospy.ROSInterruptException:
        pass
