; Auto-generated. Do not edit!


(cl:in-package point_cloud_selector-msg)


;//! \htmlinclude CylinderProperties.msg.html

(cl:defclass <CylinderProperties> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass CylinderProperties (<CylinderProperties>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CylinderProperties>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CylinderProperties)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_selector-msg:<CylinderProperties> is deprecated: use point_cloud_selector-msg:CylinderProperties instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CylinderProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_selector-msg:pose-val is deprecated.  Use point_cloud_selector-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <CylinderProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_selector-msg:radius-val is deprecated.  Use point_cloud_selector-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <CylinderProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_selector-msg:height-val is deprecated.  Use point_cloud_selector-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CylinderProperties>) ostream)
  "Serializes a message object of type '<CylinderProperties>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CylinderProperties>) istream)
  "Deserializes a message object of type '<CylinderProperties>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CylinderProperties>)))
  "Returns string type for a message object of type '<CylinderProperties>"
  "point_cloud_selector/CylinderProperties")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CylinderProperties)))
  "Returns string type for a message object of type 'CylinderProperties"
  "point_cloud_selector/CylinderProperties")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CylinderProperties>)))
  "Returns md5sum for a message object of type '<CylinderProperties>"
  "a4e3bfc9767a9507a2a420e39240fa88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CylinderProperties)))
  "Returns md5sum for a message object of type 'CylinderProperties"
  "a4e3bfc9767a9507a2a420e39240fa88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CylinderProperties>)))
  "Returns full string definition for message of type '<CylinderProperties>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%float64 radius~%float64 height~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CylinderProperties)))
  "Returns full string definition for message of type 'CylinderProperties"
  (cl:format cl:nil "geometry_msgs/Pose pose~%float64 radius~%float64 height~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CylinderProperties>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CylinderProperties>))
  "Converts a ROS message object to a list"
  (cl:list 'CylinderProperties
    (cl:cons ':pose (pose msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':height (height msg))
))
