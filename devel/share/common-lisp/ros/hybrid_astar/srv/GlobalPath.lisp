; Auto-generated. Do not edit!


(cl:in-package hybrid_astar-srv)


;//! \htmlinclude GlobalPath-request.msg.html

(cl:defclass <GlobalPath-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GlobalPath-request (<GlobalPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hybrid_astar-srv:<GlobalPath-request> is deprecated: use hybrid_astar-srv:GlobalPath-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalPath-request>) ostream)
  "Serializes a message object of type '<GlobalPath-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalPath-request>) istream)
  "Deserializes a message object of type '<GlobalPath-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalPath-request>)))
  "Returns string type for a service object of type '<GlobalPath-request>"
  "hybrid_astar/GlobalPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalPath-request)))
  "Returns string type for a service object of type 'GlobalPath-request"
  "hybrid_astar/GlobalPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalPath-request>)))
  "Returns md5sum for a message object of type '<GlobalPath-request>"
  "0002bc113c0259d71f6cf8cbc9430e18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalPath-request)))
  "Returns md5sum for a message object of type 'GlobalPath-request"
  "0002bc113c0259d71f6cf8cbc9430e18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalPath-request>)))
  "Returns full string definition for message of type '<GlobalPath-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalPath-request)))
  "Returns full string definition for message of type 'GlobalPath-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalPath-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalPath-request
))
;//! \htmlinclude GlobalPath-response.msg.html

(cl:defclass <GlobalPath-response> (roslisp-msg-protocol:ros-message)
  ((plan
    :reader plan
    :initarg :plan
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass GlobalPath-response (<GlobalPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hybrid_astar-srv:<GlobalPath-response> is deprecated: use hybrid_astar-srv:GlobalPath-response instead.")))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <GlobalPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hybrid_astar-srv:plan-val is deprecated.  Use hybrid_astar-srv:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalPath-response>) ostream)
  "Serializes a message object of type '<GlobalPath-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalPath-response>) istream)
  "Deserializes a message object of type '<GlobalPath-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalPath-response>)))
  "Returns string type for a service object of type '<GlobalPath-response>"
  "hybrid_astar/GlobalPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalPath-response)))
  "Returns string type for a service object of type 'GlobalPath-response"
  "hybrid_astar/GlobalPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalPath-response>)))
  "Returns md5sum for a message object of type '<GlobalPath-response>"
  "0002bc113c0259d71f6cf8cbc9430e18")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalPath-response)))
  "Returns md5sum for a message object of type 'GlobalPath-response"
  "0002bc113c0259d71f6cf8cbc9430e18")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalPath-response>)))
  "Returns full string definition for message of type '<GlobalPath-response>"
  (cl:format cl:nil "nav_msgs/Path plan~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalPath-response)))
  "Returns full string definition for message of type 'GlobalPath-response"
  (cl:format cl:nil "nav_msgs/Path plan~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalPath-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalPath-response
    (cl:cons ':plan (plan msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GlobalPath)))
  'GlobalPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GlobalPath)))
  'GlobalPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalPath)))
  "Returns string type for a service object of type '<GlobalPath>"
  "hybrid_astar/GlobalPath")