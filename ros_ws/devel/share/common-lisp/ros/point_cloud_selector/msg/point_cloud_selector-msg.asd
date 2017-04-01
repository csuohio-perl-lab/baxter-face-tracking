
(cl:in-package :asdf)

(defsystem "point_cloud_selector-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "CylinderProperties" :depends-on ("_package_CylinderProperties"))
    (:file "_package_CylinderProperties" :depends-on ("_package"))
  ))