; Auto-generated. Do not edit!


(cl:in-package example_smach-srv)


;//! \htmlinclude AddFourInts-request.msg.html

(cl:defclass <AddFourInts-request> (roslisp-msg-protocol:ros-message)
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
    :initform 0)
   (d
    :reader d
    :initarg :d
    :type cl:integer
    :initform 0))
)

(cl:defclass AddFourInts-request (<AddFourInts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddFourInts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddFourInts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name example_smach-srv:<AddFourInts-request> is deprecated: use example_smach-srv:AddFourInts-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <AddFourInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_smach-srv:a-val is deprecated.  Use example_smach-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <AddFourInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_smach-srv:b-val is deprecated.  Use example_smach-srv:b instead.")
  (b m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <AddFourInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_smach-srv:c-val is deprecated.  Use example_smach-srv:c instead.")
  (c m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <AddFourInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_smach-srv:d-val is deprecated.  Use example_smach-srv:d instead.")
  (d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddFourInts-request>) ostream)
  "Serializes a message object of type '<AddFourInts-request>"
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
  (cl:let* ((signed (cl:slot-value msg 'd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddFourInts-request>) istream)
  "Deserializes a message object of type '<AddFourInts-request>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'd) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddFourInts-request>)))
  "Returns string type for a service object of type '<AddFourInts-request>"
  "example_smach/AddFourIntsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddFourInts-request)))
  "Returns string type for a service object of type 'AddFourInts-request"
  "example_smach/AddFourIntsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddFourInts-request>)))
  "Returns md5sum for a message object of type '<AddFourInts-request>"
  "0044d017eea346133cfe16eb46e7d664")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddFourInts-request)))
  "Returns md5sum for a message object of type 'AddFourInts-request"
  "0044d017eea346133cfe16eb46e7d664")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddFourInts-request>)))
  "Returns full string definition for message of type '<AddFourInts-request>"
  (cl:format cl:nil "int64 a~%int64 b~%int64 c~%int64 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddFourInts-request)))
  "Returns full string definition for message of type 'AddFourInts-request"
  (cl:format cl:nil "int64 a~%int64 b~%int64 c~%int64 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddFourInts-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddFourInts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddFourInts-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':c (c msg))
    (cl:cons ':d (d msg))
))
;//! \htmlinclude AddFourInts-response.msg.html

(cl:defclass <AddFourInts-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass AddFourInts-response (<AddFourInts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddFourInts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddFourInts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name example_smach-srv:<AddFourInts-response> is deprecated: use example_smach-srv:AddFourInts-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <AddFourInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_smach-srv:sum-val is deprecated.  Use example_smach-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddFourInts-response>) ostream)
  "Serializes a message object of type '<AddFourInts-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddFourInts-response>) istream)
  "Deserializes a message object of type '<AddFourInts-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddFourInts-response>)))
  "Returns string type for a service object of type '<AddFourInts-response>"
  "example_smach/AddFourIntsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddFourInts-response)))
  "Returns string type for a service object of type 'AddFourInts-response"
  "example_smach/AddFourIntsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddFourInts-response>)))
  "Returns md5sum for a message object of type '<AddFourInts-response>"
  "0044d017eea346133cfe16eb46e7d664")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddFourInts-response)))
  "Returns md5sum for a message object of type 'AddFourInts-response"
  "0044d017eea346133cfe16eb46e7d664")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddFourInts-response>)))
  "Returns full string definition for message of type '<AddFourInts-response>"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddFourInts-response)))
  "Returns full string definition for message of type 'AddFourInts-response"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddFourInts-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddFourInts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddFourInts-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddFourInts)))
  'AddFourInts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddFourInts)))
  'AddFourInts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddFourInts)))
  "Returns string type for a service object of type '<AddFourInts>"
  "example_smach/AddFourInts")