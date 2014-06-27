; Auto-generated. Do not edit!


(cl:in-package robot_emulator-msg)


;//! \htmlinclude Request.msg.html

(cl:defclass <Request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type cl:string
    :initform ""))
)

(cl:defclass Request (<Request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_emulator-msg:<Request> is deprecated: use robot_emulator-msg:Request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <Request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_emulator-msg:request-val is deprecated.  Use robot_emulator-msg:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Request>) ostream)
  "Serializes a message object of type '<Request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Request>) istream)
  "Deserializes a message object of type '<Request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Request>)))
  "Returns string type for a message object of type '<Request>"
  "robot_emulator/Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Request)))
  "Returns string type for a message object of type 'Request"
  "robot_emulator/Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Request>)))
  "Returns md5sum for a message object of type '<Request>"
  "9b13f31f7a0a36901919f7ec0d9f40d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Request)))
  "Returns md5sum for a message object of type 'Request"
  "9b13f31f7a0a36901919f7ec0d9f40d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Request>)))
  "Returns full string definition for message of type '<Request>"
  (cl:format cl:nil "string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Request)))
  "Returns full string definition for message of type 'Request"
  (cl:format cl:nil "string request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Request>))
  "Converts a ROS message object to a list"
  (cl:list 'Request
    (cl:cons ':request (request msg))
))
