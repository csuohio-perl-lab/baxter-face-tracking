
(cl:in-package :asdf)

(defsystem "birl_sim_examples-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Add_Gazebo_Model" :depends-on ("_package_Add_Gazebo_Model"))
    (:file "_package_Add_Gazebo_Model" :depends-on ("_package"))
    (:file "Gripper_Move" :depends-on ("_package_Gripper_Move"))
    (:file "_package_Gripper_Move" :depends-on ("_package"))
    (:file "Go_To_Start_Position" :depends-on ("_package_Go_To_Start_Position"))
    (:file "_package_Go_To_Start_Position" :depends-on ("_package"))
    (:file "Go_To_Position" :depends-on ("_package_Go_To_Position"))
    (:file "_package_Go_To_Position" :depends-on ("_package"))
  ))