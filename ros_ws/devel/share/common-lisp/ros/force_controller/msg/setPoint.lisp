; Auto-generated. Do not edit!


(cl:in-package force_controller-msg)


;//! \htmlinclude setPoint.msg.html

(cl:defclass <setPoint> (roslisp-msg-protocol:ros-message)
  ((num_ctrls
    :reader num_ctrls
    :initarg :num_ctrls
    :type cl:integer
    :initform 0)
   (domType
    :reader domType
    :initarg :domType
    :type cl:string
    :initform "")
   (domDes
    :reader domDes
    :initarg :domDes
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (domGains
    :reader domGains
    :initarg :domGains
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (subType
    :reader subType
    :initarg :subType
    :type cl:string
    :initform "")
   (subDes
    :reader subDes
    :initarg :subDes
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (subGains
    :reader subGains
    :initarg :subGains
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3))))
)

(cl:defclass setPoint (<setPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name force_controller-msg:<setPoint> is deprecated: use force_controller-msg:setPoint instead.")))

(cl:ensure-generic-function 'num_ctrls-val :lambda-list '(m))
(cl:defmethod num_ctrls-val ((m <setPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader force_controller-msg:num_ctrls-val is deprecated.  Use force_controller-msg:num_ctrls instead.")
  (num_ctrls m))

(cl:ensure-generic-function 'domType-val :lambda-list '(m))
(cl:defmethod domType-val ((m <setPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader force_controller-msg:domType-val is deprecated.  Use force_controller-msg:domType instead.")
  (domType m))

(cl:ensure-generic-function 'domDes-val :lambda-list '(m))
(cl:defmethod domDes-val ((m <setPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader force_controller-msg:domDes-val is deprecated.  Use force_controller-msg:domDes instead.")
  (domDes m))

(cl:ensure-generic-function 'domGains-val :lambda-list '(m))
(cl:defmethod domGains-val ((m <setPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader force_controller-msg:domGains-val is deprecated.  Use force_controller-msg:domGains instead.")
  (domGains m))

(cl:ensure-generic-function 'subType-val :lambda-list '(m))
(cl:defmethod subType-val ((m <setPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader force_controller-msg:subType-val is deprecated.  Use force_controller-msg:subType instead.")
  (subType m))

(cl:ensure-generic-function 'subDes-val :lambda-list '(m))
(cl:defmethod subDes-val ((m <setPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader force_controller-msg:subDes-val is deprecated.  Use force_controller-msg:subDes instead.")
  (subDes m))

(cl:ensure-generic-function 'subGains-val :lambda-list '(m))
(cl:defmethod subGains-val ((m <setPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader force_controller-msg:subGains-val is deprecated.  Use force_controller-msg:subGains instead.")
  (subGains m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setPoint>) ostream)
  "Serializes a message object of type '<setPoint>"
  (cl:let* ((signed (cl:slot-value msg 'num_ctrls)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'domType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'domType))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'domDes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'domDes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'domGains))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'domGains))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subType))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'subDes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'subDes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'subGains))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'subGains))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setPoint>) istream)
  "Deserializes a message object of type '<setPoint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_ctrls) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'domType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'domType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'domDes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'domDes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'domGains) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'domGains)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'subDes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'subDes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'subGains) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'subGains)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setPoint>)))
  "Returns string type for a message object of type '<setPoint>"
  "force_controller/setPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setPoint)))
  "Returns string type for a message object of type 'setPoint"
  "force_controller/setPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setPoint>)))
  "Returns md5sum for a message object of type '<setPoint>"
  "cda3fb843d195f1bf40697fef6470230")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setPoint)))
  "Returns md5sum for a message object of type 'setPoint"
  "cda3fb843d195f1bf40697fef6470230")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setPoint>)))
  "Returns full string definition for message of type '<setPoint>"
  (cl:format cl:nil "#Number of Controllers~%int32 num_ctrls~%~%# Type of dominant controller~%string domType~%~%# Desired force/moment (3D) for dominant controller~%geometry_msgs/Vector3[] domDes~%~%# Gains force/moment (3D) for dominant controller~%geometry_msgs/Vector3[] domGains~%~%# Type of subordinate controller~%string subType~%~%# Desired force/moment (3D) for subordinate controller~%geometry_msgs/Vector3[] subDes~%~%# Gains force/moment (3D) for subordinate controller~%geometry_msgs/Vector3[] subGains~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setPoint)))
  "Returns full string definition for message of type 'setPoint"
  (cl:format cl:nil "#Number of Controllers~%int32 num_ctrls~%~%# Type of dominant controller~%string domType~%~%# Desired force/moment (3D) for dominant controller~%geometry_msgs/Vector3[] domDes~%~%# Gains force/moment (3D) for dominant controller~%geometry_msgs/Vector3[] domGains~%~%# Type of subordinate controller~%string subType~%~%# Desired force/moment (3D) for subordinate controller~%geometry_msgs/Vector3[] subDes~%~%# Gains force/moment (3D) for subordinate controller~%geometry_msgs/Vector3[] subGains~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setPoint>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'domType))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'domDes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'domGains) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'subType))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'subDes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'subGains) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'setPoint
    (cl:cons ':num_ctrls (num_ctrls msg))
    (cl:cons ':domType (domType msg))
    (cl:cons ':domDes (domDes msg))
    (cl:cons ':domGains (domGains msg))
    (cl:cons ':subType (subType msg))
    (cl:cons ':subDes (subDes msg))
    (cl:cons ':subGains (subGains msg))
))
