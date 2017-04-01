; Auto-generated. Do not edit!


(cl:in-package birl_sim_examples-srv)


;//! \htmlinclude Go_To_Position-request.msg.html

(cl:defclass <Go_To_Position-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Go_To_Position-request (<Go_To_Position-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Go_To_Position-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Go_To_Position-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name birl_sim_examples-srv:<Go_To_Position-request> is deprecated: use birl_sim_examples-srv:Go_To_Position-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Go_To_Position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader birl_sim_examples-srv:pose-val is deprecated.  Use birl_sim_examples-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Go_To_Position-request>) ostream)
  "Serializes a message object of type '<Go_To_Position-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Go_To_Position-request>) istream)
  "Deserializes a message object of type '<Go_To_Position-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Go_To_Position-request>)))
  "Returns string type for a service object of type '<Go_To_Position-request>"
  "birl_sim_examples/Go_To_PositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Go_To_Position-request)))
  "Returns string type for a service object of type 'Go_To_Position-request"
  "birl_sim_examples/Go_To_PositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Go_To_Position-request>)))
  "Returns md5sum for a message object of type '<Go_To_Position-request>"
  "d6d31042fd9aa19888cf6a8cca49baf3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Go_To_Position-request)))
  "Returns md5sum for a message object of type 'Go_To_Position-request"
  "d6d31042fd9aa19888cf6a8cca49baf3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Go_To_Position-request>)))
  "Returns full string definition for message of type '<Go_To_Position-request>"
  (cl:format cl:nil "~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Go_To_Position-request)))
  "Returns full string definition for message of type 'Go_To_Position-request"
  (cl:format cl:nil "~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Go_To_Position-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Go_To_Position-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Go_To_Position-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude Go_To_Position-response.msg.html

(cl:defclass <Go_To_Position-response> (roslisp-msg-protocol:ros-message)
  ((ik_flag
    :reader ik_flag
    :initarg :ik_flag
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (action_flag
    :reader action_flag
    :initarg :action_flag
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass Go_To_Position-response (<Go_To_Position-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Go_To_Position-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Go_To_Position-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name birl_sim_examples-srv:<Go_To_Position-response> is deprecated: use birl_sim_examples-srv:Go_To_Position-response instead.")))

(cl:ensure-generic-function 'ik_flag-val :lambda-list '(m))
(cl:defmethod ik_flag-val ((m <Go_To_Position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader birl_sim_examples-srv:ik_flag-val is deprecated.  Use birl_sim_examples-srv:ik_flag instead.")
  (ik_flag m))

(cl:ensure-generic-function 'action_flag-val :lambda-list '(m))
(cl:defmethod action_flag-val ((m <Go_To_Position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader birl_sim_examples-srv:action_flag-val is deprecated.  Use birl_sim_examples-srv:action_flag instead.")
  (action_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Go_To_Position-response>) ostream)
  "Serializes a message object of type '<Go_To_Position-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ik_flag) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_flag) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Go_To_Position-response>) istream)
  "Deserializes a message object of type '<Go_To_Position-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ik_flag) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_flag) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Go_To_Position-response>)))
  "Returns string type for a service object of type '<Go_To_Position-response>"
  "birl_sim_examples/Go_To_PositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Go_To_Position-response)))
  "Returns string type for a service object of type 'Go_To_Position-response"
  "birl_sim_examples/Go_To_PositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Go_To_Position-response>)))
  "Returns md5sum for a message object of type '<Go_To_Position-response>"
  "d6d31042fd9aa19888cf6a8cca49baf3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Go_To_Position-response)))
  "Returns md5sum for a message object of type 'Go_To_Position-response"
  "d6d31042fd9aa19888cf6a8cca49baf3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Go_To_Position-response>)))
  "Returns full string definition for message of type '<Go_To_Position-response>"
  (cl:format cl:nil "~%~%std_msgs/Bool ik_flag~%~%~%std_msgs/Bool action_flag~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Go_To_Position-response)))
  "Returns full string definition for message of type 'Go_To_Position-response"
  (cl:format cl:nil "~%~%std_msgs/Bool ik_flag~%~%~%std_msgs/Bool action_flag~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Go_To_Position-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ik_flag))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_flag))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Go_To_Position-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Go_To_Position-response
    (cl:cons ':ik_flag (ik_flag msg))
    (cl:cons ':action_flag (action_flag msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Go_To_Position)))
  'Go_To_Position-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Go_To_Position)))
  'Go_To_Position-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Go_To_Position)))
  "Returns string type for a service object of type '<Go_To_Position>"
  "birl_sim_examples/Go_To_Position")