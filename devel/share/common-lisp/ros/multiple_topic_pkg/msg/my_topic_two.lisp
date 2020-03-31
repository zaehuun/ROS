; Auto-generated. Do not edit!


(cl:in-package multiple_topic_pkg-msg)


;//! \htmlinclude my_topic_two.msg.html

(cl:defclass <my_topic_two> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass my_topic_two (<my_topic_two>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_topic_two>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_topic_two)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multiple_topic_pkg-msg:<my_topic_two> is deprecated: use multiple_topic_pkg-msg:my_topic_two instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <my_topic_two>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multiple_topic_pkg-msg:data-val is deprecated.  Use multiple_topic_pkg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_topic_two>) ostream)
  "Serializes a message object of type '<my_topic_two>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_topic_two>) istream)
  "Deserializes a message object of type '<my_topic_two>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_topic_two>)))
  "Returns string type for a message object of type '<my_topic_two>"
  "multiple_topic_pkg/my_topic_two")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_topic_two)))
  "Returns string type for a message object of type 'my_topic_two"
  "multiple_topic_pkg/my_topic_two")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_topic_two>)))
  "Returns md5sum for a message object of type '<my_topic_two>"
  "fdb28210bfa9d7c91146260178d9a584")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_topic_two)))
  "Returns md5sum for a message object of type 'my_topic_two"
  "fdb28210bfa9d7c91146260178d9a584")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_topic_two>)))
  "Returns full string definition for message of type '<my_topic_two>"
  (cl:format cl:nil "float64 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_topic_two)))
  "Returns full string definition for message of type 'my_topic_two"
  (cl:format cl:nil "float64 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_topic_two>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_topic_two>))
  "Converts a ROS message object to a list"
  (cl:list 'my_topic_two
    (cl:cons ':data (data msg))
))
