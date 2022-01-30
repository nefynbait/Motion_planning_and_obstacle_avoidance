; Auto-generated. Do not edit!


(cl:in-package hybrid_astar-srv)


;//! \htmlinclude MonteCarloSim-request.msg.html

(cl:defclass <MonteCarloSim-request> (roslisp-msg-protocol:ros-message)
  ((sx
    :reader sx
    :initarg :sx
    :type cl:float
    :initform 0.0)
   (sy
    :reader sy
    :initarg :sy
    :type cl:float
    :initform 0.0)
   (syaw
    :reader syaw
    :initarg :syaw
    :type cl:float
    :initform 0.0)
   (syaw_t
    :reader syaw_t
    :initarg :syaw_t
    :type cl:float
    :initform 0.0)
   (gx
    :reader gx
    :initarg :gx
    :type cl:float
    :initform 0.0)
   (gy
    :reader gy
    :initarg :gy
    :type cl:float
    :initform 0.0)
   (gyaw
    :reader gyaw
    :initarg :gyaw
    :type cl:float
    :initform 0.0)
   (gyaw_t
    :reader gyaw_t
    :initarg :gyaw_t
    :type cl:float
    :initform 0.0))
)

(cl:defclass MonteCarloSim-request (<MonteCarloSim-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonteCarloSim-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonteCarloSim-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hybrid_astar-srv:<MonteCarloSim-request> is deprecated: use hybrid_astar-srv:MonteCarloSim-request instead.")))

(cl:ensure-generic-function 'sx-val :lambda-list '(m))
(cl:defmethod sx-val ((m <MonteCarloSim-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:sx-val is deprecated.  Use hybrid_astar-srv:sx instead.")
  (sx m))

(cl:ensure-generic-function 'sy-val :lambda-list '(m))
(cl:defmethod sy-val ((m <MonteCarloSim-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:sy-val is deprecated.  Use hybrid_astar-srv:sy instead.")
  (sy m))

(cl:ensure-generic-function 'syaw-val :lambda-list '(m))
(cl:defmethod syaw-val ((m <MonteCarloSim-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:syaw-val is deprecated.  Use hybrid_astar-srv:syaw instead.")
  (syaw m))

(cl:ensure-generic-function 'syaw_t-val :lambda-list '(m))
(cl:defmethod syaw_t-val ((m <MonteCarloSim-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:syaw_t-val is deprecated.  Use hybrid_astar-srv:syaw_t instead.")
  (syaw_t m))

(cl:ensure-generic-function 'gx-val :lambda-list '(m))
(cl:defmethod gx-val ((m <MonteCarloSim-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:gx-val is deprecated.  Use hybrid_astar-srv:gx instead.")
  (gx m))

(cl:ensure-generic-function 'gy-val :lambda-list '(m))
(cl:defmethod gy-val ((m <MonteCarloSim-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:gy-val is deprecated.  Use hybrid_astar-srv:gy instead.")
  (gy m))

(cl:ensure-generic-function 'gyaw-val :lambda-list '(m))
(cl:defmethod gyaw-val ((m <MonteCarloSim-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:gyaw-val is deprecated.  Use hybrid_astar-srv:gyaw instead.")
  (gyaw m))

(cl:ensure-generic-function 'gyaw_t-val :lambda-list '(m))
(cl:defmethod gyaw_t-val ((m <MonteCarloSim-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:gyaw_t-val is deprecated.  Use hybrid_astar-srv:gyaw_t instead.")
  (gyaw_t m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonteCarloSim-request>) ostream)
  "Serializes a message object of type '<MonteCarloSim-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'syaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'syaw_t))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyaw_t))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonteCarloSim-request>) istream)
  "Deserializes a message object of type '<MonteCarloSim-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'syaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'syaw_t) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyaw_t) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonteCarloSim-request>)))
  "Returns string type for a service object of type '<MonteCarloSim-request>"
  "hybrid_astar/MonteCarloSimRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonteCarloSim-request)))
  "Returns string type for a service object of type 'MonteCarloSim-request"
  "hybrid_astar/MonteCarloSimRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonteCarloSim-request>)))
  "Returns md5sum for a message object of type '<MonteCarloSim-request>"
  "ef92dc717d72570cde39a1214c59cf11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonteCarloSim-request)))
  "Returns md5sum for a message object of type 'MonteCarloSim-request"
  "ef92dc717d72570cde39a1214c59cf11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonteCarloSim-request>)))
  "Returns full string definition for message of type '<MonteCarloSim-request>"
  (cl:format cl:nil "float32 sx~%float32 sy~%float32 syaw~%float32 syaw_t~%float32 gx~%float32 gy~%float32 gyaw~%float32 gyaw_t~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonteCarloSim-request)))
  "Returns full string definition for message of type 'MonteCarloSim-request"
  (cl:format cl:nil "float32 sx~%float32 sy~%float32 syaw~%float32 syaw_t~%float32 gx~%float32 gy~%float32 gyaw~%float32 gyaw_t~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonteCarloSim-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonteCarloSim-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MonteCarloSim-request
    (cl:cons ':sx (sx msg))
    (cl:cons ':sy (sy msg))
    (cl:cons ':syaw (syaw msg))
    (cl:cons ':syaw_t (syaw_t msg))
    (cl:cons ':gx (gx msg))
    (cl:cons ':gy (gy msg))
    (cl:cons ':gyaw (gyaw msg))
    (cl:cons ':gyaw_t (gyaw_t msg))
))
;//! \htmlinclude MonteCarloSim-response.msg.html

(cl:defclass <MonteCarloSim-response> (roslisp-msg-protocol:ros-message)
  ((valid_start
    :reader valid_start
    :initarg :valid_start
    :type cl:boolean
    :initform cl:nil)
   (valid_goal
    :reader valid_goal
    :initarg :valid_goal
    :type cl:boolean
    :initform cl:nil)
   (solution_found
    :reader solution_found
    :initarg :solution_found
    :type cl:boolean
    :initform cl:nil)
   (path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (iterations
    :reader iterations
    :initarg :iterations
    :type cl:integer
    :initform 0)
   (iteration_limit
    :reader iteration_limit
    :initarg :iteration_limit
    :type cl:boolean
    :initform cl:nil)
   (nodes
    :reader nodes
    :initarg :nodes
    :type cl:integer
    :initform 0)
   (execution_time
    :reader execution_time
    :initarg :execution_time
    :type cl:integer
    :initform 0))
)

(cl:defclass MonteCarloSim-response (<MonteCarloSim-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonteCarloSim-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonteCarloSim-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hybrid_astar-srv:<MonteCarloSim-response> is deprecated: use hybrid_astar-srv:MonteCarloSim-response instead.")))

(cl:ensure-generic-function 'valid_start-val :lambda-list '(m))
(cl:defmethod valid_start-val ((m <MonteCarloSim-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:valid_start-val is deprecated.  Use hybrid_astar-srv:valid_start instead.")
  (valid_start m))

(cl:ensure-generic-function 'valid_goal-val :lambda-list '(m))
(cl:defmethod valid_goal-val ((m <MonteCarloSim-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:valid_goal-val is deprecated.  Use hybrid_astar-srv:valid_goal instead.")
  (valid_goal m))

(cl:ensure-generic-function 'solution_found-val :lambda-list '(m))
(cl:defmethod solution_found-val ((m <MonteCarloSim-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:solution_found-val is deprecated.  Use hybrid_astar-srv:solution_found instead.")
  (solution_found m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <MonteCarloSim-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:path-val is deprecated.  Use hybrid_astar-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'iterations-val :lambda-list '(m))
(cl:defmethod iterations-val ((m <MonteCarloSim-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:iterations-val is deprecated.  Use hybrid_astar-srv:iterations instead.")
  (iterations m))

(cl:ensure-generic-function 'iteration_limit-val :lambda-list '(m))
(cl:defmethod iteration_limit-val ((m <MonteCarloSim-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:iteration_limit-val is deprecated.  Use hybrid_astar-srv:iteration_limit instead.")
  (iteration_limit m))

(cl:ensure-generic-function 'nodes-val :lambda-list '(m))
(cl:defmethod nodes-val ((m <MonteCarloSim-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:nodes-val is deprecated.  Use hybrid_astar-srv:nodes instead.")
  (nodes m))

(cl:ensure-generic-function 'execution_time-val :lambda-list '(m))
(cl:defmethod execution_time-val ((m <MonteCarloSim-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:execution_time-val is deprecated.  Use hybrid_astar-srv:execution_time instead.")
  (execution_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonteCarloSim-response>) ostream)
  "Serializes a message object of type '<MonteCarloSim-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid_start) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid_goal) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'solution_found) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'iterations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'iteration_limit) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nodes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nodes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nodes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nodes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'nodes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'nodes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'nodes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'nodes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'execution_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'execution_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'execution_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'execution_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'execution_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'execution_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'execution_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'execution_time)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonteCarloSim-response>) istream)
  "Deserializes a message object of type '<MonteCarloSim-response>"
    (cl:setf (cl:slot-value msg 'valid_start) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'valid_goal) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'solution_found) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'iterations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'iterations)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'iteration_limit) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nodes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nodes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nodes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nodes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'nodes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'nodes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'nodes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'nodes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'execution_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'execution_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'execution_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'execution_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'execution_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'execution_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'execution_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'execution_time)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonteCarloSim-response>)))
  "Returns string type for a service object of type '<MonteCarloSim-response>"
  "hybrid_astar/MonteCarloSimResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonteCarloSim-response)))
  "Returns string type for a service object of type 'MonteCarloSim-response"
  "hybrid_astar/MonteCarloSimResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonteCarloSim-response>)))
  "Returns md5sum for a message object of type '<MonteCarloSim-response>"
  "ef92dc717d72570cde39a1214c59cf11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonteCarloSim-response)))
  "Returns md5sum for a message object of type 'MonteCarloSim-response"
  "ef92dc717d72570cde39a1214c59cf11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonteCarloSim-response>)))
  "Returns full string definition for message of type '<MonteCarloSim-response>"
  (cl:format cl:nil "bool valid_start~%bool valid_goal~%bool solution_found~%nav_msgs/Path path~%uint64 iterations~%bool iteration_limit~%uint64 nodes~%uint64 execution_time~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonteCarloSim-response)))
  "Returns full string definition for message of type 'MonteCarloSim-response"
  (cl:format cl:nil "bool valid_start~%bool valid_goal~%bool solution_found~%nav_msgs/Path path~%uint64 iterations~%bool iteration_limit~%uint64 nodes~%uint64 execution_time~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonteCarloSim-response>))
  (cl:+ 0
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     8
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonteCarloSim-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MonteCarloSim-response
    (cl:cons ':valid_start (valid_start msg))
    (cl:cons ':valid_goal (valid_goal msg))
    (cl:cons ':solution_found (solution_found msg))
    (cl:cons ':path (path msg))
    (cl:cons ':iterations (iterations msg))
    (cl:cons ':iteration_limit (iteration_limit msg))
    (cl:cons ':nodes (nodes msg))
    (cl:cons ':execution_time (execution_time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MonteCarloSim)))
  'MonteCarloSim-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MonteCarloSim)))
  'MonteCarloSim-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonteCarloSim)))
  "Returns string type for a service object of type '<MonteCarloSim>"
  "hybrid_astar/MonteCarloSim")