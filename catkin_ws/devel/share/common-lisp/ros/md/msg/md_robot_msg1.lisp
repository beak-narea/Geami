; Auto-generated. Do not edit!


(cl:in-package md-msg)


;//! \htmlinclude md_robot_msg1.msg.html

(cl:defclass <md_robot_msg1> (roslisp-msg-protocol:ros-message)
  ((interval_time
    :reader interval_time
    :initarg :interval_time
    :type cl:float
    :initform 0.0)
   (motor1_rpm
    :reader motor1_rpm
    :initarg :motor1_rpm
    :type cl:fixnum
    :initform 0)
   (motor1_pos
    :reader motor1_pos
    :initarg :motor1_pos
    :type cl:integer
    :initform 0)
   (motor2_rpm
    :reader motor2_rpm
    :initarg :motor2_rpm
    :type cl:fixnum
    :initform 0)
   (motor2_pos
    :reader motor2_pos
    :initarg :motor2_pos
    :type cl:integer
    :initform 0)
   (motor1_state
    :reader motor1_state
    :initarg :motor1_state
    :type cl:fixnum
    :initform 0)
   (motor2_state
    :reader motor2_state
    :initarg :motor2_state
    :type cl:fixnum
    :initform 0)
   (input_voltage
    :reader input_voltage
    :initarg :input_voltage
    :type cl:float
    :initform 0.0))
)

(cl:defclass md_robot_msg1 (<md_robot_msg1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <md_robot_msg1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'md_robot_msg1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name md-msg:<md_robot_msg1> is deprecated: use md-msg:md_robot_msg1 instead.")))

(cl:ensure-generic-function 'interval_time-val :lambda-list '(m))
(cl:defmethod interval_time-val ((m <md_robot_msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:interval_time-val is deprecated.  Use md-msg:interval_time instead.")
  (interval_time m))

(cl:ensure-generic-function 'motor1_rpm-val :lambda-list '(m))
(cl:defmethod motor1_rpm-val ((m <md_robot_msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:motor1_rpm-val is deprecated.  Use md-msg:motor1_rpm instead.")
  (motor1_rpm m))

(cl:ensure-generic-function 'motor1_pos-val :lambda-list '(m))
(cl:defmethod motor1_pos-val ((m <md_robot_msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:motor1_pos-val is deprecated.  Use md-msg:motor1_pos instead.")
  (motor1_pos m))

(cl:ensure-generic-function 'motor2_rpm-val :lambda-list '(m))
(cl:defmethod motor2_rpm-val ((m <md_robot_msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:motor2_rpm-val is deprecated.  Use md-msg:motor2_rpm instead.")
  (motor2_rpm m))

(cl:ensure-generic-function 'motor2_pos-val :lambda-list '(m))
(cl:defmethod motor2_pos-val ((m <md_robot_msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:motor2_pos-val is deprecated.  Use md-msg:motor2_pos instead.")
  (motor2_pos m))

(cl:ensure-generic-function 'motor1_state-val :lambda-list '(m))
(cl:defmethod motor1_state-val ((m <md_robot_msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:motor1_state-val is deprecated.  Use md-msg:motor1_state instead.")
  (motor1_state m))

(cl:ensure-generic-function 'motor2_state-val :lambda-list '(m))
(cl:defmethod motor2_state-val ((m <md_robot_msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:motor2_state-val is deprecated.  Use md-msg:motor2_state instead.")
  (motor2_state m))

(cl:ensure-generic-function 'input_voltage-val :lambda-list '(m))
(cl:defmethod input_voltage-val ((m <md_robot_msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader md-msg:input_voltage-val is deprecated.  Use md-msg:input_voltage instead.")
  (input_voltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <md_robot_msg1>) ostream)
  "Serializes a message object of type '<md_robot_msg1>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'interval_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'motor1_rpm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor1_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor2_rpm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor2_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor1_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor2_state)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'input_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <md_robot_msg1>) istream)
  "Deserializes a message object of type '<md_robot_msg1>"
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
      (cl:setf (cl:slot-value msg 'motor1_rpm) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor1_pos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor2_rpm) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor2_pos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor1_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor2_state)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'input_voltage) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<md_robot_msg1>)))
  "Returns string type for a message object of type '<md_robot_msg1>"
  "md/md_robot_msg1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'md_robot_msg1)))
  "Returns string type for a message object of type 'md_robot_msg1"
  "md/md_robot_msg1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<md_robot_msg1>)))
  "Returns md5sum for a message object of type '<md_robot_msg1>"
  "5f9c226b917ed3bb79f983ee199f83ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'md_robot_msg1)))
  "Returns md5sum for a message object of type 'md_robot_msg1"
  "5f9c226b917ed3bb79f983ee199f83ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<md_robot_msg1>)))
  "Returns full string definition for message of type '<md_robot_msg1>"
  (cl:format cl:nil "float64 interval_time~%int16 motor1_rpm~%int32 motor1_pos~%int16 motor2_rpm~%int32 motor2_pos~%uint8 motor1_state~%uint8 motor2_state~%float32 input_voltage~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'md_robot_msg1)))
  "Returns full string definition for message of type 'md_robot_msg1"
  (cl:format cl:nil "float64 interval_time~%int16 motor1_rpm~%int32 motor1_pos~%int16 motor2_rpm~%int32 motor2_pos~%uint8 motor1_state~%uint8 motor2_state~%float32 input_voltage~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <md_robot_msg1>))
  (cl:+ 0
     8
     2
     4
     2
     4
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <md_robot_msg1>))
  "Converts a ROS message object to a list"
  (cl:list 'md_robot_msg1
    (cl:cons ':interval_time (interval_time msg))
    (cl:cons ':motor1_rpm (motor1_rpm msg))
    (cl:cons ':motor1_pos (motor1_pos msg))
    (cl:cons ':motor2_rpm (motor2_rpm msg))
    (cl:cons ':motor2_pos (motor2_pos msg))
    (cl:cons ':motor1_state (motor1_state msg))
    (cl:cons ':motor2_state (motor2_state msg))
    (cl:cons ':input_voltage (input_voltage msg))
))
