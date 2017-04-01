;; Auto-generated. Do not edit!


(when (boundp 'cob_people_detection::recognitionTrigger)
  (if (not (find-package "COB_PEOPLE_DETECTION"))
    (make-package "COB_PEOPLE_DETECTION"))
  (shadow 'recognitionTrigger (find-package "COB_PEOPLE_DETECTION")))
(unless (find-package "COB_PEOPLE_DETECTION::RECOGNITIONTRIGGER")
  (make-package "COB_PEOPLE_DETECTION::RECOGNITIONTRIGGER"))
(unless (find-package "COB_PEOPLE_DETECTION::RECOGNITIONTRIGGERREQUEST")
  (make-package "COB_PEOPLE_DETECTION::RECOGNITIONTRIGGERREQUEST"))
(unless (find-package "COB_PEOPLE_DETECTION::RECOGNITIONTRIGGERRESPONSE")
  (make-package "COB_PEOPLE_DETECTION::RECOGNITIONTRIGGERRESPONSE"))

(in-package "ROS")





(defclass cob_people_detection::recognitionTriggerRequest
  :super ros::object
  :slots (_target_frame_rate ))

(defmethod cob_people_detection::recognitionTriggerRequest
  (:init
   (&key
    ((:target_frame_rate __target_frame_rate) 0.0)
    )
   (send-super :init)
   (setq _target_frame_rate (float __target_frame_rate))
   self)
  (:target_frame_rate
   (&optional __target_frame_rate)
   (if __target_frame_rate (setq _target_frame_rate __target_frame_rate)) _target_frame_rate)
  (:serialization-length
   ()
   (+
    ;; float32 _target_frame_rate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _target_frame_rate
       (sys::poke _target_frame_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _target_frame_rate
     (setq _target_frame_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cob_people_detection::recognitionTriggerResponse
  :super ros::object
  :slots ())

(defmethod cob_people_detection::recognitionTriggerResponse
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

(defclass cob_people_detection::recognitionTrigger
  :super ros::object
  :slots ())

(setf (get cob_people_detection::recognitionTrigger :md5sum-) "0fb2bbc7af64ffad2d27794be36bc198")
(setf (get cob_people_detection::recognitionTrigger :datatype-) "cob_people_detection/recognitionTrigger")
(setf (get cob_people_detection::recognitionTrigger :request) cob_people_detection::recognitionTriggerRequest)
(setf (get cob_people_detection::recognitionTrigger :response) cob_people_detection::recognitionTriggerResponse)

(defmethod cob_people_detection::recognitionTriggerRequest
  (:response () (instance cob_people_detection::recognitionTriggerResponse :init)))

(setf (get cob_people_detection::recognitionTriggerRequest :md5sum-) "0fb2bbc7af64ffad2d27794be36bc198")
(setf (get cob_people_detection::recognitionTriggerRequest :datatype-) "cob_people_detection/recognitionTriggerRequest")
(setf (get cob_people_detection::recognitionTriggerRequest :definition-)
      "
float32 target_frame_rate
---


")

(setf (get cob_people_detection::recognitionTriggerResponse :md5sum-) "0fb2bbc7af64ffad2d27794be36bc198")
(setf (get cob_people_detection::recognitionTriggerResponse :datatype-) "cob_people_detection/recognitionTriggerResponse")
(setf (get cob_people_detection::recognitionTriggerResponse :definition-)
      "
float32 target_frame_rate
---


")



(provide :cob_people_detection/recognitionTrigger "0fb2bbc7af64ffad2d27794be36bc198")


