; Auto-generated. Do not edit!


(cl:in-package robot_emulator-srv)


;//! \htmlinclude Input-request.msg.html

(cl:defclass <Input-request> (roslisp-msg-protocol:ros-message)
  ((Input
    :reader Input
    :initarg :Input
    :type cl:string
    :initform ""))
)

(cl:defclass Input-request (<Input-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Input-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Input-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_emulator-srv:<Input-request> is deprecated: use robot_emulator-srv:Input-request instead.")))

(cl:ensure-generic-function 'Input-val :lambda-list '(m))
(cl:defmethod Input-val ((m <Input-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_emulator-srv:Input-val is deprecated.  Use robot_emulator-srv:Input instead.")
  (Input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Input-request>) ostream)
  "Serializes a message object of type '<Input-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Input))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Input-request>) istream)
  "Deserializes a message object of type '<Input-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Input) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Input) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Input-request>)))
  "Returns string type for a service object of type '<Input-request>"
  "robot_emulator/InputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Input-request)))
  "Returns string type for a service object of type 'Input-request"
  "robot_emulator/InputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Input-request>)))
  "Returns md5sum for a message object of type '<Input-request>"
  "ed6c783a61d9498b03b5f270a53c657b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Input-request)))
  "Returns md5sum for a message object of type 'Input-request"
  "ed6c783a61d9498b03b5f270a53c657b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Input-request>)))
  "Returns full string definition for message of type '<Input-request>"
  (cl:format cl:nil "string Input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Input-request)))
  "Returns full string definition for message of type 'Input-request"
  (cl:format cl:nil "string Input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Input-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Input-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Input-request
    (cl:cons ':Input (Input msg))
))
;//! \htmlinclude Input-response.msg.html

(cl:defclass <Input-response> (roslisp-msg-protocol:ros-message)
  ((Errors
    :reader Errors
    :initarg :Errors
    :type cl:string
    :initform ""))
)

(cl:defclass Input-response (<Input-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Input-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Input-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_emulator-srv:<Input-response> is deprecated: use robot_emulator-srv:Input-response instead.")))

(cl:ensure-generic-function 'Errors-val :lambda-list '(m))
(cl:defmethod Errors-val ((m <Input-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_emulator-srv:Errors-val is deprecated.  Use robot_emulator-srv:Errors instead.")
  (Errors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Input-response>) ostream)
  "Serializes a message object of type '<Input-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Errors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Errors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Input-response>) istream)
  "Deserializes a message object of type '<Input-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Errors) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Errors) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Input-response>)))
  "Returns string type for a service object of type '<Input-response>"
  "robot_emulator/InputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Input-response)))
  "Returns string type for a service object of type 'Input-response"
  "robot_emulator/InputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Input-response>)))
  "Returns md5sum for a message object of type '<Input-response>"
  "ed6c783a61d9498b03b5f270a53c657b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Input-response)))
  "Returns md5sum for a message object of type 'Input-response"
  "ed6c783a61d9498b03b5f270a53c657b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Input-response>)))
  "Returns full string definition for message of type '<Input-response>"
  (cl:format cl:nil "string Errors~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Input-response)))
  "Returns full string definition for message of type 'Input-response"
  (cl:format cl:nil "string Errors~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Input-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Errors))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Input-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Input-response
    (cl:cons ':Errors (Errors msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Input)))
  'Input-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Input)))
  'Input-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Input)))
  "Returns string type for a service object of type '<Input>"
  "robot_emulator/Input")