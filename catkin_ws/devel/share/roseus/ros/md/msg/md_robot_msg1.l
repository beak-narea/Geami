;; Auto-generated. Do not edit!


(when (boundp 'md::md_robot_msg1)
  (if (not (find-package "MD"))
    (make-package "MD"))
  (shadow 'md_robot_msg1 (find-package "MD")))
(unless (find-package "MD::MD_ROBOT_MSG1")
  (make-package "MD::MD_ROBOT_MSG1"))

(in-package "ROS")
;;//! \htmlinclude md_robot_msg1.msg.html


(defclass md::md_robot_msg1
  :super ros::object
  :slots (_interval_time _motor1_rpm _motor1_pos _motor2_rpm _motor2_pos _motor1_state _motor2_state _input_voltage ))

(defmethod md::md_robot_msg1
  (:init
   (&key
    ((:interval_time __interval_time) 0.0)
    ((:motor1_rpm __motor1_rpm) 0)
    ((:motor1_pos __motor1_pos) 0)
    ((:motor2_rpm __motor2_rpm) 0)
    ((:motor2_pos __motor2_pos) 0)
    ((:motor1_state __motor1_state) 0)
    ((:motor2_state __motor2_state) 0)
    ((:input_voltage __input_voltage) 0.0)
    )
   (send-super :init)
   (setq _interval_time (float __interval_time))
   (setq _motor1_rpm (round __motor1_rpm))
   (setq _motor1_pos (round __motor1_pos))
   (setq _motor2_rpm (round __motor2_rpm))
   (setq _motor2_pos (round __motor2_pos))
   (setq _motor1_state (round __motor1_state))
   (setq _motor2_state (round __motor2_state))
   (setq _input_voltage (float __input_voltage))
   self)
  (:interval_time
   (&optional __interval_time)
   (if __interval_time (setq _interval_time __interval_time)) _interval_time)
  (:motor1_rpm
   (&optional __motor1_rpm)
   (if __motor1_rpm (setq _motor1_rpm __motor1_rpm)) _motor1_rpm)
  (:motor1_pos
   (&optional __motor1_pos)
   (if __motor1_pos (setq _motor1_pos __motor1_pos)) _motor1_pos)
  (:motor2_rpm
   (&optional __motor2_rpm)
   (if __motor2_rpm (setq _motor2_rpm __motor2_rpm)) _motor2_rpm)
  (:motor2_pos
   (&optional __motor2_pos)
   (if __motor2_pos (setq _motor2_pos __motor2_pos)) _motor2_pos)
  (:motor1_state
   (&optional __motor1_state)
   (if __motor1_state (setq _motor1_state __motor1_state)) _motor1_state)
  (:motor2_state
   (&optional __motor2_state)
   (if __motor2_state (setq _motor2_state __motor2_state)) _motor2_state)
  (:input_voltage
   (&optional __input_voltage)
   (if __input_voltage (setq _input_voltage __input_voltage)) _input_voltage)
  (:serialization-length
   ()
   (+
    ;; float64 _interval_time
    8
    ;; int16 _motor1_rpm
    2
    ;; int32 _motor1_pos
    4
    ;; int16 _motor2_rpm
    2
    ;; int32 _motor2_pos
    4
    ;; uint8 _motor1_state
    1
    ;; uint8 _motor2_state
    1
    ;; float32 _input_voltage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _interval_time
       (sys::poke _interval_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _motor1_rpm
       (write-word _motor1_rpm s)
     ;; int32 _motor1_pos
       (write-long _motor1_pos s)
     ;; int16 _motor2_rpm
       (write-word _motor2_rpm s)
     ;; int32 _motor2_pos
       (write-long _motor2_pos s)
     ;; uint8 _motor1_state
       (write-byte _motor1_state s)
     ;; uint8 _motor2_state
       (write-byte _motor2_state s)
     ;; float32 _input_voltage
       (sys::poke _input_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _interval_time
     (setq _interval_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _motor1_rpm
     (setq _motor1_rpm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _motor1_pos
     (setq _motor1_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _motor2_rpm
     (setq _motor2_rpm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _motor2_pos
     (setq _motor2_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _motor1_state
     (setq _motor1_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motor2_state
     (setq _motor2_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _input_voltage
     (setq _input_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get md::md_robot_msg1 :md5sum-) "5f9c226b917ed3bb79f983ee199f83ed")
(setf (get md::md_robot_msg1 :datatype-) "md/md_robot_msg1")
(setf (get md::md_robot_msg1 :definition-)
      "float64 interval_time
int16 motor1_rpm
int32 motor1_pos
int16 motor2_rpm
int32 motor2_pos
uint8 motor1_state
uint8 motor2_state
float32 input_voltage
")



(provide :md/md_robot_msg1 "5f9c226b917ed3bb79f983ee199f83ed")


