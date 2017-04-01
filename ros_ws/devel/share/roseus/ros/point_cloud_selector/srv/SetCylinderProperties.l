;; Auto-generated. Do not edit!


(when (boundp 'point_cloud_selector::SetCylinderProperties)
  (if (not (find-package "POINT_CLOUD_SELECTOR"))
    (make-package "POINT_CLOUD_SELECTOR"))
  (shadow 'SetCylinderProperties (find-package "POINT_CLOUD_SELECTOR")))
(unless (find-package "POINT_CLOUD_SELECTOR::SETCYLINDERPROPERTIES")
  (make-package "POINT_CLOUD_SELECTOR::SETCYLINDERPROPERTIES"))
(unless (find-package "POINT_CLOUD_SELECTOR::SETCYLINDERPROPERTIESREQUEST")
  (make-package "POINT_CLOUD_SELECTOR::SETCYLINDERPROPERTIESREQUEST"))
(unless (find-package "POINT_CLOUD_SELECTOR::SETCYLINDERPROPERTIESRESPONSE")
  (make-package "POINT_CLOUD_SELECTOR::SETCYLINDERPROPERTIESRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass point_cloud_selector::SetCylinderPropertiesRequest
  :super ros::object
  :slots (_height _radius _color ))

(defmethod point_cloud_selector::SetCylinderPropertiesRequest
  (:init
   (&key
    ((:height __height) 0.0)
    ((:radius __radius) 0.0)
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    )
   (send-super :init)
   (setq _height (float __height))
   (setq _radius (float __radius))
   (setq _color __color)
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:serialization-length
   ()
   (+
    ;; float64 _height
    8
    ;; float64 _radius
    8
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;;
   self)
  )

(defclass point_cloud_selector::SetCylinderPropertiesResponse
  :super ros::object
  :slots ())

(defmethod point_cloud_selector::SetCylinderPropertiesResponse
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

(defclass point_cloud_selector::SetCylinderProperties
  :super ros::object
  :slots ())

(setf (get point_cloud_selector::SetCylinderProperties :md5sum-) "99b58a07a4ea44adc43db01044994e75")
(setf (get point_cloud_selector::SetCylinderProperties :datatype-) "point_cloud_selector/SetCylinderProperties")
(setf (get point_cloud_selector::SetCylinderProperties :request) point_cloud_selector::SetCylinderPropertiesRequest)
(setf (get point_cloud_selector::SetCylinderProperties :response) point_cloud_selector::SetCylinderPropertiesResponse)

(defmethod point_cloud_selector::SetCylinderPropertiesRequest
  (:response () (instance point_cloud_selector::SetCylinderPropertiesResponse :init)))

(setf (get point_cloud_selector::SetCylinderPropertiesRequest :md5sum-) "99b58a07a4ea44adc43db01044994e75")
(setf (get point_cloud_selector::SetCylinderPropertiesRequest :datatype-) "point_cloud_selector/SetCylinderPropertiesRequest")
(setf (get point_cloud_selector::SetCylinderPropertiesRequest :definition-)
      "float64 height
float64 radius
std_msgs/ColorRGBA color

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
---

")

(setf (get point_cloud_selector::SetCylinderPropertiesResponse :md5sum-) "99b58a07a4ea44adc43db01044994e75")
(setf (get point_cloud_selector::SetCylinderPropertiesResponse :datatype-) "point_cloud_selector/SetCylinderPropertiesResponse")
(setf (get point_cloud_selector::SetCylinderPropertiesResponse :definition-)
      "float64 height
float64 radius
std_msgs/ColorRGBA color

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a
---

")



(provide :point_cloud_selector/SetCylinderProperties "99b58a07a4ea44adc43db01044994e75")


