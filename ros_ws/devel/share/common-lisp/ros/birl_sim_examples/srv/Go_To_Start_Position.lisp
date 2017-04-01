; Auto-generated. Do not edit!


(cl:in-package birl_sim_examples-srv)


;//! \htmlinclude Go_To_Start_Position-request.msg.html

(cl:defclass <Go_To_Start_Position-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass Go_To_Start_Position-request (<Go_To_Start_Position-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Go_To_Start_Position-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Go_To_Start_Position-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name birl_sim_examples-srv:<Go_To_Start_Position-request> is deprecated: use birl_sim_examples-srv:Go_To_Start_Position-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <Go_To_Start_Position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader birl_sim_examples-srv:start-val is deprecated.  Use birl_sim_examples-srv:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Go_To_Start_Position-request>) ostream)
  "Serializes a message object of type '<Go_To_Start_Position-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Go_To_Start_Position-request>) istream)
  "Deserializes a message object of type '<Go_To_Start_Position-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Go_To_Start_Position-request>)))
  "Returns string type for a service object of type '<Go_To_Start_Position-request>"
  "birl_sim_examples/Go_To_Start_PositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Go_To_Start_Position-request)))
  "Returns string type for a service object of type 'Go_To_Start_Position-request"
  "birl_sim_examples/Go_To_Start_PositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Go_To_Start_Position-request>)))
  "Returns md5sum for a message object of type '<Go_To_Start_Position-request>"
  "7c6de0715050e5b33da9989dcb725ea8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Go_To_Start_Position-request)))
  "Returns md5sum for a message object of type 'Go_To_Start_Position-request"
  "7c6de0715050e5b33da9989dcb725ea8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Go_To_Start_Position-request>)))
  "Returns full string definition for message of type '<Go_To_Start_Position-request>"
  (cl:format cl:nil "~%std_msgs/Bool start~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Go_To_Start_Position-request)))
  "Returns full string definition for message of type 'Go_To_Start_Position-request"
  (cl:format cl:nil "~%std_msgs/Bool start~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Go_To_Start_Position-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Go_To_Start_Position-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Go_To_Start_Position-request
    (cl:cons ':start (start msg))
))
;//! \htmlinclude Go_To_Start_Position-response.msg.html

(cl:defclass <Go_To_Start_Position-response> (roslisp-msg-protocol:ros-message)
  ((finish
    :reader finish
    :initarg :finish
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass Go_To_Start_Position-response (<Go_To_Start_Position-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Go_To_Start_Position-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Go_To_Start_Position-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name birl_sim_examples-srv:<Go_To_Start_Position-response> is deprecated: use birl_sim_examples-srv:Go_To_Start_Position-response instead.")))

(cl:ensure-generic-function 'finish-val :lambda-list '(m))
(cl:defmethod finish-val ((m <Go_To_Start_Position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader birl_sim_examples-srv:finish-val is deprecated.  Use birl_sim_examples-srv:finish instead.")
  (finish m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Go_To_Start_Position-response>) ostream)
  "Serializes a message object of type '<Go_To_Start_Position-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'finish) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Go_To_Start_Position-response>) istream)
  "Deserializes a message object of type '<Go_To_Start_Position-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'finish) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Go_To_Start_Position-response>)))
  "Returns string type for a service object of type '<Go_To_Start_Position-response>"
  "birl_sim_examples/Go_To_Start_PositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Go_To_Start_Position-response)))
  "Returns string type for a service object of type 'Go_To_Start_Position-response"
  "birl_sim_examples/Go_To_Start_PositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Go_To_Start_Position-response>)))
  "Returns md5sum for a message object of type '<Go_To_Start_Position-response>"
  "7c6de0715050e5b33da9989dcb725ea8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Go_To_Start_Position-response)))
  "Returns md5sum for a message object of type 'Go_To_Start_Position-response"
  "7c6de0715050e5b33da9989dcb725ea8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Go_To_Start_Position-response>)))
  "Returns full string definition for message of type '<Go_To_Start_Position-response>"
  (cl:format cl:nil "~%~%std_msgs/Bool finish~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Go_To_Start_Position-response)))
  "Returns full string definition for message of type 'Go_To_Start_Position-response"
  (cl:format cl:nil "~%~%std_msgs/Bool finish~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Go_To_Start_Position-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'finish))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Go_To_Start_Position-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Go_To_Start_Position-response
    (cl:cons ':finish (finish msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Go_To_Start_Position)))
  'Go_To_Start_Position-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Go_To_Start_Position)))
  'Go_To_Start_Position-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Go_To_Start_Position)))
  "Returns string type for a service object of type '<Go_To_Start_Position>"
  "birl_sim_examples/Go_To_Start_Position")