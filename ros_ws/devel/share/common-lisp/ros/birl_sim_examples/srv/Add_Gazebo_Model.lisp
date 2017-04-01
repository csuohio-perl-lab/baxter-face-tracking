; Auto-generated. Do not edit!


(cl:in-package birl_sim_examples-srv)


;//! \htmlinclude Add_Gazebo_Model-request.msg.html

(cl:defclass <Add_Gazebo_Model-request> (roslisp-msg-protocol:ros-message)
  ((model_name
    :reader model_name
    :initarg :model_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (model_pose
    :reader model_pose
    :initarg :model_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (model_reference_frame
    :reader model_reference_frame
    :initarg :model_reference_frame
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass Add_Gazebo_Model-request (<Add_Gazebo_Model-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Add_Gazebo_Model-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Add_Gazebo_Model-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name birl_sim_examples-srv:<Add_Gazebo_Model-request> is deprecated: use birl_sim_examples-srv:Add_Gazebo_Model-request instead.")))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <Add_Gazebo_Model-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader birl_sim_examples-srv:model_name-val is deprecated.  Use birl_sim_examples-srv:model_name instead.")
  (model_name m))

(cl:ensure-generic-function 'model_pose-val :lambda-list '(m))
(cl:defmethod model_pose-val ((m <Add_Gazebo_Model-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader birl_sim_examples-srv:model_pose-val is deprecated.  Use birl_sim_examples-srv:model_pose instead.")
  (model_pose m))

(cl:ensure-generic-function 'model_reference_frame-val :lambda-list '(m))
(cl:defmethod model_reference_frame-val ((m <Add_Gazebo_Model-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader birl_sim_examples-srv:model_reference_frame-val is deprecated.  Use birl_sim_examples-srv:model_reference_frame instead.")
  (model_reference_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Add_Gazebo_Model-request>) ostream)
  "Serializes a message object of type '<Add_Gazebo_Model-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'model_name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'model_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'model_reference_frame) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Add_Gazebo_Model-request>) istream)
  "Deserializes a message object of type '<Add_Gazebo_Model-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'model_name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'model_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'model_reference_frame) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Add_Gazebo_Model-request>)))
  "Returns string type for a service object of type '<Add_Gazebo_Model-request>"
  "birl_sim_examples/Add_Gazebo_ModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Add_Gazebo_Model-request)))
  "Returns string type for a service object of type 'Add_Gazebo_Model-request"
  "birl_sim_examples/Add_Gazebo_ModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Add_Gazebo_Model-request>)))
  "Returns md5sum for a message object of type '<Add_Gazebo_Model-request>"
  "4a89e17e67d4f1fa4b02d6868553717a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Add_Gazebo_Model-request)))
  "Returns md5sum for a message object of type 'Add_Gazebo_Model-request"
  "4a89e17e67d4f1fa4b02d6868553717a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Add_Gazebo_Model-request>)))
  "Returns full string definition for message of type '<Add_Gazebo_Model-request>"
  (cl:format cl:nil "~%std_msgs/String model_name~%~%~%geometry_msgs/Pose model_pose~%~%~%std_msgs/String model_reference_frame~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Add_Gazebo_Model-request)))
  "Returns full string definition for message of type 'Add_Gazebo_Model-request"
  (cl:format cl:nil "~%std_msgs/String model_name~%~%~%geometry_msgs/Pose model_pose~%~%~%std_msgs/String model_reference_frame~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Add_Gazebo_Model-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'model_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'model_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'model_reference_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Add_Gazebo_Model-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Add_Gazebo_Model-request
    (cl:cons ':model_name (model_name msg))
    (cl:cons ':model_pose (model_pose msg))
    (cl:cons ':model_reference_frame (model_reference_frame msg))
))
;//! \htmlinclude Add_Gazebo_Model-response.msg.html

(cl:defclass <Add_Gazebo_Model-response> (roslisp-msg-protocol:ros-message)
  ((load_status
    :reader load_status
    :initarg :load_status
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass Add_Gazebo_Model-response (<Add_Gazebo_Model-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Add_Gazebo_Model-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Add_Gazebo_Model-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name birl_sim_examples-srv:<Add_Gazebo_Model-response> is deprecated: use birl_sim_examples-srv:Add_Gazebo_Model-response instead.")))

(cl:ensure-generic-function 'load_status-val :lambda-list '(m))
(cl:defmethod load_status-val ((m <Add_Gazebo_Model-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader birl_sim_examples-srv:load_status-val is deprecated.  Use birl_sim_examples-srv:load_status instead.")
  (load_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Add_Gazebo_Model-response>) ostream)
  "Serializes a message object of type '<Add_Gazebo_Model-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'load_status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Add_Gazebo_Model-response>) istream)
  "Deserializes a message object of type '<Add_Gazebo_Model-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'load_status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Add_Gazebo_Model-response>)))
  "Returns string type for a service object of type '<Add_Gazebo_Model-response>"
  "birl_sim_examples/Add_Gazebo_ModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Add_Gazebo_Model-response)))
  "Returns string type for a service object of type 'Add_Gazebo_Model-response"
  "birl_sim_examples/Add_Gazebo_ModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Add_Gazebo_Model-response>)))
  "Returns md5sum for a message object of type '<Add_Gazebo_Model-response>"
  "4a89e17e67d4f1fa4b02d6868553717a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Add_Gazebo_Model-response)))
  "Returns md5sum for a message object of type 'Add_Gazebo_Model-response"
  "4a89e17e67d4f1fa4b02d6868553717a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Add_Gazebo_Model-response>)))
  "Returns full string definition for message of type '<Add_Gazebo_Model-response>"
  (cl:format cl:nil "~%~%std_msgs/Bool load_status~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Add_Gazebo_Model-response)))
  "Returns full string definition for message of type 'Add_Gazebo_Model-response"
  (cl:format cl:nil "~%~%std_msgs/Bool load_status~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Add_Gazebo_Model-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'load_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Add_Gazebo_Model-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Add_Gazebo_Model-response
    (cl:cons ':load_status (load_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Add_Gazebo_Model)))
  'Add_Gazebo_Model-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Add_Gazebo_Model)))
  'Add_Gazebo_Model-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Add_Gazebo_Model)))
  "Returns string type for a service object of type '<Add_Gazebo_Model>"
  "birl_sim_examples/Add_Gazebo_Model")