; Auto-generated. Do not edit!


(cl:in-package marker_visualizer_msgs-msg)


;//! \htmlinclude marker_info.msg.html

(cl:defclass <marker_info> (roslisp-msg-protocol:ros-message)
  ((shape
    :reader shape
    :initarg :shape
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass marker_info (<marker_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <marker_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'marker_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marker_visualizer_msgs-msg:<marker_info> is deprecated: use marker_visualizer_msgs-msg:marker_info instead.")))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <marker_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_visualizer_msgs-msg:shape-val is deprecated.  Use marker_visualizer_msgs-msg:shape instead.")
  (shape m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <marker_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_visualizer_msgs-msg:x-val is deprecated.  Use marker_visualizer_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <marker_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marker_visualizer_msgs-msg:y-val is deprecated.  Use marker_visualizer_msgs-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <marker_info>) ostream)
  "Serializes a message object of type '<marker_info>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'shape))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'shape))
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <marker_info>) istream)
  "Deserializes a message object of type '<marker_info>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shape) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'shape) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<marker_info>)))
  "Returns string type for a message object of type '<marker_info>"
  "marker_visualizer_msgs/marker_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'marker_info)))
  "Returns string type for a message object of type 'marker_info"
  "marker_visualizer_msgs/marker_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<marker_info>)))
  "Returns md5sum for a message object of type '<marker_info>"
  "2ecc62f7666cd773c0264730a6c13291")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'marker_info)))
  "Returns md5sum for a message object of type 'marker_info"
  "2ecc62f7666cd773c0264730a6c13291")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<marker_info>)))
  "Returns full string definition for message of type '<marker_info>"
  (cl:format cl:nil "string shape~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'marker_info)))
  "Returns full string definition for message of type 'marker_info"
  (cl:format cl:nil "string shape~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <marker_info>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'shape))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <marker_info>))
  "Converts a ROS message object to a list"
  (cl:list 'marker_info
    (cl:cons ':shape (shape msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
