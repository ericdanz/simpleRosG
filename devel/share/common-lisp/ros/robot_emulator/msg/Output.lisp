; Auto-generated. Do not edit!


(cl:in-package robot_emulator-msg)


;//! \htmlinclude Output.msg.html

(cl:defclass <Output> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:string
    :initform ""))
)

(cl:defclass Output (<Output>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Output>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Output)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_emulator-msg:<Output> is deprecated: use robot_emulator-msg:Output instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_emulator-msg:output-val is deprecated.  Use robot_emulator-msg:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Output>) ostream)
  "Serializes a message object of type '<Output>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'output))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Output>) istream)
  "Deserializes a message object of type '<Output>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'output) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Output>)))
  "Returns string type for a message object of type '<Output>"
  "robot_emulator/Output")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Output)))
  "Returns string type for a message object of type 'Output"
  "robot_emulator/Output")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Output>)))
  "Returns md5sum for a message object of type '<Output>"
  "0825d95fdfa2c8f4bbb4e9c74bccd3fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Output)))
  "Returns md5sum for a message object of type 'Output"
  "0825d95fdfa2c8f4bbb4e9c74bccd3fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Output>)))
  "Returns full string definition for message of type '<Output>"
  (cl:format cl:nil "string output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Output)))
  "Returns full string definition for message of type 'Output"
  (cl:format cl:nil "string output~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Output>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Output>))
  "Converts a ROS message object to a list"
  (cl:list 'Output
    (cl:cons ':output (output msg))
))
