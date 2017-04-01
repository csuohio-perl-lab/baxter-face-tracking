;; Auto-generated. Do not edit!


(when (boundp 'birl_sim_examples::Go_To_Position)
  (if (not (find-package "BIRL_SIM_EXAMPLES"))
    (make-package "BIRL_SIM_EXAMPLES"))
  (shadow 'Go_To_Position (find-package "BIRL_SIM_EXAMPLES")))
(unless (find-package "BIRL_SIM_EXAMPLES::GO_TO_POSITION")
  (make-package "BIRL_SIM_EXAMPLES::GO_TO_POSITION"))
(unless (find-package "BIRL_SIM_EXAMPLES::GO_TO_POSITIONREQUEST")
  (make-package "BIRL_SIM_EXAMPLES::GO_TO_POSITIONREQUEST"))
(unless (find-package "BIRL_SIM_EXAMPLES::GO_TO_POSITIONRESPONSE")
  (make-package "BIRL_SIM_EXAMPLES::GO_TO_POSITIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass birl_sim_examples::Go_To_PositionRequest
  :super ros::object
  :slots (_pose ))

(defmethod birl_sim_examples::Go_To_PositionRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass birl_sim_examples::Go_To_PositionResponse
  :super ros::object
  :slots (_ik_flag _action_flag ))

(defmethod birl_sim_examples::Go_To_PositionResponse
  (:init
   (&key
    ((:ik_flag __ik_flag) (instance std_msgs::Bool :init))
    ((:action_flag __action_flag) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _ik_flag __ik_flag)
   (setq _action_flag __action_flag)
   self)
  (:ik_flag
   (&rest __ik_flag)
   (if (keywordp (car __ik_flag))
       (send* _ik_flag __ik_flag)
     (progn
       (if __ik_flag (setq _ik_flag (car __ik_flag)))
       _ik_flag)))
  (:action_flag
   (&rest __action_flag)
   (if (keywordp (car __action_flag))
       (send* _action_flag __action_flag)
     (progn
       (if __action_flag (setq _action_flag (car __action_flag)))
       _action_flag)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _ik_flag
    (send _ik_flag :serialization-length)
    ;; std_msgs/Bool _action_flag
    (send _action_flag :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _ik_flag
       (send _ik_flag :serialize s)
     ;; std_msgs/Bool _action_flag
       (send _action_flag :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _ik_flag
     (send _ik_flag :deserialize buf ptr-) (incf ptr- (send _ik_flag :serialization-length))
   ;; std_msgs/Bool _action_flag
     (send _action_flag :deserialize buf ptr-) (incf ptr- (send _action_flag :serialization-length))
   ;;
   self)
  )

(defclass birl_sim_examples::Go_To_Position
  :super ros::object
  :slots ())

(setf (get birl_sim_examples::Go_To_Position :md5sum-) "d6d31042fd9aa19888cf6a8cca49baf3")
(setf (get birl_sim_examples::Go_To_Position :datatype-) "birl_sim_examples/Go_To_Position")
(setf (get birl_sim_examples::Go_To_Position :request) birl_sim_examples::Go_To_PositionRequest)
(setf (get birl_sim_examples::Go_To_Position :response) birl_sim_examples::Go_To_PositionResponse)

(defmethod birl_sim_examples::Go_To_PositionRequest
  (:response () (instance birl_sim_examples::Go_To_PositionResponse :init)))

(setf (get birl_sim_examples::Go_To_PositionRequest :md5sum-) "d6d31042fd9aa19888cf6a8cca49baf3")
(setf (get birl_sim_examples::Go_To_PositionRequest :datatype-) "birl_sim_examples/Go_To_PositionRequest")
(setf (get birl_sim_examples::Go_To_PositionRequest :definition-)
      "
geometry_msgs/Pose pose


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


std_msgs/Bool ik_flag


std_msgs/Bool action_flag


================================================================================
MSG: std_msgs/Bool
")

(setf (get birl_sim_examples::Go_To_PositionResponse :md5sum-) "d6d31042fd9aa19888cf6a8cca49baf3")
(setf (get birl_sim_examples::Go_To_PositionResponse :datatype-) "birl_sim_examples/Go_To_PositionResponse")
(setf (get birl_sim_examples::Go_To_PositionResponse :definition-)
      "
geometry_msgs/Pose pose


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


std_msgs/Bool ik_flag


std_msgs/Bool action_flag


================================================================================
MSG: std_msgs/Bool
")



(provide :birl_sim_examples/Go_To_Position "d6d31042fd9aa19888cf6a8cca49baf3")


