;; Auto-generated. Do not edit!


(when (boundp 'marker_visualizer_msgs::marker_info)
  (if (not (find-package "MARKER_VISUALIZER_MSGS"))
    (make-package "MARKER_VISUALIZER_MSGS"))
  (shadow 'marker_info (find-package "MARKER_VISUALIZER_MSGS")))
(unless (find-package "MARKER_VISUALIZER_MSGS::MARKER_INFO")
  (make-package "MARKER_VISUALIZER_MSGS::MARKER_INFO"))

(in-package "ROS")
;;//! \htmlinclude marker_info.msg.html


(defclass marker_visualizer_msgs::marker_info
  :super ros::object
  :slots (_shape _x _y ))

(defmethod marker_visualizer_msgs::marker_info
  (:init
   (&key
    ((:shape __shape) "")
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _shape (string __shape))
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; string _shape
    4 (length _shape)
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _shape
       (write-long (length _shape) s) (princ _shape s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _shape
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shape (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get marker_visualizer_msgs::marker_info :md5sum-) "2ecc62f7666cd773c0264730a6c13291")
(setf (get marker_visualizer_msgs::marker_info :datatype-) "marker_visualizer_msgs/marker_info")
(setf (get marker_visualizer_msgs::marker_info :definition-)
      "string shape
int32 x
int32 y

")



(provide :marker_visualizer_msgs/marker_info "2ecc62f7666cd773c0264730a6c13291")


