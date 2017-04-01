; Auto-generated. Do not edit!


(cl:in-package point_cloud_selector-srv)


;//! \htmlinclude SetCylinderProperties-request.msg.html

(cl:defclass <SetCylinderProperties-request> (roslisp-msg-protocol:ros-message)
  ((height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA)))
)

(cl:defclass SetCylinderProperties-request (<SetCylinderProperties-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCylinderProperties-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCylinderProperties-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_selector-srv:<SetCylinderProperties-request> is deprecated: use point_cloud_selector-srv:SetCylinderProperties-request instead.")))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <SetCylinderProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_selector-srv:height-val is deprecated.  Use point_cloud_selector-srv:height instead.")
  (height m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <SetCylinderProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_selector-srv:radius-val is deprecated.  Use point_cloud_selector-srv:radius instead.")
  (radius m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <SetCylinderProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_selector-srv:color-val is deprecated.  Use point_cloud_selector-srv:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCylinderProperties-request>) ostream)
  "Serializes a message object of type '<SetCylinderProperties-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCylinderProperties-request>) istream)
  "Deserializes a message object of type '<SetCylinderProperties-request>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCylinderProperties-request>)))
  "Returns string type for a service object of type '<SetCylinderProperties-request>"
  "point_cloud_selector/SetCylinderPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCylinderProperties-request)))
  "Returns string type for a service object of type 'SetCylinderProperties-request"
  "point_cloud_selector/SetCylinderPropertiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCylinderProperties-request>)))
  "Returns md5sum for a message object of type '<SetCylinderProperties-request>"
  "99b58a07a4ea44adc43db01044994e75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCylinderProperties-request)))
  "Returns md5sum for a message object of type 'SetCylinderProperties-request"
  "99b58a07a4ea44adc43db01044994e75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCylinderProperties-request>)))
  "Returns full string definition for message of type '<SetCylinderProperties-request>"
  (cl:format cl:nil "float64 height~%float64 radius~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCylinderProperties-request)))
  "Returns full string definition for message of type 'SetCylinderProperties-request"
  (cl:format cl:nil "float64 height~%float64 radius~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCylinderProperties-request>))
  (cl:+ 0
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCylinderProperties-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCylinderProperties-request
    (cl:cons ':height (height msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':color (color msg))
))
;//! \htmlinclude SetCylinderProperties-response.msg.html

(cl:defclass <SetCylinderProperties-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetCylinderProperties-response (<SetCylinderProperties-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCylinderProperties-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCylinderProperties-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_selector-srv:<SetCylinderProperties-response> is deprecated: use point_cloud_selector-srv:SetCylinderProperties-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCylinderProperties-response>) ostream)
  "Serializes a message object of type '<SetCylinderProperties-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCylinderProperties-response>) istream)
  "Deserializes a message object of type '<SetCylinderProperties-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCylinderProperties-response>)))
  "Returns string type for a service object of type '<SetCylinderProperties-response>"
  "point_cloud_selector/SetCylinderPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCylinderProperties-response)))
  "Returns string type for a service object of type 'SetCylinderProperties-response"
  "point_cloud_selector/SetCylinderPropertiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCylinderProperties-response>)))
  "Returns md5sum for a message object of type '<SetCylinderProperties-response>"
  "99b58a07a4ea44adc43db01044994e75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCylinderProperties-response)))
  "Returns md5sum for a message object of type 'SetCylinderProperties-response"
  "99b58a07a4ea44adc43db01044994e75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCylinderProperties-response>)))
  "Returns full string definition for message of type '<SetCylinderProperties-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCylinderProperties-response)))
  "Returns full string definition for message of type 'SetCylinderProperties-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCylinderProperties-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCylinderProperties-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCylinderProperties-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCylinderProperties)))
  'SetCylinderProperties-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCylinderProperties)))
  'SetCylinderProperties-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCylinderProperties)))
  "Returns string type for a service object of type '<SetCylinderProperties>"
  "point_cloud_selector/SetCylinderProperties")