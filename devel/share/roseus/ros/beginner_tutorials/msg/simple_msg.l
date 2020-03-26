;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::simple_msg)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'simple_msg (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::SIMPLE_MSG")
  (make-package "BEGINNER_TUTORIALS::SIMPLE_MSG"))

(in-package "ROS")
;;//! \htmlinclude simple_msg.msg.html


(defclass beginner_tutorials::simple_msg
  :super ros::object
  :slots (_id _data ))

(defmethod beginner_tutorials::simple_msg
  (:init
   (&key
    ((:id __id) "")
    ((:data __data) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _data (string __data))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get beginner_tutorials::simple_msg :md5sum-) "da5b7d90dd47232a62cc660c2261623c")
(setf (get beginner_tutorials::simple_msg :datatype-) "beginner_tutorials/simple_msg")
(setf (get beginner_tutorials::simple_msg :definition-)
      "string id
string data

")



(provide :beginner_tutorials/simple_msg "da5b7d90dd47232a62cc660c2261623c")


