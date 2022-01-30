; Auto-generated. Do not edit!


(cl:in-package hybrid_astar-srv)


;//! \htmlinclude obs-request.msg.html

(cl:defclass <obs-request> (roslisp-msg-protocol:ros-message)
  ((x_r
    :reader x_r
    :initarg :x_r
    :type cl:float
    :initform 0.0)
   (y_r
    :reader y_r
    :initarg :y_r
    :type cl:float
    :initform 0.0)
   (r_r
    :reader r_r
    :initarg :r_r
    :type cl:float
    :initform 0.0)
   (theta1
    :reader theta1
    :initarg :theta1
    :type cl:float
    :initform 0.0)
   (check
    :reader check
    :initarg :check
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass obs-request (<obs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <obs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'obs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hybrid_astar-srv:<obs-request> is deprecated: use hybrid_astar-srv:obs-request instead.")))

(cl:ensure-generic-function 'x_r-val :lambda-list '(m))
(cl:defmethod x_r-val ((m <obs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:x_r-val is deprecated.  Use hybrid_astar-srv:x_r instead.")
  (x_r m))

(cl:ensure-generic-function 'y_r-val :lambda-list '(m))
(cl:defmethod y_r-val ((m <obs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:y_r-val is deprecated.  Use hybrid_astar-srv:y_r instead.")
  (y_r m))

(cl:ensure-generic-function 'r_r-val :lambda-list '(m))
(cl:defmethod r_r-val ((m <obs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:r_r-val is deprecated.  Use hybrid_astar-srv:r_r instead.")
  (r_r m))

(cl:ensure-generic-function 'theta1-val :lambda-list '(m))
(cl:defmethod theta1-val ((m <obs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:theta1-val is deprecated.  Use hybrid_astar-srv:theta1 instead.")
  (theta1 m))

(cl:ensure-generic-function 'check-val :lambda-list '(m))
(cl:defmethod check-val ((m <obs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:check-val is deprecated.  Use hybrid_astar-srv:check instead.")
  (check m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <obs-request>) ostream)
  "Serializes a message object of type '<obs-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'r_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'check) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <obs-request>) istream)
  "Deserializes a message object of type '<obs-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r_r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'check) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<obs-request>)))
  "Returns string type for a service object of type '<obs-request>"
  "hybrid_astar/obsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'obs-request)))
  "Returns string type for a service object of type 'obs-request"
  "hybrid_astar/obsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<obs-request>)))
  "Returns md5sum for a message object of type '<obs-request>"
  "5e3dfcf370bd21f423a0f98a6e24c09d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'obs-request)))
  "Returns md5sum for a message object of type 'obs-request"
  "5e3dfcf370bd21f423a0f98a6e24c09d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<obs-request>)))
  "Returns full string definition for message of type '<obs-request>"
  (cl:format cl:nil "float64 x_r~%float64 y_r~%float64 r_r~%float64 theta1~%bool check~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'obs-request)))
  "Returns full string definition for message of type 'obs-request"
  (cl:format cl:nil "float64 x_r~%float64 y_r~%float64 r_r~%float64 theta1~%bool check~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <obs-request>))
  (cl:+ 0
     8
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <obs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'obs-request
    (cl:cons ':x_r (x_r msg))
    (cl:cons ':y_r (y_r msg))
    (cl:cons ':r_r (r_r msg))
    (cl:cons ':theta1 (theta1 msg))
    (cl:cons ':check (check msg))
))
;//! \htmlinclude obs-response.msg.html

(cl:defclass <obs-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass obs-response (<obs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <obs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'obs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hybrid_astar-srv:<obs-response> is deprecated: use hybrid_astar-srv:obs-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <obs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:result-val is deprecated.  Use hybrid_astar-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <obs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:obstacles-val is deprecated.  Use hybrid_astar-srv:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <obs-response>) ostream)
  "Serializes a message object of type '<obs-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'obstacles) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <obs-response>) istream)
  "Deserializes a message object of type '<obs-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'obstacles) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<obs-response>)))
  "Returns string type for a service object of type '<obs-response>"
  "hybrid_astar/obsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'obs-response)))
  "Returns string type for a service object of type 'obs-response"
  "hybrid_astar/obsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<obs-response>)))
  "Returns md5sum for a message object of type '<obs-response>"
  "5e3dfcf370bd21f423a0f98a6e24c09d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'obs-response)))
  "Returns md5sum for a message object of type 'obs-response"
  "5e3dfcf370bd21f423a0f98a6e24c09d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<obs-response>)))
  "Returns full string definition for message of type '<obs-response>"
  (cl:format cl:nil "string result~%bool obstacles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'obs-response)))
  "Returns full string definition for message of type 'obs-response"
  (cl:format cl:nil "string result~%bool obstacles~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <obs-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <obs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'obs-response
    (cl:cons ':result (result msg))
    (cl:cons ':obstacles (obstacles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'obs)))
  'obs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'obs)))
  'obs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'obs)))
  "Returns string type for a service object of type '<obs>"
  "hybrid_astar/obs")