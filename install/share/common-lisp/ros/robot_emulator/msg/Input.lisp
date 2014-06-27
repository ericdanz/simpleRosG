; Auto-generated. Do not edit!


(cl:in-package robot_emulator-msg)


;//! \htmlinclude Input.msg.html

(cl:defclass <Input> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:string
    :initform ""))
)

(cl:defclass Input (<Input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_emulator-msg:<Input> is deprecated: use robot_emulator-msg:Input instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_emulator-msg:input-val is deprecated.  Use robot_emulator-msg:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Input>) ostream)
  "Serializes a message object of type '<Input>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Input>) istream)
  "Deserializes a message object of type '<Input>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Input>)))
  "Returns string type for a message object of type '<Input>"
  "robot_emulator/Input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Input)))
  "Returns string type for a message object of type 'Input"
  "robot_emulator/Input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Input>)))
  "Returns md5sum for a message object of type '<Input>"
  "39e92f1778057359c64c7b8a7d7b19de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Input)))
  "Returns md5sum for a message object of type 'Input"
  "39e92f1778057359c64c7b8a7d7b19de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Input>)))
  "Returns full string definition for message of type '<Input>"
  (cl:format cl:nil "string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Input)))
  "Returns full string definition for message of type 'Input"
  (cl:format cl:nil "string input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Input>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Input>))
  "Converts a ROS message object to a list"
  (cl:list 'Input
    (cl:cons ':input (input msg))
))
