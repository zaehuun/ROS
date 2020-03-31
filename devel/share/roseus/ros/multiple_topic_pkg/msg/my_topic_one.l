;; Auto-generated. Do not edit!


(when (boundp 'multiple_topic_pkg::my_topic_one)
  (if (not (find-package "MULTIPLE_TOPIC_PKG"))
    (make-package "MULTIPLE_TOPIC_PKG"))
  (shadow 'my_topic_one (find-package "MULTIPLE_TOPIC_PKG")))
(unless (find-package "MULTIPLE_TOPIC_PKG::MY_TOPIC_ONE")
  (make-package "MULTIPLE_TOPIC_PKG::MY_TOPIC_ONE"))

(in-package "ROS")
;;//! \htmlinclude my_topic_one.msg.html


(defclass multiple_topic_pkg::my_topic_one
  :super ros::object
  :slots (_data ))

(defmethod multiple_topic_pkg::my_topic_one
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get multiple_topic_pkg::my_topic_one :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get multiple_topic_pkg::my_topic_one :datatype-) "multiple_topic_pkg/my_topic_one")
(setf (get multiple_topic_pkg::my_topic_one :definition-)
      "int32 data

")



(provide :multiple_topic_pkg/my_topic_one "da5909fbe378aeaf85e547e830cc1bb7")


