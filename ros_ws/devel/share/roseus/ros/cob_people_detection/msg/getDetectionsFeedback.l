;; Auto-generated. Do not edit!


(when (boundp 'cob_people_detection::getDetectionsFeedback)
  (if (not (find-package "COB_PEOPLE_DETECTION"))
    (make-package "COB_PEOPLE_DETECTION"))
  (shadow 'getDetectionsFeedback (find-package "COB_PEOPLE_DETECTION")))
(unless (find-package "COB_PEOPLE_DETECTION::GETDETECTIONSFEEDBACK")
  (make-package "COB_PEOPLE_DETECTION::GETDETECTIONSFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude getDetectionsFeedback.msg.html


(defclass cob_people_detection::getDetectionsFeedback
  :super ros::object
  :slots ())

(defmethod cob_people_detection::getDetectionsFeedback
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get cob_people_detection::getDetectionsFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cob_people_detection::getDetectionsFeedback :datatype-) "cob_people_detection/getDetectionsFeedback")
(setf (get cob_people_detection::getDetectionsFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback


")



(provide :cob_people_detection/getDetectionsFeedback "d41d8cd98f00b204e9800998ecf8427e")


