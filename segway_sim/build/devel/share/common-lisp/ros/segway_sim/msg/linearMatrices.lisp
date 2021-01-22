; Auto-generated. Do not edit!


(cl:in-package segway_sim-msg)


;//! \htmlinclude linearMatrices.msg.html

(cl:defclass <linearMatrices> (roslisp-msg-protocol:ros-message)
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
   (Alinear
    :reader Alinear
    :initarg :Alinear
    :type (cl:vector cl:float)
   :initform (cl:make-array 49 :element-type 'cl:float :initial-element 0.0))
   (Blinear
    :reader Blinear
    :initarg :Blinear
    :type (cl:vector cl:float)
   :initform (cl:make-array 14 :element-type 'cl:float :initial-element 0.0))
   (Clinear
    :reader Clinear
    :initarg :Clinear
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass linearMatrices (<linearMatrices>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <linearMatrices>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'linearMatrices)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name segway_sim-msg:<linearMatrices> is deprecated: use segway_sim-msg:linearMatrices instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <linearMatrices>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:status-val is deprecated.  Use segway_sim-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <linearMatrices>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:header-val is deprecated.  Use segway_sim-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Alinear-val :lambda-list '(m))
(cl:defmethod Alinear-val ((m <linearMatrices>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:Alinear-val is deprecated.  Use segway_sim-msg:Alinear instead.")
  (Alinear m))

(cl:ensure-generic-function 'Blinear-val :lambda-list '(m))
(cl:defmethod Blinear-val ((m <linearMatrices>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:Blinear-val is deprecated.  Use segway_sim-msg:Blinear instead.")
  (Blinear m))

(cl:ensure-generic-function 'Clinear-val :lambda-list '(m))
(cl:defmethod Clinear-val ((m <linearMatrices>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:Clinear-val is deprecated.  Use segway_sim-msg:Clinear instead.")
  (Clinear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <linearMatrices>) ostream)
  "Serializes a message object of type '<linearMatrices>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'Alinear))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'Blinear))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'Clinear))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <linearMatrices>) istream)
  "Deserializes a message object of type '<linearMatrices>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'Alinear) (cl:make-array 49))
  (cl:let ((vals (cl:slot-value msg 'Alinear)))
    (cl:dotimes (i 49)
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
  (cl:setf (cl:slot-value msg 'Blinear) (cl:make-array 14))
  (cl:let ((vals (cl:slot-value msg 'Blinear)))
    (cl:dotimes (i 14)
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
  (cl:setf (cl:slot-value msg 'Clinear) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'Clinear)))
    (cl:dotimes (i 7)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<linearMatrices>)))
  "Returns string type for a message object of type '<linearMatrices>"
  "segway_sim/linearMatrices")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'linearMatrices)))
  "Returns string type for a message object of type 'linearMatrices"
  "segway_sim/linearMatrices")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<linearMatrices>)))
  "Returns md5sum for a message object of type '<linearMatrices>"
  "ad477ebebaec390b562aab51cae5a720")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'linearMatrices)))
  "Returns md5sum for a message object of type 'linearMatrices"
  "ad477ebebaec390b562aab51cae5a720")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<linearMatrices>)))
  "Returns full string definition for message of type '<linearMatrices>"
  (cl:format cl:nil "uint8 status~%Header header~%float64[49] Alinear~%float64[14] Blinear~%float64[7] Clinear~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'linearMatrices)))
  "Returns full string definition for message of type 'linearMatrices"
  (cl:format cl:nil "uint8 status~%Header header~%float64[49] Alinear~%float64[14] Blinear~%float64[7] Clinear~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <linearMatrices>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'Alinear) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'Blinear) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'Clinear) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <linearMatrices>))
  "Converts a ROS message object to a list"
  (cl:list 'linearMatrices
    (cl:cons ':status (status msg))
    (cl:cons ':header (header msg))
    (cl:cons ':Alinear (Alinear msg))
    (cl:cons ':Blinear (Blinear msg))
    (cl:cons ':Clinear (Clinear msg))
))
