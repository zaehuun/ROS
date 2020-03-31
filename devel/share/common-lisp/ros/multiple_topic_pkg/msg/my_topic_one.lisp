; Auto-generated. Do not edit!


(cl:in-package multiple_topic_pkg-msg)


;//! \htmlinclude my_topic_one.msg.html

(cl:defclass <my_topic_one> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass my_topic_one (<my_topic_one>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_topic_one>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_topic_one)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multiple_topic_pkg-msg:<my_topic_one> is deprecated: use multiple_topic_pkg-msg:my_topic_one instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <my_topic_one>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multiple_topic_pkg-msg:data-val is deprecated.  Use multiple_topic_pkg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_topic_one>) ostream)
  "Serializes a message object of type '<my_topic_one>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_topic_one>) istream)
  "Deserializes a message object of type '<my_topic_one>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_topic_one>)))
  "Returns string type for a message object of type '<my_topic_one>"
  "multiple_topic_pkg/my_topic_one")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_topic_one)))
  "Returns string type for a message object of type 'my_topic_one"
  "multiple_topic_pkg/my_topic_one")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_topic_one>)))
  "Returns md5sum for a message object of type '<my_topic_one>"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_topic_one)))
  "Returns md5sum for a message object of type 'my_topic_one"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_topic_one>)))
  "Returns full string definition for message of type '<my_topic_one>"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_topic_one)))
  "Returns full string definition for message of type 'my_topic_one"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_topic_one>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_topic_one>))
  "Converts a ROS message object to a list"
  (cl:list 'my_topic_one
    (cl:cons ':data (data msg))
))
