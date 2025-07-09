;; Auto-generated. Do not edit!


(when (boundp 'md::md_robot_msg2)
  (if (not (find-package "MD"))
    (make-package "MD"))
  (shadow 'md_robot_msg2 (find-package "MD")))
(unless (find-package "MD::MD_ROBOT_MSG2")
  (make-package "MD::MD_ROBOT_MSG2"))

(in-package "ROS")
;;//! \htmlinclude md_robot_msg2.msg.html


(defclass md::md_robot_msg2
  :super ros::object
  :slots (_interval_time _x_pos _y_pos _angule _US_1 _US_2 _US_3 _US_4 _platform_state _linear_velocity _angular_velocity _input_voltage ))

(defmethod md::md_robot_msg2
  (:init
   (&key
    ((:interval_time __interval_time) 0.0)
    ((:x_pos __x_pos) 0)
    ((:y_pos __y_pos) 0)
    ((:angule __angule) 0)
    ((:US_1 __US_1) 0)
    ((:US_2 __US_2) 0)
    ((:US_3 __US_3) 0)
    ((:US_4 __US_4) 0)
    ((:platform_state __platform_state) 0)
    ((:linear_velocity __linear_velocity) 0)
    ((:angular_velocity __angular_velocity) 0)
    ((:input_voltage __input_voltage) 0.0)
    )
   (send-super :init)
   (setq _interval_time (float __interval_time))
   (setq _x_pos (round __x_pos))
   (setq _y_pos (round __y_pos))
   (setq _angule (round __angule))
   (setq _US_1 (round __US_1))
   (setq _US_2 (round __US_2))
   (setq _US_3 (round __US_3))
   (setq _US_4 (round __US_4))
   (setq _platform_state (round __platform_state))
   (setq _linear_velocity (round __linear_velocity))
   (setq _angular_velocity (round __angular_velocity))
   (setq _input_voltage (float __input_voltage))
   self)
  (:interval_time
   (&optional __interval_time)
   (if __interval_time (setq _interval_time __interval_time)) _interval_time)
  (:x_pos
   (&optional __x_pos)
   (if __x_pos (setq _x_pos __x_pos)) _x_pos)
  (:y_pos
   (&optional __y_pos)
   (if __y_pos (setq _y_pos __y_pos)) _y_pos)
  (:angule
   (&optional __angule)
   (if __angule (setq _angule __angule)) _angule)
  (:US_1
   (&optional __US_1)
   (if __US_1 (setq _US_1 __US_1)) _US_1)
  (:US_2
   (&optional __US_2)
   (if __US_2 (setq _US_2 __US_2)) _US_2)
  (:US_3
   (&optional __US_3)
   (if __US_3 (setq _US_3 __US_3)) _US_3)
  (:US_4
   (&optional __US_4)
   (if __US_4 (setq _US_4 __US_4)) _US_4)
  (:platform_state
   (&optional __platform_state)
   (if __platform_state (setq _platform_state __platform_state)) _platform_state)
  (:linear_velocity
   (&optional __linear_velocity)
   (if __linear_velocity (setq _linear_velocity __linear_velocity)) _linear_velocity)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:input_voltage
   (&optional __input_voltage)
   (if __input_voltage (setq _input_voltage __input_voltage)) _input_voltage)
  (:serialization-length
   ()
   (+
    ;; float64 _interval_time
    8
    ;; int32 _x_pos
    4
    ;; int32 _y_pos
    4
    ;; int16 _angule
    2
    ;; uint8 _US_1
    1
    ;; uint8 _US_2
    1
    ;; uint8 _US_3
    1
    ;; uint8 _US_4
    1
    ;; uint8 _platform_state
    1
    ;; int16 _linear_velocity
    2
    ;; int16 _angular_velocity
    2
    ;; float32 _input_voltage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _interval_time
       (sys::poke _interval_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _x_pos
       (write-long _x_pos s)
     ;; int32 _y_pos
       (write-long _y_pos s)
     ;; int16 _angule
       (write-word _angule s)
     ;; uint8 _US_1
       (write-byte _US_1 s)
     ;; uint8 _US_2
       (write-byte _US_2 s)
     ;; uint8 _US_3
       (write-byte _US_3 s)
     ;; uint8 _US_4
       (write-byte _US_4 s)
     ;; uint8 _platform_state
       (write-byte _platform_state s)
     ;; int16 _linear_velocity
       (write-word _linear_velocity s)
     ;; int16 _angular_velocity
       (write-word _angular_velocity s)
     ;; float32 _input_voltage
       (sys::poke _input_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _interval_time
     (setq _interval_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _x_pos
     (setq _x_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y_pos
     (setq _y_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _angule
     (setq _angule (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _US_1
     (setq _US_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _US_2
     (setq _US_2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _US_3
     (setq _US_3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _US_4
     (setq _US_4 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _platform_state
     (setq _platform_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _linear_velocity
     (setq _linear_velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _input_voltage
     (setq _input_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get md::md_robot_msg2 :md5sum-) "de9f2ebda4cc402f2af0c2ecca0409bf")
(setf (get md::md_robot_msg2 :datatype-) "md/md_robot_msg2")
(setf (get md::md_robot_msg2 :definition-)
      "float64 interval_time
int32 x_pos
int32 y_pos
int16 angule
uint8 US_1
uint8 US_2
uint8 US_3
uint8 US_4
uint8 platform_state
int16 linear_velocity
int16 angular_velocity
float32 input_voltage



")



(provide :md/md_robot_msg2 "de9f2ebda4cc402f2af0c2ecca0409bf")


