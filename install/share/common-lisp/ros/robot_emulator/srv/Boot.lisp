; Auto-generated. Do not edit!


(cl:in-package robot_emulator-srv)


;//! \htmlinclude Boot-request.msg.html

(cl:defclass <Boot-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Boot-request (<Boot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Boot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Boot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_emulator-srv:<Boot-request> is deprecated: use robot_emulator-srv:Boot-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Boot-request>) ostream)
  "Serializes a message object of type '<Boot-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Boot-request>) istream)
  "Deserializes a message object of type '<Boot-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Boot-request>)))
  "Returns string type for a service object of type '<Boot-request>"
  "robot_emulator/BootRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Boot-request)))
  "Returns string type for a service object of type 'Boot-request"
  "robot_emulator/BootRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Boot-request>)))
  "Returns md5sum for a message object of type '<Boot-request>"
  "58605fc76df220859ee7bedce3f6c2ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Boot-request)))
  "Returns md5sum for a message object of type 'Boot-request"
  "58605fc76df220859ee7bedce3f6c2ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Boot-request>)))
  "Returns full string definition for message of type '<Boot-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Boot-request)))
  "Returns full string definition for message of type 'Boot-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Boot-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Boot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Boot-request
))
;//! \htmlinclude Boot-response.msg.html

(cl:defclass <Boot-response> (roslisp-msg-protocol:ros-message)
  ((BootResp
    :reader BootResp
    :initarg :BootResp
    :type cl:string
    :initform ""))
)

(cl:defclass Boot-response (<Boot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Boot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Boot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_emulator-srv:<Boot-response> is deprecated: use robot_emulator-srv:Boot-response instead.")))

(cl:ensure-generic-function 'BootResp-val :lambda-list '(m))
(cl:defmethod BootResp-val ((m <Boot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_emulator-srv:BootResp-val is deprecated.  Use robot_emulator-srv:BootResp instead.")
  (BootResp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Boot-response>) ostream)
  "Serializes a message object of type '<Boot-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'BootResp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'BootResp))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Boot-response>) istream)
  "Deserializes a message object of type '<Boot-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BootResp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'BootResp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Boot-response>)))
  "Returns string type for a service object of type '<Boot-response>"
  "robot_emulator/BootResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Boot-response)))
  "Returns string type for a service object of type 'Boot-response"
  "robot_emulator/BootResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Boot-response>)))
  "Returns md5sum for a message object of type '<Boot-response>"
  "58605fc76df220859ee7bedce3f6c2ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Boot-response)))
  "Returns md5sum for a message object of type 'Boot-response"
  "58605fc76df220859ee7bedce3f6c2ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Boot-response>)))
  "Returns full string definition for message of type '<Boot-response>"
  (cl:format cl:nil "string BootResp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Boot-response)))
  "Returns full string definition for message of type 'Boot-response"
  (cl:format cl:nil "string BootResp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Boot-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'BootResp))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Boot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Boot-response
    (cl:cons ':BootResp (BootResp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Boot)))
  'Boot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Boot)))
  'Boot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Boot)))
  "Returns string type for a service object of type '<Boot>"
  "robot_emulator/Boot")