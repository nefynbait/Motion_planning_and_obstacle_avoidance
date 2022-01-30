;; Auto-generated. Do not edit!


(when (boundp 'hybrid_astar::Tracking)
  (if (not (find-package "HYBRID_ASTAR"))
    (make-package "HYBRID_ASTAR"))
  (shadow 'Tracking (find-package "HYBRID_ASTAR")))
(unless (find-package "HYBRID_ASTAR::TRACKING")
  (make-package "HYBRID_ASTAR::TRACKING"))

(in-package "ROS")
;;//! \htmlinclude Tracking.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass hybrid_astar::Tracking
  :super ros::object
  :slots (_reference_path _tracked_path _err_lat _cross_track ))

(defmethod hybrid_astar::Tracking
  (:init
   (&key
    ((:reference_path __reference_path) (instance nav_msgs::Path :init))
    ((:tracked_path __tracked_path) (instance nav_msgs::Path :init))
    ((:err_lat __err_lat) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cross_track __cross_track) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _reference_path __reference_path)
   (setq _tracked_path __tracked_path)
   (setq _err_lat __err_lat)
   (setq _cross_track __cross_track)
   self)
  (:reference_path
   (&rest __reference_path)
   (if (keywordp (car __reference_path))
       (send* _reference_path __reference_path)
     (progn
       (if __reference_path (setq _reference_path (car __reference_path)))
       _reference_path)))
  (:tracked_path
   (&rest __tracked_path)
   (if (keywordp (car __tracked_path))
       (send* _tracked_path __tracked_path)
     (progn
       (if __tracked_path (setq _tracked_path (car __tracked_path)))
       _tracked_path)))
  (:err_lat
   (&optional __err_lat)
   (if __err_lat (setq _err_lat __err_lat)) _err_lat)
  (:cross_track
   (&optional __cross_track)
   (if __cross_track (setq _cross_track __cross_track)) _cross_track)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _reference_path
    (send _reference_path :serialization-length)
    ;; nav_msgs/Path _tracked_path
    (send _tracked_path :serialization-length)
    ;; float32[] _err_lat
    (* 4    (length _err_lat)) 4
    ;; float32[] _cross_track
    (* 4    (length _cross_track)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _reference_path
       (send _reference_path :serialize s)
     ;; nav_msgs/Path _tracked_path
       (send _tracked_path :serialize s)
     ;; float32[] _err_lat
     (write-long (length _err_lat) s)
     (dotimes (i (length _err_lat))
       (sys::poke (elt _err_lat i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _cross_track
     (write-long (length _cross_track) s)
     (dotimes (i (length _cross_track))
       (sys::poke (elt _cross_track i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _reference_path
     (send _reference_path :deserialize buf ptr-) (incf ptr- (send _reference_path :serialization-length))
   ;; nav_msgs/Path _tracked_path
     (send _tracked_path :deserialize buf ptr-) (incf ptr- (send _tracked_path :serialization-length))
   ;; float32[] _err_lat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _err_lat (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _err_lat i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _cross_track
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cross_track (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cross_track i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hybrid_astar::Tracking :md5sum-) "f3b47e58b22562424a28f29828be59bf")
(setf (get hybrid_astar::Tracking :datatype-) "hybrid_astar/Tracking")
(setf (get hybrid_astar::Tracking :definition-)
      "nav_msgs/Path reference_path
nav_msgs/Path tracked_path
float32[] err_lat
float32[] cross_track
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



(provide :hybrid_astar/Tracking "f3b47e58b22562424a28f29828be59bf")


