
(cl:in-package :asdf)

(defsystem "example_smach-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddFourInts" :depends-on ("_package_AddFourInts"))
    (:file "_package_AddFourInts" :depends-on ("_package"))
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "AddThreeInts" :depends-on ("_package_AddThreeInts"))
    (:file "_package_AddThreeInts" :depends-on ("_package"))
  ))