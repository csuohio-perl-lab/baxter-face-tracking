; Auto-generated. Do not edit!


(cl:in-package example_smach-srv)


;//! \htmlinclude AddThreeInts-request.msg.html

(cl:defclass <AddThreeInts-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0)
   (c
    :reader c
    :initarg :c
    :type cl:integer
    :initform 0))
)

(cl:defclass AddThreeInts-request (<AddThreeInts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddThreeInts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddThreeInts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name example_smach-srv:<AddThreeInts-request> is deprecated: use example_smach-srv:AddThreeInts-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <AddThreeInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_smach-srv:a-val is deprecated.  Use example_smach-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <AddThreeInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_smach-srv:b-val is deprecated.  Use example_smach-srv:b instead.")
  (b m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <AddThreeInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_smach-srv:c-val is deprecated.  Use example_smach-srv:c instead.")
  (c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddThreeInts-request>) ostream)
  "Serializes a message object of type '<AddThreeInts-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'c)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddThreeInts-request>) istream)
  "Deserializes a message object of type '<AddThreeInts-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'c) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddThreeInts-request>)))
  "Returns string type for a service object of type '<AddThreeInts-request>"
  "example_smach/AddThreeIntsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddThreeInts-request)))
  "Returns string type for a service object of type 'AddThreeInts-request"
  "example_smach/AddThreeIntsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddThreeInts-request>)))
  "Returns md5sum for a message object of type '<AddThreeInts-request>"
  "c9caccfcada3b6a45d8528a23bccaf1a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddThreeInts-request)))
  "Returns md5sum for a message object of type 'AddThreeInts-request"
  "c9caccfcada3b6a45d8528a23bccaf1a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddThreeInts-request>)))
  "Returns full string definition for message of type '<AddThreeInts-request>"
  (cl:format cl:nil "int64 a~%int64 b~%int64 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddThreeInts-request)))
  "Returns full string definition for message of type 'AddThreeInts-request"
  (cl:format cl:nil "int64 a~%int64 b~%int64 c~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddThreeInts-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddThreeInts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddThreeInts-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':c (c msg))
))
;//! \htmlinclude AddThreeInts-response.msg.html

(cl:defclass <AddThreeInts-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass AddThreeInts-response (<AddThreeInts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddThreeInts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddThreeInts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name example_smach-srv:<AddThreeInts-response> is deprecated: use example_smach-srv:AddThreeInts-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <AddThreeInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_smach-srv:sum-val is deprecated.  Use example_smach-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddThreeInts-response>) ostream)
  "Serializes a message object of type '<AddThreeInts-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddThreeInts-response>) istream)
  "Deserializes a message object of type '<AddThreeInts-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddThreeInts-response>)))
  "Returns string type for a service object of type '<AddThreeInts-response>"
  "example_smach/AddThreeIntsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddThreeInts-response)))
  "Returns string type for a service object of type 'AddThreeInts-response"
  "example_smach/AddThreeIntsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddThreeInts-response>)))
  "Returns md5sum for a message object of type '<AddThreeInts-response>"
  "c9caccfcada3b6a45d8528a23bccaf1a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddThreeInts-response)))
  "Returns md5sum for a message object of type 'AddThreeInts-response"
  "c9caccfcada3b6a45d8528a23bccaf1a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddThreeInts-response>)))
  "Returns full string definition for message of type '<AddThreeInts-response>"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddThreeInts-response)))
  "Returns full string definition for message of type 'AddThreeInts-response"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddThreeInts-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddThreeInts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddThreeInts-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddThreeInts)))
  'AddThreeInts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddThreeInts)))
  'AddThreeInts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddThreeInts)))
  "Returns string type for a service object of type '<AddThreeInts>"
  "example_smach/AddThreeInts")