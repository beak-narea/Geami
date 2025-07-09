
(cl:in-package :asdf)

(defsystem "md-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "md_robot_msg1" :depends-on ("_package_md_robot_msg1"))
    (:file "_package_md_robot_msg1" :depends-on ("_package"))
    (:file "md_robot_msg2" :depends-on ("_package_md_robot_msg2"))
    (:file "_package_md_robot_msg2" :depends-on ("_package"))
  ))