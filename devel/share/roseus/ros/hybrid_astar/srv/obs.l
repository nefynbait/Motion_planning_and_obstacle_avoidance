;; Auto-generated. Do not edit!


(when (boundp 'hybrid_astar::obs)
  (if (not (find-package "HYBRID_ASTAR"))
    (make-package "HYBRID_ASTAR"))
  (shadow 'obs (find-package "HYBRID_ASTAR")))
(unless (find-package "HYBRID_ASTAR::OBS")
  (make-package "HYBRID_ASTAR::OBS"))
(unless (find-package "HYBRID_ASTAR::OBSREQUEST")
  (make-package "HYBRID_ASTAR::OBSREQUEST"))
(unless (find-package "HYBRID_ASTAR::OBSRESPONSE")
  (make-package "HYBRID_ASTAR::OBSRESPONSE"))

(in-package "ROS")





(defclass hybrid_astar::obsRequest
  :super ros::object
  :slots (_x_r _y_r _r_r _theta1 _check ))

(defmethod hybrid_astar::obsRequest
  (:init
   (&key
    ((:x_r __x_r) 0.0)
    ((:y_r __y_r) 0.0)
    ((:r_r __r_r) 0.0)
    ((:theta1 __theta1) 0.0)
    ((:check __check) nil)
    )
   (send-super :init)
   (setq _x_r (float __x_r))
   (setq _y_r (float __y_r))
   (setq _r_r (float __r_r))
   (setq _theta1 (float __theta1))
   (setq _check __check)
   self)
  (:x_r
   (&optional __x_r)
   (if __x_r (setq _x_r __x_r)) _x_r)
  (:y_r
   (&optional __y_r)
   (if __y_r (setq _y_r __y_r)) _y_r)
  (:r_r
   (&optional __r_r)
   (if __r_r (setq _r_r __r_r)) _r_r)
  (:theta1
   (&optional __theta1)
   (if __theta1 (setq _theta1 __theta1)) _theta1)
  (:check
   (&optional __check)
   (if __check (setq _check __check)) _check)
  (:serialization-length
   ()
   (+
    ;; float64 _x_r
    8
    ;; float64 _y_r
    8
    ;; float64 _r_r
    8
    ;; float64 _theta1
    8
    ;; bool _check
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x_r
       (sys::poke _x_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_r
       (sys::poke _y_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _r_r
       (sys::poke _r_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta1
       (sys::poke _theta1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _check
       (if _check (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x_r
     (setq _x_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_r
     (setq _y_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _r_r
     (setq _r_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta1
     (setq _theta1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _check
     (setq _check (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hybrid_astar::obsResponse
  :super ros::object
  :slots (_result _obstacles ))

(defmethod hybrid_astar::obsResponse
  (:init
   (&key
    ((:result __result) "")
    ((:obstacles __obstacles) nil)
    )
   (send-super :init)
   (setq _result (string __result))
   (setq _obstacles __obstacles)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:obstacles
   (&optional __obstacles)
   (if __obstacles (setq _obstacles __obstacles)) _obstacles)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ;; bool _obstacles
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; bool _obstacles
       (if _obstacles (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _obstacles
     (setq _obstacles (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hybrid_astar::obs
  :super ros::object
  :slots ())

(setf (get hybrid_astar::obs :md5sum-) "5e3dfcf370bd21f423a0f98a6e24c09d")
(setf (get hybrid_astar::obs :datatype-) "hybrid_astar/obs")
(setf (get hybrid_astar::obs :request) hybrid_astar::obsRequest)
(setf (get hybrid_astar::obs :response) hybrid_astar::obsResponse)

(defmethod hybrid_astar::obsRequest
  (:response () (instance hybrid_astar::obsResponse :init)))

(setf (get hybrid_astar::obsRequest :md5sum-) "5e3dfcf370bd21f423a0f98a6e24c09d")
(setf (get hybrid_astar::obsRequest :datatype-) "hybrid_astar/obsRequest")
(setf (get hybrid_astar::obsRequest :definition-)
      "float64 x_r
float64 y_r
float64 r_r
float64 theta1
bool check
---
string result
bool obstacles

")

(setf (get hybrid_astar::obsResponse :md5sum-) "5e3dfcf370bd21f423a0f98a6e24c09d")
(setf (get hybrid_astar::obsResponse :datatype-) "hybrid_astar/obsResponse")
(setf (get hybrid_astar::obsResponse :definition-)
      "float64 x_r
float64 y_r
float64 r_r
float64 theta1
bool check
---
string result
bool obstacles

")



(provide :hybrid_astar/obs "5e3dfcf370bd21f423a0f98a6e24c09d")


