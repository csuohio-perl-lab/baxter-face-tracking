
(cl:in-package :asdf)

(defsystem "point_cloud_selector-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SelectCylinder" :depends-on ("_package_SelectCylinder"))
    (:file "_package_SelectCylinder" :depends-on ("_package"))
    (:file "SetCylinderProperties" :depends-on ("_package_SetCylinderProperties"))
    (:file "_package_SetCylinderProperties" :depends-on ("_package"))
  ))