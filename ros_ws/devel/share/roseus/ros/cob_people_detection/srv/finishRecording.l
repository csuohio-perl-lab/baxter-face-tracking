;; Auto-generated. Do not edit!


(when (boundp 'cob_people_detection::finishRecording)
  (if (not (find-package "COB_PEOPLE_DETECTION"))
    (make-package "COB_PEOPLE_DETECTION"))
  (shadow 'finishRecording (find-package "COB_PEOPLE_DETECTION")))
(unless (find-package "COB_PEOPLE_DETECTION::FINISHRECORDING")
  (make-package "COB_PEOPLE_DETECTION::FINISHRECORDING"))
(unless (find-package "COB_PEOPLE_DETECTION::FINISHRECORDINGREQUEST")
  (make-package "COB_PEOPLE_DETECTION::FINISHRECORDINGREQUEST"))
(unless (find-package "COB_PEOPLE_DETECTION::FINISHRECORDINGRESPONSE")
  (make-package "COB_PEOPLE_DETECTION::FINISHRECORDINGRESPONSE"))

(in-package "ROS")





(defclass cob_people_detection::finishRecordingRequest
  :super ros::object
  :slots ())

(defmethod cob_people_detection::finishRecordingRequest
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

(defclass cob_people_detection::finishRecordingResponse
  :super ros::object
  :slots ())

(defmethod cob_people_detection::finishRecordingResponse
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

(defclass cob_people_detection::finishRecording
  :super ros::object
  :slots ())

(setf (get cob_people_detection::finishRecording :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cob_people_detection::finishRecording :datatype-) "cob_people_detection/finishRecording")
(setf (get cob_people_detection::finishRecording :request) cob_people_detection::finishRecordingRequest)
(setf (get cob_people_detection::finishRecording :response) cob_people_detection::finishRecordingResponse)

(defmethod cob_people_detection::finishRecordingRequest
  (:response () (instance cob_people_detection::finishRecordingResponse :init)))

(setf (get cob_people_detection::finishRecordingRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cob_people_detection::finishRecordingRequest :datatype-) "cob_people_detection/finishRecordingRequest")
(setf (get cob_people_detection::finishRecordingRequest :definition-)
      "
---


")

(setf (get cob_people_detection::finishRecordingResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cob_people_detection::finishRecordingResponse :datatype-) "cob_people_detection/finishRecordingResponse")
(setf (get cob_people_detection::finishRecordingResponse :definition-)
      "
---


")



(provide :cob_people_detection/finishRecording "d41d8cd98f00b204e9800998ecf8427e")


