
(cl:in-package :asdf)

(defsystem "marker_visualizer_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "marker_info" :depends-on ("_package_marker_info"))
    (:file "_package_marker_info" :depends-on ("_package"))
  ))