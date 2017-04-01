; Auto-generated. Do not edit!


(cl:in-package point_cloud_selector-srv)


;//! \htmlinclude SelectCylinder-request.msg.html

(cl:defclass <SelectCylinder-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SelectCylinder-request (<SelectCylinder-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SelectCylinder-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SelectCylinder-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_selector-srv:<SelectCylinder-request> is deprecated: use point_cloud_selector-srv:SelectCylinder-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SelectCylinder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_selector-srv:pose-val is deprecated.  Use point_cloud_selector-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <SelectCylinder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_selector-srv:radius-val is deprecated.  Use point_cloud_selector-srv:radius instead.")
  (radius m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <SelectCylinder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_selector-srv:height-val is deprecated.  Use point_cloud_selector-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SelectCylinder-request>) ostream)
  "Serializes a message object of type '<SelectCylinder-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SelectCylinder-request>) istream)
  "Deserializes a message object of type '<SelectCylinder-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SelectCylinder-request>)))
  "Returns string type for a service object of type '<SelectCylinder-request>"
  "point_cloud_selector/SelectCylinderRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelectCylinder-request)))
  "Returns string type for a service object of type 'SelectCylinder-request"
  "point_cloud_selector/SelectCylinderRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SelectCylinder-request>)))
  "Returns md5sum for a message object of type '<SelectCylinder-request>"
  "a4e3bfc9767a9507a2a420e39240fa88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SelectCylinder-request)))
  "Returns md5sum for a message object of type 'SelectCylinder-request"
  "a4e3bfc9767a9507a2a420e39240fa88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SelectCylinder-request>)))
  "Returns full string definition for message of type '<SelectCylinder-request>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%float64 radius~%float64 height~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SelectCylinder-request)))
  "Returns full string definition for message of type 'SelectCylinder-request"
  (cl:format cl:nil "geometry_msgs/Pose pose~%float64 radius~%float64 height~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SelectCylinder-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SelectCylinder-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SelectCylinder-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':height (height msg))
))
;//! \htmlinclude SelectCylinder-response.msg.html

(cl:defclass <SelectCylinder-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SelectCylinder-response (<SelectCylinder-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SelectCylinder-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SelectCylinder-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_selector-srv:<SelectCylinder-response> is deprecated: use point_cloud_selector-srv:SelectCylinder-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SelectCylinder-response>) ostream)
  "Serializes a message object of type '<SelectCylinder-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SelectCylinder-response>) istream)
  "Deserializes a message object of type '<SelectCylinder-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SelectCylinder-response>)))
  "Returns string type for a service object of type '<SelectCylinder-response>"
  "point_cloud_selector/SelectCylinderResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelectCylinder-response)))
  "Returns string type for a service object of type 'SelectCylinder-response"
  "point_cloud_selector/SelectCylinderResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SelectCylinder-response>)))
  "Returns md5sum for a message object of type '<SelectCylinder-response>"
  "a4e3bfc9767a9507a2a420e39240fa88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SelectCylinder-response)))
  "Returns md5sum for a message object of type 'SelectCylinder-response"
  "a4e3bfc9767a9507a2a420e39240fa88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SelectCylinder-response>)))
  "Returns full string definition for message of type '<SelectCylinder-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SelectCylinder-response)))
  "Returns full string definition for message of type 'SelectCylinder-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SelectCylinder-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SelectCylinder-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SelectCylinder-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SelectCylinder)))
  'SelectCylinder-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SelectCylinder)))
  'SelectCylinder-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SelectCylinder)))
  "Returns string type for a service object of type '<SelectCylinder>"
  "point_cloud_selector/SelectCylinder")