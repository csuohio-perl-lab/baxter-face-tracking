;; Auto-generated. Do not edit!


(when (boundp 'cob_people_detection::getDetectionsGoal)
  (if (not (find-package "COB_PEOPLE_DETECTION"))
    (make-package "COB_PEOPLE_DETECTION"))
  (shadow 'getDetectionsGoal (find-package "COB_PEOPLE_DETECTION")))
(unless (find-package "COB_PEOPLE_DETECTION::GETDETECTIONSGOAL")
  (make-package "COB_PEOPLE_DETECTION::GETDETECTIONSGOAL"))

(in-package "ROS")
;;//! \htmlinclude getDetectionsGoal.msg.html


(defclass cob_people_detection::getDetectionsGoal
  :super ros::object
  :slots (_maximum_message_age _timeout ))

(defmethod cob_people_detection::getDetectionsGoal
  (:init
   (&key
    ((:maximum_message_age __maximum_message_age) 0.0)
    ((:timeout __timeout) 0.0)
    )
   (send-super :init)
   (setq _maximum_message_age (float __maximum_message_age))
   (setq _timeout (float __timeout))
   self)
  (:maximum_message_age
   (&optional __maximum_message_age)
   (if __maximum_message_age (setq _maximum_message_age __maximum_message_age)) _maximum_message_age)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; float32 _maximum_message_age
    4
    ;; float32 _timeout
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _maximum_message_age
       (sys::poke _maximum_message_age (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _timeout
       (sys::poke _timeout (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _maximum_message_age
     (setq _maximum_message_age (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _timeout
     (setq _timeout (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cob_people_detection::getDetectionsGoal :md5sum-) "dd64e18e045dc05a5cb38c8f05510e32")
(setf (get cob_people_detection::getDetectionsGoal :datatype-) "cob_people_detection/getDetectionsGoal")
(setf (get cob_people_detection::getDetectionsGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal
float32 maximum_message_age		# maximal allowed age of response message (in s), 0 means we do not care
float32 timeout				# maximal waiting time (in s) for receiving a detection, 0 is infinitely. If the detection pipeline was not running before, it will start upon receiving this message and collect messages for the full timeout period.

")



(provide :cob_people_detection/getDetectionsGoal "dd64e18e045dc05a5cb38c8f05510e32")


