;; Auto-generated. Do not edit!


(when (boundp 'hybrid_astar::TestSummary)
  (if (not (find-package "HYBRID_ASTAR"))
    (make-package "HYBRID_ASTAR"))
  (shadow 'TestSummary (find-package "HYBRID_ASTAR")))
(unless (find-package "HYBRID_ASTAR::TESTSUMMARY")
  (make-package "HYBRID_ASTAR::TESTSUMMARY"))

(in-package "ROS")
;;//! \htmlinclude TestSummary.msg.html


(defclass hybrid_astar::TestSummary
  :super ros::object
  :slots (_successful_tests _unsuccessful_tests _iteration_limits _total_tests ))

(defmethod hybrid_astar::TestSummary
  (:init
   (&key
    ((:successful_tests __successful_tests) 0)
    ((:unsuccessful_tests __unsuccessful_tests) 0)
    ((:iteration_limits __iteration_limits) 0)
    ((:total_tests __total_tests) 0)
    )
   (send-super :init)
   (setq _successful_tests (round __successful_tests))
   (setq _unsuccessful_tests (round __unsuccessful_tests))
   (setq _iteration_limits (round __iteration_limits))
   (setq _total_tests (round __total_tests))
   self)
  (:successful_tests
   (&optional __successful_tests)
   (if __successful_tests (setq _successful_tests __successful_tests)) _successful_tests)
  (:unsuccessful_tests
   (&optional __unsuccessful_tests)
   (if __unsuccessful_tests (setq _unsuccessful_tests __unsuccessful_tests)) _unsuccessful_tests)
  (:iteration_limits
   (&optional __iteration_limits)
   (if __iteration_limits (setq _iteration_limits __iteration_limits)) _iteration_limits)
  (:total_tests
   (&optional __total_tests)
   (if __total_tests (setq _total_tests __total_tests)) _total_tests)
  (:serialization-length
   ()
   (+
    ;; uint64 _successful_tests
    8
    ;; uint64 _unsuccessful_tests
    8
    ;; uint64 _iteration_limits
    8
    ;; uint64 _total_tests
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _successful_tests
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _successful_tests (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _successful_tests) (= (length (_successful_tests . bv)) 2)) ;; bignum
              (write-long (ash (elt (_successful_tests . bv) 0) 0) s)
              (write-long (ash (elt (_successful_tests . bv) 1) -1) s))
             ((and (class _successful_tests) (= (length (_successful_tests . bv)) 1)) ;; big1
              (write-long (elt (_successful_tests . bv) 0) s)
              (write-long (if (>= _successful_tests 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _successful_tests s)(write-long (if (>= _successful_tests 0) 0 #xffffffff) s)))
     ;; uint64 _unsuccessful_tests
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _unsuccessful_tests (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _unsuccessful_tests) (= (length (_unsuccessful_tests . bv)) 2)) ;; bignum
              (write-long (ash (elt (_unsuccessful_tests . bv) 0) 0) s)
              (write-long (ash (elt (_unsuccessful_tests . bv) 1) -1) s))
             ((and (class _unsuccessful_tests) (= (length (_unsuccessful_tests . bv)) 1)) ;; big1
              (write-long (elt (_unsuccessful_tests . bv) 0) s)
              (write-long (if (>= _unsuccessful_tests 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _unsuccessful_tests s)(write-long (if (>= _unsuccessful_tests 0) 0 #xffffffff) s)))
     ;; uint64 _iteration_limits
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _iteration_limits (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _iteration_limits) (= (length (_iteration_limits . bv)) 2)) ;; bignum
              (write-long (ash (elt (_iteration_limits . bv) 0) 0) s)
              (write-long (ash (elt (_iteration_limits . bv) 1) -1) s))
             ((and (class _iteration_limits) (= (length (_iteration_limits . bv)) 1)) ;; big1
              (write-long (elt (_iteration_limits . bv) 0) s)
              (write-long (if (>= _iteration_limits 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _iteration_limits s)(write-long (if (>= _iteration_limits 0) 0 #xffffffff) s)))
     ;; uint64 _total_tests
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _total_tests (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _total_tests) (= (length (_total_tests . bv)) 2)) ;; bignum
              (write-long (ash (elt (_total_tests . bv) 0) 0) s)
              (write-long (ash (elt (_total_tests . bv) 1) -1) s))
             ((and (class _total_tests) (= (length (_total_tests . bv)) 1)) ;; big1
              (write-long (elt (_total_tests . bv) 0) s)
              (write-long (if (>= _total_tests 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _total_tests s)(write-long (if (>= _total_tests 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _successful_tests
     
#+(or :alpha :irix6 :x86_64)
      (setf _successful_tests (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _successful_tests (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _unsuccessful_tests
     
#+(or :alpha :irix6 :x86_64)
      (setf _unsuccessful_tests (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _unsuccessful_tests (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _iteration_limits
     
#+(or :alpha :irix6 :x86_64)
      (setf _iteration_limits (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _iteration_limits (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _total_tests
     
#+(or :alpha :irix6 :x86_64)
      (setf _total_tests (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _total_tests (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get hybrid_astar::TestSummary :md5sum-) "bfac551d5488bc9c563aaa33200405e9")
(setf (get hybrid_astar::TestSummary :datatype-) "hybrid_astar/TestSummary")
(setf (get hybrid_astar::TestSummary :definition-)
      "uint64 successful_tests
uint64 unsuccessful_tests
uint64 iteration_limits
uint64 total_tests
")



(provide :hybrid_astar/TestSummary "bfac551d5488bc9c563aaa33200405e9")


