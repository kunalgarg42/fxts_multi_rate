; Auto-generated. Do not edit!


(cl:in-package segway_sim-msg)


;//! \htmlinclude cmdDrone.msg.html

(cl:defclass <cmdDrone> (roslisp-msg-protocol:ros-message)
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
   (vDes
    :reader vDes
    :initarg :vDes
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass cmdDrone (<cmdDrone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cmdDrone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cmdDrone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name segway_sim-msg:<cmdDrone> is deprecated: use segway_sim-msg:cmdDrone instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <cmdDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:status-val is deprecated.  Use segway_sim-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <cmdDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:header-val is deprecated.  Use segway_sim-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vDes-val :lambda-list '(m))
(cl:defmethod vDes-val ((m <cmdDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-msg:vDes-val is deprecated.  Use segway_sim-msg:vDes instead.")
  (vDes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cmdDrone>) ostream)
  "Serializes a message object of type '<cmdDrone>"
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
   (cl:slot-value msg 'vDes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cmdDrone>) istream)
  "Deserializes a message object of type '<cmdDrone>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'vDes) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'vDes)))
    (cl:dotimes (i 4)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cmdDrone>)))
  "Returns string type for a message object of type '<cmdDrone>"
  "segway_sim/cmdDrone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cmdDrone)))
  "Returns string type for a message object of type 'cmdDrone"
  "segway_sim/cmdDrone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cmdDrone>)))
  "Returns md5sum for a message object of type '<cmdDrone>"
  "23eab109e8c570619e9097c96ac7643c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cmdDrone)))
  "Returns md5sum for a message object of type 'cmdDrone"
  "23eab109e8c570619e9097c96ac7643c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cmdDrone>)))
  "Returns full string definition for message of type '<cmdDrone>"
  (cl:format cl:nil "uint8 status~%Header header~%float64[4] vDes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cmdDrone)))
  "Returns full string definition for message of type 'cmdDrone"
  (cl:format cl:nil "uint8 status~%Header header~%float64[4] vDes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cmdDrone>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'vDes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cmdDrone>))
  "Converts a ROS message object to a list"
  (cl:list 'cmdDrone
    (cl:cons ':status (status msg))
    (cl:cons ':header (header msg))
    (cl:cons ':vDes (vDes msg))
))
