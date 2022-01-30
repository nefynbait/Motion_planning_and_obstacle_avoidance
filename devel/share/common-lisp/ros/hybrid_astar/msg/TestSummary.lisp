; Auto-generated. Do not edit!


(cl:in-package hybrid_astar-msg)


;//! \htmlinclude TestSummary.msg.html

(cl:defclass <TestSummary> (roslisp-msg-protocol:ros-message)
  ((successful_tests
    :reader successful_tests
    :initarg :successful_tests
    :type cl:integer
    :initform 0)
   (unsuccessful_tests
    :reader unsuccessful_tests
    :initarg :unsuccessful_tests
    :type cl:integer
    :initform 0)
   (iteration_limits
    :reader iteration_limits
    :initarg :iteration_limits
    :type cl:integer
    :initform 0)
   (total_tests
    :reader total_tests
    :initarg :total_tests
    :type cl:integer
    :initform 0))
)

(cl:defclass TestSummary (<TestSummary>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestSummary>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestSummary)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hybrid_astar-msg:<TestSummary> is deprecated: use hybrid_astar-msg:TestSummary instead.")))

(cl:ensure-generic-function 'successful_tests-val :lambda-list '(m))
(cl:defmethod successful_tests-val ((m <TestSummary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-msg:successful_tests-val is deprecated.  Use hybrid_astar-msg:successful_tests instead.")
  (successful_tests m))

(cl:ensure-generic-function 'unsuccessful_tests-val :lambda-list '(m))
(cl:defmethod unsuccessful_tests-val ((m <TestSummary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-msg:unsuccessful_tests-val is deprecated.  Use hybrid_astar-msg:unsuccessful_tests instead.")
  (unsuccessful_tests m))

(cl:ensure-generic-function 'iteration_limits-val :lambda-list '(m))
(cl:defmethod iteration_limits-val ((m <TestSummary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-msg:iteration_limits-val is deprecated.  Use hybrid_astar-msg:iteration_limits instead.")
  (iteration_limits m))

(cl:ensure-generic-function 'total_tests-val :lambda-list '(m))
(cl:defmethod total_tests-val ((m <TestSummary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-msg:total_tests-val is deprecated.  Use hybrid_astar-msg:total_tests instead.")
  (total_tests m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestSummary>) ostream)
  "Serializes a message object of type '<TestSummary>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'successful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'successful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'successful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'successful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'successful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'successful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'successful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'successful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unsuccessful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'unsuccessful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'unsuccessful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'unsuccessful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'unsuccessful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'unsuccessful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'unsuccessful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'unsuccessful_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iteration_limits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iteration_limits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iteration_limits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iteration_limits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'iteration_limits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'iteration_limits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'iteration_limits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'iteration_limits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'total_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'total_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'total_tests)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'total_tests)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestSummary>) istream)
  "Deserializes a message object of type '<TestSummary>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'successful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'successful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'successful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'successful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'successful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'successful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'successful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'successful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unsuccessful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'unsuccessful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'unsuccessful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'unsuccessful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'unsuccessful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'unsuccessful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'unsuccessful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'unsuccessful_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iteration_limits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'iteration_limits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'iteration_limits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'iteration_limits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'iteration_limits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'iteration_limits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'iteration_limits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'iteration_limits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'total_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'total_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'total_tests)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'total_tests)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestSummary>)))
  "Returns string type for a message object of type '<TestSummary>"
  "hybrid_astar/TestSummary")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestSummary)))
  "Returns string type for a message object of type 'TestSummary"
  "hybrid_astar/TestSummary")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestSummary>)))
  "Returns md5sum for a message object of type '<TestSummary>"
  "bfac551d5488bc9c563aaa33200405e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestSummary)))
  "Returns md5sum for a message object of type 'TestSummary"
  "bfac551d5488bc9c563aaa33200405e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestSummary>)))
  "Returns full string definition for message of type '<TestSummary>"
  (cl:format cl:nil "uint64 successful_tests~%uint64 unsuccessful_tests~%uint64 iteration_limits~%uint64 total_tests~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestSummary)))
  "Returns full string definition for message of type 'TestSummary"
  (cl:format cl:nil "uint64 successful_tests~%uint64 unsuccessful_tests~%uint64 iteration_limits~%uint64 total_tests~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestSummary>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestSummary>))
  "Converts a ROS message object to a list"
  (cl:list 'TestSummary
    (cl:cons ':successful_tests (successful_tests msg))
    (cl:cons ':unsuccessful_tests (unsuccessful_tests msg))
    (cl:cons ':iteration_limits (iteration_limits msg))
    (cl:cons ':total_tests (total_tests msg))
))
