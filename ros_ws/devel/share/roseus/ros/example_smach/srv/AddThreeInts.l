;; Auto-generated. Do not edit!


(when (boundp 'example_smach::AddThreeInts)
  (if (not (find-package "EXAMPLE_SMACH"))
    (make-package "EXAMPLE_SMACH"))
  (shadow 'AddThreeInts (find-package "EXAMPLE_SMACH")))
(unless (find-package "EXAMPLE_SMACH::ADDTHREEINTS")
  (make-package "EXAMPLE_SMACH::ADDTHREEINTS"))
(unless (find-package "EXAMPLE_SMACH::ADDTHREEINTSREQUEST")
  (make-package "EXAMPLE_SMACH::ADDTHREEINTSREQUEST"))
(unless (find-package "EXAMPLE_SMACH::ADDTHREEINTSRESPONSE")
  (make-package "EXAMPLE_SMACH::ADDTHREEINTSRESPONSE"))

(in-package "ROS")





(defclass example_smach::AddThreeIntsRequest
  :super ros::object
  :slots (_a _b _c ))

(defmethod example_smach::AddThreeIntsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    ((:c __c) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   (setq _c (round __c))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ;; int64 _c
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;; int64 _c
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _c (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _c) (= (length (_c . bv)) 2)) ;; bignum
              (write-long (ash (elt (_c . bv) 0) 0) s)
              (write-long (ash (elt (_c . bv) 1) -1) s))
             ((and (class _c) (= (length (_c . bv)) 1)) ;; big1
              (write-long (elt (_c . bv) 0) s)
              (write-long (if (>= _c 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _c s)(write-long (if (>= _c 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _c
#+(or :alpha :irix6 :x86_64)
      (setf _c (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _c (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass example_smach::AddThreeIntsResponse
  :super ros::object
  :slots (_sum ))

(defmethod example_smach::AddThreeIntsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int64 _sum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sum) (= (length (_sum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sum . bv) 0) 0) s)
              (write-long (ash (elt (_sum . bv) 1) -1) s))
             ((and (class _sum) (= (length (_sum . bv)) 1)) ;; big1
              (write-long (elt (_sum . bv) 0) s)
              (write-long (if (>= _sum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sum s)(write-long (if (>= _sum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
      (setf _sum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass example_smach::AddThreeInts
  :super ros::object
  :slots ())

(setf (get example_smach::AddThreeInts :md5sum-) "c9caccfcada3b6a45d8528a23bccaf1a")
(setf (get example_smach::AddThreeInts :datatype-) "example_smach/AddThreeInts")
(setf (get example_smach::AddThreeInts :request) example_smach::AddThreeIntsRequest)
(setf (get example_smach::AddThreeInts :response) example_smach::AddThreeIntsResponse)

(defmethod example_smach::AddThreeIntsRequest
  (:response () (instance example_smach::AddThreeIntsResponse :init)))

(setf (get example_smach::AddThreeIntsRequest :md5sum-) "c9caccfcada3b6a45d8528a23bccaf1a")
(setf (get example_smach::AddThreeIntsRequest :datatype-) "example_smach/AddThreeIntsRequest")
(setf (get example_smach::AddThreeIntsRequest :definition-)
      "int64 a
int64 b
int64 c
---
int64 sum

")

(setf (get example_smach::AddThreeIntsResponse :md5sum-) "c9caccfcada3b6a45d8528a23bccaf1a")
(setf (get example_smach::AddThreeIntsResponse :datatype-) "example_smach/AddThreeIntsResponse")
(setf (get example_smach::AddThreeIntsResponse :definition-)
      "int64 a
int64 b
int64 c
---
int64 sum

")



(provide :example_smach/AddThreeInts "c9caccfcada3b6a45d8528a23bccaf1a")


