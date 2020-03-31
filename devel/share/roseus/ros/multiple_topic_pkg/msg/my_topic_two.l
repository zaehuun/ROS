;; Auto-generated. Do not edit!


(when (boundp 'multiple_topic_pkg::my_topic_two)
  (if (not (find-package "MULTIPLE_TOPIC_PKG"))
    (make-package "MULTIPLE_TOPIC_PKG"))
  (shadow 'my_topic_two (find-package "MULTIPLE_TOPIC_PKG")))
(unless (find-package "MULTIPLE_TOPIC_PKG::MY_TOPIC_TWO")
  (make-package "MULTIPLE_TOPIC_PKG::MY_TOPIC_TWO"))

(in-package "ROS")
;;//! \htmlinclude my_topic_two.msg.html


(defclass multiple_topic_pkg::my_topic_two
  :super ros::object
  :slots (_data ))

(defmethod multiple_topic_pkg::my_topic_two
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get multiple_topic_pkg::my_topic_two :md5sum-) "fdb28210bfa9d7c91146260178d9a584")
(setf (get multiple_topic_pkg::my_topic_two :datatype-) "multiple_topic_pkg/my_topic_two")
(setf (get multiple_topic_pkg::my_topic_two :definition-)
      "float64 data

")



(provide :multiple_topic_pkg/my_topic_two "fdb28210bfa9d7c91146260178d9a584")


