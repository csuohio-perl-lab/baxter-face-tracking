;; Auto-generated. Do not edit!


(when (boundp 'cob_people_detection::updateDataFeedback)
  (if (not (find-package "COB_PEOPLE_DETECTION"))
    (make-package "COB_PEOPLE_DETECTION"))
  (shadow 'updateDataFeedback (find-package "COB_PEOPLE_DETECTION")))
(unless (find-package "COB_PEOPLE_DETECTION::UPDATEDATAFEEDBACK")
  (make-package "COB_PEOPLE_DETECTION::UPDATEDATAFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude updateDataFeedback.msg.html


(defclass cob_people_detection::updateDataFeedback
  :super ros::object
  :slots ())

(defmethod cob_people_detection::updateDataFeedback
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

(setf (get cob_people_detection::updateDataFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cob_people_detection::updateDataFeedback :datatype-) "cob_people_detection/updateDataFeedback")
(setf (get cob_people_detection::updateDataFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# feedback message


")



(provide :cob_people_detection/updateDataFeedback "d41d8cd98f00b204e9800998ecf8427e")


