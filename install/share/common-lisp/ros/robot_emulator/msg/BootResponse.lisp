; Auto-generated. Do not edit!


(cl:in-package robot_emulator-msg)


;//! \htmlinclude BootResponse.msg.html

(cl:defclass <BootResponse> (roslisp-msg-protocol:ros-message)
  ((modulenumber
    :reader modulenumber
    :initarg :modulenumber
    :type cl:integer
    :initform 0)
   (moduletype
    :reader moduletype
    :initarg :moduletype
    :type cl:string
    :initform ""))
)

(cl:defclass BootResponse (<BootResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BootResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BootResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_emulator-msg:<BootResponse> is deprecated: use robot_emulator-msg:BootResponse instead.")))

(cl:ensure-generic-function 'modulenumber-val :lambda-list '(m))
(cl:defmethod modulenumber-val ((m <BootResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_emulator-msg:modulenumber-val is deprecated.  Use robot_emulator-msg:modulenumber instead.")
  (modulenumber m))

(cl:ensure-generic-function 'moduletype-val :lambda-list '(m))
(cl:defmethod moduletype-val ((m <BootResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_emulator-msg:moduletype-val is deprecated.  Use robot_emulator-msg:moduletype instead.")
  (moduletype m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BootResponse>) ostream)
  "Serializes a message object of type '<BootResponse>"
  (cl:let* ((signed (cl:slot-value msg 'modulenumber)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'moduletype))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'moduletype))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BootResponse>) istream)
  "Deserializes a message object of type '<BootResponse>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'modulenumber) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'moduletype) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'moduletype) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BootResponse>)))
  "Returns string type for a message object of type '<BootResponse>"
  "robot_emulator/BootResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BootResponse)))
  "Returns string type for a message object of type 'BootResponse"
  "robot_emulator/BootResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BootResponse>)))
  "Returns md5sum for a message object of type '<BootResponse>"
  "7ed1ea0cf1ef59caf9b63d3b9f5a8f15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BootResponse)))
  "Returns md5sum for a message object of type 'BootResponse"
  "7ed1ea0cf1ef59caf9b63d3b9f5a8f15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BootResponse>)))
  "Returns full string definition for message of type '<BootResponse>"
  (cl:format cl:nil "int64 modulenumber~%string moduletype~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BootResponse)))
  "Returns full string definition for message of type 'BootResponse"
  (cl:format cl:nil "int64 modulenumber~%string moduletype~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BootResponse>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'moduletype))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BootResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'BootResponse
    (cl:cons ':modulenumber (modulenumber msg))
    (cl:cons ':moduletype (moduletype msg))
))
