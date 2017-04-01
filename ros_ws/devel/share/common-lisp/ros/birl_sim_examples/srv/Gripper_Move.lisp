; Auto-generated. Do not edit!


(cl:in-package birl_sim_examples-srv)


;//! \htmlinclude Gripper_Move-request.msg.html

(cl:defclass <Gripper_Move-request> (roslisp-msg-protocol:ros-message)
  ((gripper_desired_flag
    :reader gripper_desired_flag
    :initarg :gripper_desired_flag
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass Gripper_Move-request (<Gripper_Move-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gripper_Move-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gripper_Move-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name birl_sim_examples-srv:<Gripper_Move-request> is deprecated: use birl_sim_examples-srv:Gripper_Move-request instead.")))

(cl:ensure-generic-function 'gripper_desired_flag-val :lambda-list '(m))
(cl:defmethod gripper_desired_flag-val ((m <Gripper_Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader birl_sim_examples-srv:gripper_desired_flag-val is deprecated.  Use birl_sim_examples-srv:gripper_desired_flag instead.")
  (gripper_desired_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gripper_Move-request>) ostream)
  "Serializes a message object of type '<Gripper_Move-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gripper_desired_flag) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gripper_Move-request>) istream)
  "Deserializes a message object of type '<Gripper_Move-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gripper_desired_flag) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gripper_Move-request>)))
  "Returns string type for a service object of type '<Gripper_Move-request>"
  "birl_sim_examples/Gripper_MoveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gripper_Move-request)))
  "Returns string type for a service object of type 'Gripper_Move-request"
  "birl_sim_examples/Gripper_MoveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gripper_Move-request>)))
  "Returns md5sum for a message object of type '<Gripper_Move-request>"
  "16b119fdb1caa4ce59870b158835a73f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gripper_Move-request)))
  "Returns md5sum for a message object of type 'Gripper_Move-request"
  "16b119fdb1caa4ce59870b158835a73f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gripper_Move-request>)))
  "Returns full string definition for message of type '<Gripper_Move-request>"
  (cl:format cl:nil "~%std_msgs/Bool gripper_desired_flag~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gripper_Move-request)))
  "Returns full string definition for message of type 'Gripper_Move-request"
  (cl:format cl:nil "~%std_msgs/Bool gripper_desired_flag~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gripper_Move-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gripper_desired_flag))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gripper_Move-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Gripper_Move-request
    (cl:cons ':gripper_desired_flag (gripper_desired_flag msg))
))
;//! \htmlinclude Gripper_Move-response.msg.html

(cl:defclass <Gripper_Move-response> (roslisp-msg-protocol:ros-message)
  ((gripper_status_flag
    :reader gripper_status_flag
    :initarg :gripper_status_flag
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass Gripper_Move-response (<Gripper_Move-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gripper_Move-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gripper_Move-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name birl_sim_examples-srv:<Gripper_Move-response> is deprecated: use birl_sim_examples-srv:Gripper_Move-response instead.")))

(cl:ensure-generic-function 'gripper_status_flag-val :lambda-list '(m))
(cl:defmethod gripper_status_flag-val ((m <Gripper_Move-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader birl_sim_examples-srv:gripper_status_flag-val is deprecated.  Use birl_sim_examples-srv:gripper_status_flag instead.")
  (gripper_status_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gripper_Move-response>) ostream)
  "Serializes a message object of type '<Gripper_Move-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gripper_status_flag) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gripper_Move-response>) istream)
  "Deserializes a message object of type '<Gripper_Move-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gripper_status_flag) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gripper_Move-response>)))
  "Returns string type for a service object of type '<Gripper_Move-response>"
  "birl_sim_examples/Gripper_MoveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gripper_Move-response)))
  "Returns string type for a service object of type 'Gripper_Move-response"
  "birl_sim_examples/Gripper_MoveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gripper_Move-response>)))
  "Returns md5sum for a message object of type '<Gripper_Move-response>"
  "16b119fdb1caa4ce59870b158835a73f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gripper_Move-response)))
  "Returns md5sum for a message object of type 'Gripper_Move-response"
  "16b119fdb1caa4ce59870b158835a73f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gripper_Move-response>)))
  "Returns full string definition for message of type '<Gripper_Move-response>"
  (cl:format cl:nil "~%~%~%std_msgs/Bool gripper_status_flag~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gripper_Move-response)))
  "Returns full string definition for message of type 'Gripper_Move-response"
  (cl:format cl:nil "~%~%~%std_msgs/Bool gripper_status_flag~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gripper_Move-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gripper_status_flag))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gripper_Move-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Gripper_Move-response
    (cl:cons ':gripper_status_flag (gripper_status_flag msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Gripper_Move)))
  'Gripper_Move-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Gripper_Move)))
  'Gripper_Move-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gripper_Move)))
  "Returns string type for a service object of type '<Gripper_Move>"
  "birl_sim_examples/Gripper_Move")