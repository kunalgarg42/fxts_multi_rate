; Auto-generated. Do not edit!


(cl:in-package segway_sim-msg)


;//! \htmlinclude highLevelBelief.msg.html

(cl:defclass <highLevelBelief> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (probMiss
    :reader probMiss
    :initarg :probMiss
    :type cl:float
    :initform 0.0)
   (bt
    :reader bt
    :initarg :bt
    :type (cl:vector cl:float)
   :initform (cl:make-array 40 :element-type 'cl:float :initial-element 0.0))
   (prob
    :reader prob
    :initarg :prob
    :type (cl:vector cl:float)
   :initform (cl:make-array 20 :element-type 'cl:float :initial-element 0.0))
   (targetPosDrone
    :reader targetPosDrone
    :initarg :targetPosDrone
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (targetPosSegway
    :reader targetPosSegway
    :initarg :targetPosSegway
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass highLevelBelief (<highLevelBelief>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <highLevelBelief>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'highLevelBelief)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name segway_sim-msg:<highLevelBelief> is deprecated: use segway_sim-msg:highLevelBelief instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <highLevelBelief>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:status-val is deprecated.  Use segway_sim-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <highLevelBelief>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:header-val is deprecated.  Use segway_sim-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'probMiss-val :lambda-list '(m))
(cl:defmethod probMiss-val ((m <highLevelBelief>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:probMiss-val is deprecated.  Use segway_sim-msg:probMiss instead.")
  (probMiss m))

(cl:ensure-generic-function 'bt-val :lambda-list '(m))
(cl:defmethod bt-val ((m <highLevelBelief>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:bt-val is deprecated.  Use segway_sim-msg:bt instead.")
  (bt m))

(cl:ensure-generic-function 'prob-val :lambda-list '(m))
(cl:defmethod prob-val ((m <highLevelBelief>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:prob-val is deprecated.  Use segway_sim-msg:prob instead.")
  (prob m))

(cl:ensure-generic-function 'targetPosDrone-val :lambda-list '(m))
(cl:defmethod targetPosDrone-val ((m <highLevelBelief>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:targetPosDrone-val is deprecated.  Use segway_sim-msg:targetPosDrone instead.")
  (targetPosDrone m))

(cl:ensure-generic-function 'targetPosSegway-val :lambda-list '(m))
(cl:defmethod targetPosSegway-val ((m <highLevelBelief>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:targetPosSegway-val is deprecated.  Use segway_sim-msg:targetPosSegway instead.")
  (targetPosSegway m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <highLevelBelief>) ostream)
  "Serializes a message object of type '<highLevelBelief>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'probMiss))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'bt))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'prob))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'targetPosDrone))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'targetPosSegway))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <highLevelBelief>) istream)
  "Deserializes a message object of type '<highLevelBelief>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probMiss) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'bt) (cl:make-array 40))
  (cl:let ((vals (cl:slot-value msg 'bt)))
    (cl:dotimes (i 40)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'prob) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'prob)))
    (cl:dotimes (i 20)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'targetPosDrone) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'targetPosDrone)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'targetPosSegway) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'targetPosSegway)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<highLevelBelief>)))
  "Returns string type for a message object of type '<highLevelBelief>"
  "segway_sim/highLevelBelief")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'highLevelBelief)))
  "Returns string type for a message object of type 'highLevelBelief"
  "segway_sim/highLevelBelief")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<highLevelBelief>)))
  "Returns md5sum for a message object of type '<highLevelBelief>"
  "40f96d12b2895b791f2b4d422fdc68d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'highLevelBelief)))
  "Returns md5sum for a message object of type 'highLevelBelief"
  "40f96d12b2895b791f2b4d422fdc68d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<highLevelBelief>)))
  "Returns full string definition for message of type '<highLevelBelief>"
  (cl:format cl:nil "uint8 status~%Header header~%float64 probMiss~%float64[40] bt~%float64[20] prob~%float64[2] targetPosDrone~%float64[2] targetPosSegway~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'highLevelBelief)))
  "Returns full string definition for message of type 'highLevelBelief"
  (cl:format cl:nil "uint8 status~%Header header~%float64 probMiss~%float64[40] bt~%float64[20] prob~%float64[2] targetPosDrone~%float64[2] targetPosSegway~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <highLevelBelief>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'bt) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'prob) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'targetPosDrone) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'targetPosSegway) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <highLevelBelief>))
  "Converts a ROS message object to a list"
  (cl:list 'highLevelBelief
    (cl:cons ':status (status msg))
    (cl:cons ':header (header msg))
    (cl:cons ':probMiss (probMiss msg))
    (cl:cons ':bt (bt msg))
    (cl:cons ':prob (prob msg))
    (cl:cons ':targetPosDrone (targetPosDrone msg))
    (cl:cons ':targetPosSegway (targetPosSegway msg))
))
