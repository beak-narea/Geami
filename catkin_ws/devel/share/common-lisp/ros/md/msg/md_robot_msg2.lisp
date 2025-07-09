; Auto-generated. Do not edit!


(cl:in-package md-msg)


;//! \htmlinclude md_robot_msg2.msg.html

(cl:defclass <md_robot_msg2> (roslisp-msg-protocol:ros-message)
  ((interval_time
    :reader interval_time
    :initarg :interval_time
    :type cl:float
    :initform 0.0)
   (x_pos
    :reader x_pos
    :initarg :x_pos
    :type cl:integer
    :initform 0)
   (y_pos
    :reader y_pos
    :initarg :y_pos
    :type cl:integer
    :initform 0)
   (angule
    :reader angule
    :initarg :angule
    :type cl:fixnum
    :initform 0)
   (US_1
    :reader US_1
    :initarg :US_1
    :type cl:fixnum
    :initform 0)
   (US_2
    :reader US_2
    :initarg :US_2
    :type cl:fixnum
    :initform 0)
   (US_3
    :reader US_3
    :initarg :US_3
    :type cl:fixnum
    :initform 0)
   (US_4
    :reader US_4
    :initarg :US_4
    :type cl:fixnum
    :initform 0)
   (platform_state
    :reader platform_state
    :initarg :platform_state
    :type cl:fixnum
    :initform 0)
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type cl:fixnum
    :initform 0)
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type cl:fixnum
    :initform 0)
   (input_voltage
    :reader input_voltage
    :initarg :input_voltage
    :type cl:float
    :initform 0.0))
)

(cl:defclass md_robot_msg2 (<md_robot_msg2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <md_robot_msg2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'md_robot_msg2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name md-msg:<md_robot_msg2> is deprecated: use md-msg:md_robot_msg2 instead.")))

(cl:ensure-generic-function 'interval_time-val :lambda-list '(m))
(cl:defmethod interval_time-val ((m <md_robot_msg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:interval_time-val is deprecated.  Use md-msg:interval_time instead.")
  (interval_time m))

(cl:ensure-generic-function 'x_pos-val :lambda-list '(m))
(cl:defmethod x_pos-val ((m <md_robot_msg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:x_pos-val is deprecated.  Use md-msg:x_pos instead.")
  (x_pos m))

(cl:ensure-generic-function 'y_pos-val :lambda-list '(m))
(cl:defmethod y_pos-val ((m <md_robot_msg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:y_pos-val is deprecated.  Use md-msg:y_pos instead.")
  (y_pos m))

(cl:ensure-generic-function 'angule-val :lambda-list '(m))
(cl:defmethod angule-val ((m <md_robot_msg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:angule-val is deprecated.  Use md-msg:angule instead.")
  (angule m))

(cl:ensure-generic-function 'US_1-val :lambda-list '(m))
(cl:defmethod US_1-val ((m <md_robot_msg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:US_1-val is deprecated.  Use md-msg:US_1 instead.")
  (US_1 m))

(cl:ensure-generic-function 'US_2-val :lambda-list '(m))
(cl:defmethod US_2-val ((m <md_robot_msg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:US_2-val is deprecated.  Use md-msg:US_2 instead.")
  (US_2 m))

(cl:ensure-generic-function 'US_3-val :lambda-list '(m))
(cl:defmethod US_3-val ((m <md_robot_msg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:US_3-val is deprecated.  Use md-msg:US_3 instead.")
  (US_3 m))

(cl:ensure-generic-function 'US_4-val :lambda-list '(m))
(cl:defmethod US_4-val ((m <md_robot_msg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:US_4-val is deprecated.  Use md-msg:US_4 instead.")
  (US_4 m))

(cl:ensure-generic-function 'platform_state-val :lambda-list '(m))
(cl:defmethod platform_state-val ((m <md_robot_msg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:platform_state-val is deprecated.  Use md-msg:platform_state instead.")
  (platform_state m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <md_robot_msg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:linear_velocity-val is deprecated.  Use md-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <md_robot_msg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:angular_velocity-val is deprecated.  Use md-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'input_voltage-val :lambda-list '(m))
(cl:defmethod input_voltage-val ((m <md_robot_msg2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:input_voltage-val is deprecated.  Use md-msg:input_voltage instead.")
  (input_voltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <md_robot_msg2>) ostream)
  "Serializes a message object of type '<md_robot_msg2>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'interval_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'x_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'angule)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'platform_state)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'linear_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'angular_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'input_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <md_robot_msg2>) istream)
  "Deserializes a message object of type '<md_robot_msg2>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'interval_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_pos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_pos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angule) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'US_4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'platform_state)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'linear_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angular_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'input_voltage) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<md_robot_msg2>)))
  "Returns string type for a message object of type '<md_robot_msg2>"
  "md/md_robot_msg2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'md_robot_msg2)))
  "Returns string type for a message object of type 'md_robot_msg2"
  "md/md_robot_msg2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<md_robot_msg2>)))
  "Returns md5sum for a message object of type '<md_robot_msg2>"
  "de9f2ebda4cc402f2af0c2ecca0409bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'md_robot_msg2)))
  "Returns md5sum for a message object of type 'md_robot_msg2"
  "de9f2ebda4cc402f2af0c2ecca0409bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<md_robot_msg2>)))
  "Returns full string definition for message of type '<md_robot_msg2>"
  (cl:format cl:nil "float64 interval_time~%int32 x_pos~%int32 y_pos~%int16 angule~%uint8 US_1~%uint8 US_2~%uint8 US_3~%uint8 US_4~%uint8 platform_state~%int16 linear_velocity~%int16 angular_velocity~%float32 input_voltage~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'md_robot_msg2)))
  "Returns full string definition for message of type 'md_robot_msg2"
  (cl:format cl:nil "float64 interval_time~%int32 x_pos~%int32 y_pos~%int16 angule~%uint8 US_1~%uint8 US_2~%uint8 US_3~%uint8 US_4~%uint8 platform_state~%int16 linear_velocity~%int16 angular_velocity~%float32 input_voltage~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <md_robot_msg2>))
  (cl:+ 0
     8
     4
     4
     2
     1
     1
     1
     1
     1
     2
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <md_robot_msg2>))
  "Converts a ROS message object to a list"
  (cl:list 'md_robot_msg2
    (cl:cons ':interval_time (interval_time msg))
    (cl:cons ':x_pos (x_pos msg))
    (cl:cons ':y_pos (y_pos msg))
    (cl:cons ':angule (angule msg))
    (cl:cons ':US_1 (US_1 msg))
    (cl:cons ':US_2 (US_2 msg))
    (cl:cons ':US_3 (US_3 msg))
    (cl:cons ':US_4 (US_4 msg))
    (cl:cons ':platform_state (platform_state msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':input_voltage (input_voltage msg))
))
