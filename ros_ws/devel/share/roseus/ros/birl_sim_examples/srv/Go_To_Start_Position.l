;; Auto-generated. Do not edit!


(when (boundp 'birl_sim_examples::Go_To_Start_Position)
  (if (not (find-package "BIRL_SIM_EXAMPLES"))
    (make-package "BIRL_SIM_EXAMPLES"))
  (shadow 'Go_To_Start_Position (find-package "BIRL_SIM_EXAMPLES")))
(unless (find-package "BIRL_SIM_EXAMPLES::GO_TO_START_POSITION")
  (make-package "BIRL_SIM_EXAMPLES::GO_TO_START_POSITION"))
(unless (find-package "BIRL_SIM_EXAMPLES::GO_TO_START_POSITIONREQUEST")
  (make-package "BIRL_SIM_EXAMPLES::GO_TO_START_POSITIONREQUEST"))
(unless (find-package "BIRL_SIM_EXAMPLES::GO_TO_START_POSITIONRESPONSE")
  (make-package "BIRL_SIM_EXAMPLES::GO_TO_START_POSITIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass birl_sim_examples::Go_To_Start_PositionRequest
  :super ros::object
  :slots (_start ))

(defmethod birl_sim_examples::Go_To_Start_PositionRequest
  (:init
   (&key
    ((:start __start) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _start __start)
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _start
    (send _start :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _start
       (send _start :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;;
   self)
  )

(defclass birl_sim_examples::Go_To_Start_PositionResponse
  :super ros::object
  :slots (_finish ))

(defmethod birl_sim_examples::Go_To_Start_PositionResponse
  (:init
   (&key
    ((:finish __finish) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _finish __finish)
   self)
  (:finish
   (&rest __finish)
   (if (keywordp (car __finish))
       (send* _finish __finish)
     (progn
       (if __finish (setq _finish (car __finish)))
       _finish)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _finish
    (send _finish :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _finish
       (send _finish :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _finish
     (send _finish :deserialize buf ptr-) (incf ptr- (send _finish :serialization-length))
   ;;
   self)
  )

(defclass birl_sim_examples::Go_To_Start_Position
  :super ros::object
  :slots ())

(setf (get birl_sim_examples::Go_To_Start_Position :md5sum-) "7c6de0715050e5b33da9989dcb725ea8")
(setf (get birl_sim_examples::Go_To_Start_Position :datatype-) "birl_sim_examples/Go_To_Start_Position")
(setf (get birl_sim_examples::Go_To_Start_Position :request) birl_sim_examples::Go_To_Start_PositionRequest)
(setf (get birl_sim_examples::Go_To_Start_Position :response) birl_sim_examples::Go_To_Start_PositionResponse)

(defmethod birl_sim_examples::Go_To_Start_PositionRequest
  (:response () (instance birl_sim_examples::Go_To_Start_PositionResponse :init)))

(setf (get birl_sim_examples::Go_To_Start_PositionRequest :md5sum-) "7c6de0715050e5b33da9989dcb725ea8")
(setf (get birl_sim_examples::Go_To_Start_PositionRequest :datatype-) "birl_sim_examples/Go_To_Start_PositionRequest")
(setf (get birl_sim_examples::Go_To_Start_PositionRequest :definition-)
      "
std_msgs/Bool start


================================================================================
MSG: std_msgs/Bool
---


std_msgs/Bool finish


================================================================================
MSG: std_msgs/Bool
")

(setf (get birl_sim_examples::Go_To_Start_PositionResponse :md5sum-) "7c6de0715050e5b33da9989dcb725ea8")
(setf (get birl_sim_examples::Go_To_Start_PositionResponse :datatype-) "birl_sim_examples/Go_To_Start_PositionResponse")
(setf (get birl_sim_examples::Go_To_Start_PositionResponse :definition-)
      "
std_msgs/Bool start


================================================================================
MSG: std_msgs/Bool
---


std_msgs/Bool finish


================================================================================
MSG: std_msgs/Bool
")



(provide :birl_sim_examples/Go_To_Start_Position "7c6de0715050e5b33da9989dcb725ea8")


