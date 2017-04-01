;; Auto-generated. Do not edit!


(when (boundp 'birl_sim_examples::Gripper_Move)
  (if (not (find-package "BIRL_SIM_EXAMPLES"))
    (make-package "BIRL_SIM_EXAMPLES"))
  (shadow 'Gripper_Move (find-package "BIRL_SIM_EXAMPLES")))
(unless (find-package "BIRL_SIM_EXAMPLES::GRIPPER_MOVE")
  (make-package "BIRL_SIM_EXAMPLES::GRIPPER_MOVE"))
(unless (find-package "BIRL_SIM_EXAMPLES::GRIPPER_MOVEREQUEST")
  (make-package "BIRL_SIM_EXAMPLES::GRIPPER_MOVEREQUEST"))
(unless (find-package "BIRL_SIM_EXAMPLES::GRIPPER_MOVERESPONSE")
  (make-package "BIRL_SIM_EXAMPLES::GRIPPER_MOVERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass birl_sim_examples::Gripper_MoveRequest
  :super ros::object
  :slots (_gripper_desired_flag ))

(defmethod birl_sim_examples::Gripper_MoveRequest
  (:init
   (&key
    ((:gripper_desired_flag __gripper_desired_flag) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _gripper_desired_flag __gripper_desired_flag)
   self)
  (:gripper_desired_flag
   (&rest __gripper_desired_flag)
   (if (keywordp (car __gripper_desired_flag))
       (send* _gripper_desired_flag __gripper_desired_flag)
     (progn
       (if __gripper_desired_flag (setq _gripper_desired_flag (car __gripper_desired_flag)))
       _gripper_desired_flag)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _gripper_desired_flag
    (send _gripper_desired_flag :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _gripper_desired_flag
       (send _gripper_desired_flag :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _gripper_desired_flag
     (send _gripper_desired_flag :deserialize buf ptr-) (incf ptr- (send _gripper_desired_flag :serialization-length))
   ;;
   self)
  )

(defclass birl_sim_examples::Gripper_MoveResponse
  :super ros::object
  :slots (_gripper_status_flag ))

(defmethod birl_sim_examples::Gripper_MoveResponse
  (:init
   (&key
    ((:gripper_status_flag __gripper_status_flag) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _gripper_status_flag __gripper_status_flag)
   self)
  (:gripper_status_flag
   (&rest __gripper_status_flag)
   (if (keywordp (car __gripper_status_flag))
       (send* _gripper_status_flag __gripper_status_flag)
     (progn
       (if __gripper_status_flag (setq _gripper_status_flag (car __gripper_status_flag)))
       _gripper_status_flag)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _gripper_status_flag
    (send _gripper_status_flag :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _gripper_status_flag
       (send _gripper_status_flag :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _gripper_status_flag
     (send _gripper_status_flag :deserialize buf ptr-) (incf ptr- (send _gripper_status_flag :serialization-length))
   ;;
   self)
  )

(defclass birl_sim_examples::Gripper_Move
  :super ros::object
  :slots ())

(setf (get birl_sim_examples::Gripper_Move :md5sum-) "16b119fdb1caa4ce59870b158835a73f")
(setf (get birl_sim_examples::Gripper_Move :datatype-) "birl_sim_examples/Gripper_Move")
(setf (get birl_sim_examples::Gripper_Move :request) birl_sim_examples::Gripper_MoveRequest)
(setf (get birl_sim_examples::Gripper_Move :response) birl_sim_examples::Gripper_MoveResponse)

(defmethod birl_sim_examples::Gripper_MoveRequest
  (:response () (instance birl_sim_examples::Gripper_MoveResponse :init)))

(setf (get birl_sim_examples::Gripper_MoveRequest :md5sum-) "16b119fdb1caa4ce59870b158835a73f")
(setf (get birl_sim_examples::Gripper_MoveRequest :datatype-) "birl_sim_examples/Gripper_MoveRequest")
(setf (get birl_sim_examples::Gripper_MoveRequest :definition-)
      "
std_msgs/Bool gripper_desired_flag


================================================================================
MSG: std_msgs/Bool
---



std_msgs/Bool gripper_status_flag


================================================================================
MSG: std_msgs/Bool
")

(setf (get birl_sim_examples::Gripper_MoveResponse :md5sum-) "16b119fdb1caa4ce59870b158835a73f")
(setf (get birl_sim_examples::Gripper_MoveResponse :datatype-) "birl_sim_examples/Gripper_MoveResponse")
(setf (get birl_sim_examples::Gripper_MoveResponse :definition-)
      "
std_msgs/Bool gripper_desired_flag


================================================================================
MSG: std_msgs/Bool
---



std_msgs/Bool gripper_status_flag


================================================================================
MSG: std_msgs/Bool
")



(provide :birl_sim_examples/Gripper_Move "16b119fdb1caa4ce59870b158835a73f")


