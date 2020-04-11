
(cl:in-package :asdf)

(defsystem "boundingbox_visualizer_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "myPose" :depends-on ("_package_myPose"))
    (:file "_package_myPose" :depends-on ("_package"))
  ))