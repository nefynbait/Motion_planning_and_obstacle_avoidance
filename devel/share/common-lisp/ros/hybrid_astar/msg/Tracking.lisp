; Auto-generated. Do not edit!


(cl:in-package hybrid_astar-msg)


;//! \htmlinclude Tracking.msg.html

(cl:defclass <Tracking> (roslisp-msg-protocol:ros-message)
  ((reference_path
    :reader reference_path
    :initarg :reference_path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (tracked_path
    :reader tracked_path
    :initarg :tracked_path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (err_lat
    :reader err_lat
    :initarg :err_lat
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (cross_track
    :reader cross_track
    :initarg :cross_track
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Tracking (<Tracking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tracking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tracking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hybrid_astar-msg:<Tracking> is deprecated: use hybrid_astar-msg:Tracking instead.")))

(cl:ensure-generic-function 'reference_path-val :lambda-list '(m))
(cl:defmethod reference_path-val ((m <Tracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-msg:reference_path-val is deprecated.  Use hybrid_astar-msg:reference_path instead.")
  (reference_path m))

(cl:ensure-generic-function 'tracked_path-val :lambda-list '(m))
(cl:defmethod tracked_path-val ((m <Tracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-msg:tracked_path-val is deprecated.  Use hybrid_astar-msg:tracked_path instead.")
  (tracked_path m))

(cl:ensure-generic-function 'err_lat-val :lambda-list '(m))
(cl:defmethod err_lat-val ((m <Tracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-msg:err_lat-val is deprecated.  Use hybrid_astar-msg:err_lat instead.")
  (err_lat m))

(cl:ensure-generic-function 'cross_track-val :lambda-list '(m))
(cl:defmethod cross_track-val ((m <Tracking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-msg:cross_track-val is deprecated.  Use hybrid_astar-msg:cross_track instead.")
  (cross_track m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tracking>) ostream)
  "Serializes a message object of type '<Tracking>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_path) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tracked_path) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'err_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'err_lat))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cross_track))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cross_track))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tracking>) istream)
  "Deserializes a message object of type '<Tracking>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_path) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tracked_path) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'err_lat) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'err_lat)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cross_track) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cross_track)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tracking>)))
  "Returns string type for a message object of type '<Tracking>"
  "hybrid_astar/Tracking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tracking)))
  "Returns string type for a message object of type 'Tracking"
  "hybrid_astar/Tracking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tracking>)))
  "Returns md5sum for a message object of type '<Tracking>"
  "f3b47e58b22562424a28f29828be59bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tracking)))
  "Returns md5sum for a message object of type 'Tracking"
  "f3b47e58b22562424a28f29828be59bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tracking>)))
  "Returns full string definition for message of type '<Tracking>"
  (cl:format cl:nil "nav_msgs/Path reference_path~%nav_msgs/Path tracked_path~%float32[] err_lat~%float32[] cross_track~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tracking)))
  "Returns full string definition for message of type 'Tracking"
  (cl:format cl:nil "nav_msgs/Path reference_path~%nav_msgs/Path tracked_path~%float32[] err_lat~%float32[] cross_track~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tracking>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_path))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tracked_path))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'err_lat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cross_track) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tracking>))
  "Converts a ROS message object to a list"
  (cl:list 'Tracking
    (cl:cons ':reference_path (reference_path msg))
    (cl:cons ':tracked_path (tracked_path msg))
    (cl:cons ':err_lat (err_lat msg))
    (cl:cons ':cross_track (cross_track msg))
))
