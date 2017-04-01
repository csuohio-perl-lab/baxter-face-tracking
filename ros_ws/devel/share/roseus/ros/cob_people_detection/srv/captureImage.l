;; Auto-generated. Do not edit!


(when (boundp 'cob_people_detection::captureImage)
  (if (not (find-package "COB_PEOPLE_DETECTION"))
    (make-package "COB_PEOPLE_DETECTION"))
  (shadow 'captureImage (find-package "COB_PEOPLE_DETECTION")))
(unless (find-package "COB_PEOPLE_DETECTION::CAPTUREIMAGE")
  (make-package "COB_PEOPLE_DETECTION::CAPTUREIMAGE"))
(unless (find-package "COB_PEOPLE_DETECTION::CAPTUREIMAGEREQUEST")
  (make-package "COB_PEOPLE_DETECTION::CAPTUREIMAGEREQUEST"))
(unless (find-package "COB_PEOPLE_DETECTION::CAPTUREIMAGERESPONSE")
  (make-package "COB_PEOPLE_DETECTION::CAPTUREIMAGERESPONSE"))

(in-package "ROS")





(defclass cob_people_detection::captureImageRequest
  :super ros::object
  :slots ())

(defmethod cob_people_detection::captureImageRequest
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

(defclass cob_people_detection::captureImageResponse
  :super ros::object
  :slots (_number_captured_images ))

(defmethod cob_people_detection::captureImageResponse
  (:init
   (&key
    ((:number_captured_images __number_captured_images) 0)
    )
   (send-super :init)
   (setq _number_captured_images (round __number_captured_images))
   self)
  (:number_captured_images
   (&optional __number_captured_images)
   (if __number_captured_images (setq _number_captured_images __number_captured_images)) _number_captured_images)
  (:serialization-length
   ()
   (+
    ;; int32 _number_captured_images
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _number_captured_images
       (write-long _number_captured_images s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _number_captured_images
     (setq _number_captured_images (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cob_people_detection::captureImage
  :super ros::object
  :slots ())

(setf (get cob_people_detection::captureImage :md5sum-) "86d49773917fcd20b952a821d3a9e019")
(setf (get cob_people_detection::captureImage :datatype-) "cob_people_detection/captureImage")
(setf (get cob_people_detection::captureImage :request) cob_people_detection::captureImageRequest)
(setf (get cob_people_detection::captureImage :response) cob_people_detection::captureImageResponse)

(defmethod cob_people_detection::captureImageRequest
  (:response () (instance cob_people_detection::captureImageResponse :init)))

(setf (get cob_people_detection::captureImageRequest :md5sum-) "86d49773917fcd20b952a821d3a9e019")
(setf (get cob_people_detection::captureImageRequest :datatype-) "cob_people_detection/captureImageRequest")
(setf (get cob_people_detection::captureImageRequest :definition-)
      "
---

int32 number_captured_images

")

(setf (get cob_people_detection::captureImageResponse :md5sum-) "86d49773917fcd20b952a821d3a9e019")
(setf (get cob_people_detection::captureImageResponse :datatype-) "cob_people_detection/captureImageResponse")
(setf (get cob_people_detection::captureImageResponse :definition-)
      "
---

int32 number_captured_images

")



(provide :cob_people_detection/captureImage "86d49773917fcd20b952a821d3a9e019")


