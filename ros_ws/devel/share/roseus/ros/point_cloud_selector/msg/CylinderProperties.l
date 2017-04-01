;; Auto-generated. Do not edit!


(when (boundp 'point_cloud_selector::CylinderProperties)
  (if (not (find-package "POINT_CLOUD_SELECTOR"))
    (make-package "POINT_CLOUD_SELECTOR"))
  (shadow 'CylinderProperties (find-package "POINT_CLOUD_SELECTOR")))
(unless (find-package "POINT_CLOUD_SELECTOR::CYLINDERPROPERTIES")
  (make-package "POINT_CLOUD_SELECTOR::CYLINDERPROPERTIES"))

(in-package "ROS")
;;//! \htmlinclude CylinderProperties.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass point_cloud_selector::CylinderProperties
  :super ros::object
  :slots (_pose _radius _height ))

(defmethod point_cloud_selector::CylinderProperties
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:radius __radius) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _radius (float __radius))
   (setq _height (float __height))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64 _radius
    8
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get point_cloud_selector::CylinderProperties :md5sum-) "a4e3bfc9767a9507a2a420e39240fa88")
(setf (get point_cloud_selector::CylinderProperties :datatype-) "point_cloud_selector/CylinderProperties")
(setf (get point_cloud_selector::CylinderProperties :definition-)
      "geometry_msgs/Pose pose
float64 radius
float64 height
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :point_cloud_selector/CylinderProperties "a4e3bfc9767a9507a2a420e39240fa88")


