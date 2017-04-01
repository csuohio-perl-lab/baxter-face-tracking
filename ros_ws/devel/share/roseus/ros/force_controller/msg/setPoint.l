;; Auto-generated. Do not edit!


(when (boundp 'force_controller::setPoint)
  (if (not (find-package "FORCE_CONTROLLER"))
    (make-package "FORCE_CONTROLLER"))
  (shadow 'setPoint (find-package "FORCE_CONTROLLER")))
(unless (find-package "FORCE_CONTROLLER::SETPOINT")
  (make-package "FORCE_CONTROLLER::SETPOINT"))

(in-package "ROS")
;;//! \htmlinclude setPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass force_controller::setPoint
  :super ros::object
  :slots (_num_ctrls _domType _domDes _domGains _subType _subDes _subGains ))

(defmethod force_controller::setPoint
  (:init
   (&key
    ((:num_ctrls __num_ctrls) 0)
    ((:domType __domType) "")
    ((:domDes __domDes) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:domGains __domGains) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:subType __subType) "")
    ((:subDes __subDes) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:subGains __subGains) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    )
   (send-super :init)
   (setq _num_ctrls (round __num_ctrls))
   (setq _domType (string __domType))
   (setq _domDes __domDes)
   (setq _domGains __domGains)
   (setq _subType (string __subType))
   (setq _subDes __subDes)
   (setq _subGains __subGains)
   self)
  (:num_ctrls
   (&optional __num_ctrls)
   (if __num_ctrls (setq _num_ctrls __num_ctrls)) _num_ctrls)
  (:domType
   (&optional __domType)
   (if __domType (setq _domType __domType)) _domType)
  (:domDes
   (&rest __domDes)
   (if (keywordp (car __domDes))
       (send* _domDes __domDes)
     (progn
       (if __domDes (setq _domDes (car __domDes)))
       _domDes)))
  (:domGains
   (&rest __domGains)
   (if (keywordp (car __domGains))
       (send* _domGains __domGains)
     (progn
       (if __domGains (setq _domGains (car __domGains)))
       _domGains)))
  (:subType
   (&optional __subType)
   (if __subType (setq _subType __subType)) _subType)
  (:subDes
   (&rest __subDes)
   (if (keywordp (car __subDes))
       (send* _subDes __subDes)
     (progn
       (if __subDes (setq _subDes (car __subDes)))
       _subDes)))
  (:subGains
   (&rest __subGains)
   (if (keywordp (car __subGains))
       (send* _subGains __subGains)
     (progn
       (if __subGains (setq _subGains (car __subGains)))
       _subGains)))
  (:serialization-length
   ()
   (+
    ;; int32 _num_ctrls
    4
    ;; string _domType
    4 (length _domType)
    ;; geometry_msgs/Vector3[] _domDes
    (apply #'+ (send-all _domDes :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _domGains
    (apply #'+ (send-all _domGains :serialization-length)) 4
    ;; string _subType
    4 (length _subType)
    ;; geometry_msgs/Vector3[] _subDes
    (apply #'+ (send-all _subDes :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _subGains
    (apply #'+ (send-all _subGains :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num_ctrls
       (write-long _num_ctrls s)
     ;; string _domType
       (write-long (length _domType) s) (princ _domType s)
     ;; geometry_msgs/Vector3[] _domDes
     (write-long (length _domDes) s)
     (dolist (elem _domDes)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _domGains
     (write-long (length _domGains) s)
     (dolist (elem _domGains)
       (send elem :serialize s)
       )
     ;; string _subType
       (write-long (length _subType) s) (princ _subType s)
     ;; geometry_msgs/Vector3[] _subDes
     (write-long (length _subDes) s)
     (dolist (elem _subDes)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _subGains
     (write-long (length _subGains) s)
     (dolist (elem _subGains)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num_ctrls
     (setq _num_ctrls (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _domType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _domType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3[] _domDes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _domDes (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _domDes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _domGains
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _domGains (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _domGains)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _subType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3[] _subDes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _subDes (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _subDes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _subGains
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _subGains (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _subGains)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get force_controller::setPoint :md5sum-) "cda3fb843d195f1bf40697fef6470230")
(setf (get force_controller::setPoint :datatype-) "force_controller/setPoint")
(setf (get force_controller::setPoint :definition-)
      "#Number of Controllers
int32 num_ctrls

# Type of dominant controller
string domType

# Desired force/moment (3D) for dominant controller
geometry_msgs/Vector3[] domDes

# Gains force/moment (3D) for dominant controller
geometry_msgs/Vector3[] domGains

# Type of subordinate controller
string subType

# Desired force/moment (3D) for subordinate controller
geometry_msgs/Vector3[] subDes

# Gains force/moment (3D) for subordinate controller
geometry_msgs/Vector3[] subGains

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :force_controller/setPoint "cda3fb843d195f1bf40697fef6470230")


