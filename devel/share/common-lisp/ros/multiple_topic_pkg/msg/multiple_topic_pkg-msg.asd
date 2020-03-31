
(cl:in-package :asdf)

(defsystem "multiple_topic_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "my_topic_one" :depends-on ("_package_my_topic_one"))
    (:file "_package_my_topic_one" :depends-on ("_package"))
    (:file "my_topic_two" :depends-on ("_package_my_topic_two"))
    (:file "_package_my_topic_two" :depends-on ("_package"))
  ))