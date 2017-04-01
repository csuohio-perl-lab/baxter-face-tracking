;; Auto-generated. Do not edit!


(when (boundp 'birl_sim_examples::Add_Gazebo_Model)
  (if (not (find-package "BIRL_SIM_EXAMPLES"))
    (make-package "BIRL_SIM_EXAMPLES"))
  (shadow 'Add_Gazebo_Model (find-package "BIRL_SIM_EXAMPLES")))
(unless (find-package "BIRL_SIM_EXAMPLES::ADD_GAZEBO_MODEL")
  (make-package "BIRL_SIM_EXAMPLES::ADD_GAZEBO_MODEL"))
(unless (find-package "BIRL_SIM_EXAMPLES::ADD_GAZEBO_MODELREQUEST")
  (make-package "BIRL_SIM_EXAMPLES::ADD_GAZEBO_MODELREQUEST"))
(unless (find-package "BIRL_SIM_EXAMPLES::ADD_GAZEBO_MODELRESPONSE")
  (make-package "BIRL_SIM_EXAMPLES::ADD_GAZEBO_MODELRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass birl_sim_examples::Add_Gazebo_ModelRequest
  :super ros::object
  :slots (_model_name _model_pose _model_reference_frame ))

(defmethod birl_sim_examples::Add_Gazebo_ModelRequest
  (:init
   (&key
    ((:model_name __model_name) (instance std_msgs::String :init))
    ((:model_pose __model_pose) (instance geometry_msgs::Pose :init))
    ((:model_reference_frame __model_reference_frame) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _model_name __model_name)
   (setq _model_pose __model_pose)
   (setq _model_reference_frame __model_reference_frame)
   self)
  (:model_name
   (&rest __model_name)
   (if (keywordp (car __model_name))
       (send* _model_name __model_name)
     (progn
       (if __model_name (setq _model_name (car __model_name)))
       _model_name)))
  (:model_pose
   (&rest __model_pose)
   (if (keywordp (car __model_pose))
       (send* _model_pose __model_pose)
     (progn
       (if __model_pose (setq _model_pose (car __model_pose)))
       _model_pose)))
  (:model_reference_frame
   (&rest __model_reference_frame)
   (if (keywordp (car __model_reference_frame))
       (send* _model_reference_frame __model_reference_frame)
     (progn
       (if __model_reference_frame (setq _model_reference_frame (car __model_reference_frame)))
       _model_reference_frame)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _model_name
    (send _model_name :serialization-length)
    ;; geometry_msgs/Pose _model_pose
    (send _model_pose :serialization-length)
    ;; std_msgs/String _model_reference_frame
    (send _model_reference_frame :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _model_name
       (send _model_name :serialize s)
     ;; geometry_msgs/Pose _model_pose
       (send _model_pose :serialize s)
     ;; std_msgs/String _model_reference_frame
       (send _model_reference_frame :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _model_name
     (send _model_name :deserialize buf ptr-) (incf ptr- (send _model_name :serialization-length))
   ;; geometry_msgs/Pose _model_pose
     (send _model_pose :deserialize buf ptr-) (incf ptr- (send _model_pose :serialization-length))
   ;; std_msgs/String _model_reference_frame
     (send _model_reference_frame :deserialize buf ptr-) (incf ptr- (send _model_reference_frame :serialization-length))
   ;;
   self)
  )

(defclass birl_sim_examples::Add_Gazebo_ModelResponse
  :super ros::object
  :slots (_load_status ))

(defmethod birl_sim_examples::Add_Gazebo_ModelResponse
  (:init
   (&key
    ((:load_status __load_status) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _load_status __load_status)
   self)
  (:load_status
   (&rest __load_status)
   (if (keywordp (car __load_status))
       (send* _load_status __load_status)
     (progn
       (if __load_status (setq _load_status (car __load_status)))
       _load_status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _load_status
    (send _load_status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _load_status
       (send _load_status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _load_status
     (send _load_status :deserialize buf ptr-) (incf ptr- (send _load_status :serialization-length))
   ;;
   self)
  )

(defclass birl_sim_examples::Add_Gazebo_Model
  :super ros::object
  :slots ())

(setf (get birl_sim_examples::Add_Gazebo_Model :md5sum-) "4a89e17e67d4f1fa4b02d6868553717a")
(setf (get birl_sim_examples::Add_Gazebo_Model :datatype-) "birl_sim_examples/Add_Gazebo_Model")
(setf (get birl_sim_examples::Add_Gazebo_Model :request) birl_sim_examples::Add_Gazebo_ModelRequest)
(setf (get birl_sim_examples::Add_Gazebo_Model :response) birl_sim_examples::Add_Gazebo_ModelResponse)

(defmethod birl_sim_examples::Add_Gazebo_ModelRequest
  (:response () (instance birl_sim_examples::Add_Gazebo_ModelResponse :init)))

(setf (get birl_sim_examples::Add_Gazebo_ModelRequest :md5sum-) "4a89e17e67d4f1fa4b02d6868553717a")
(setf (get birl_sim_examples::Add_Gazebo_ModelRequest :datatype-) "birl_sim_examples/Add_Gazebo_ModelRequest")
(setf (get birl_sim_examples::Add_Gazebo_ModelRequest :definition-)
      "
std_msgs/String model_name


geometry_msgs/Pose model_pose


std_msgs/String model_reference_frame


================================================================================
MSG: std_msgs/String
string data

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
---


std_msgs/Bool load_status


================================================================================
MSG: std_msgs/Bool
")

(setf (get birl_sim_examples::Add_Gazebo_ModelResponse :md5sum-) "4a89e17e67d4f1fa4b02d6868553717a")
(setf (get birl_sim_examples::Add_Gazebo_ModelResponse :datatype-) "birl_sim_examples/Add_Gazebo_ModelResponse")
(setf (get birl_sim_examples::Add_Gazebo_ModelResponse :definition-)
      "
std_msgs/String model_name


geometry_msgs/Pose model_pose


std_msgs/String model_reference_frame


================================================================================
MSG: std_msgs/String
string data

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
---


std_msgs/Bool load_status


================================================================================
MSG: std_msgs/Bool
")



(provide :birl_sim_examples/Add_Gazebo_Model "4a89e17e67d4f1fa4b02d6868553717a")


