;; Auto-generated. Do not edit!


(when (boundp 'hybrid_astar::PathTracking)
  (if (not (find-package "HYBRID_ASTAR"))
    (make-package "HYBRID_ASTAR"))
  (shadow 'PathTracking (find-package "HYBRID_ASTAR")))
(unless (find-package "HYBRID_ASTAR::PATHTRACKING")
  (make-package "HYBRID_ASTAR::PATHTRACKING"))

(in-package "ROS")
;;//! \htmlinclude PathTracking.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass hybrid_astar::PathTracking
  :super ros::object
  :slots (_path _direction ))

(defmethod hybrid_astar::PathTracking
  (:init
   (&key
    ((:path __path) (instance nav_msgs::Path :init))
    ((:direction __direction) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _path __path)
   (setq _direction __direction)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ;; int8[] _direction
    (* 1    (length _direction)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;; int8[] _direction
     (write-long (length _direction) s)
     (dotimes (i (length _direction))
       (write-byte (elt _direction i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; int8[] _direction
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _direction (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _direction i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _direction i) 127) (setf (elt _direction i) (- (elt _direction i) 256)))
     ))
   ;;
   self)
  )

(setf (get hybrid_astar::PathTracking :md5sum-) "828ba78ead1f8c45eb08d3a94a1d45c3")
(setf (get hybrid_astar::PathTracking :datatype-) "hybrid_astar/PathTracking")
(setf (get hybrid_astar::PathTracking :definition-)
      "nav_msgs/Path path
int8[] direction
================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :hybrid_astar/PathTracking "828ba78ead1f8c45eb08d3a94a1d45c3")


