; Auto-generated. Do not edit!


(cl:in-package segway_sim-srv)


;//! \htmlinclude ui-request.msg.html

(cl:defclass <ui-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ui-request (<ui-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ui-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ui-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name segway_sim-srv:<ui-request> is deprecated: use segway_sim-srv:ui-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <ui-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-srv:cmd-val is deprecated.  Use segway_sim-srv:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ui-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-srv:data-val is deprecated.  Use segway_sim-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ui-request>) ostream)
  "Serializes a message object of type '<ui-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ui-request>) istream)
  "Deserializes a message object of type '<ui-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ui-request>)))
  "Returns string type for a service object of type '<ui-request>"
  "segway_sim/uiRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ui-request)))
  "Returns string type for a service object of type 'ui-request"
  "segway_sim/uiRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ui-request>)))
  "Returns md5sum for a message object of type '<ui-request>"
  "36efdb07e9aa3bd2015647364dd425d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ui-request)))
  "Returns md5sum for a message object of type 'ui-request"
  "36efdb07e9aa3bd2015647364dd425d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ui-request>)))
  "Returns full string definition for message of type '<ui-request>"
  (cl:format cl:nil "uint8 cmd~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ui-request)))
  "Returns full string definition for message of type 'ui-request"
  (cl:format cl:nil "uint8 cmd~%float64[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ui-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ui-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ui-request
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude ui-response.msg.html

(cl:defclass <ui-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ui-response (<ui-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ui-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ui-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name segway_sim-srv:<ui-response> is deprecated: use segway_sim-srv:ui-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ui-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader segway_sim-srv:result-val is deprecated.  Use segway_sim-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ui-response>) ostream)
  "Serializes a message object of type '<ui-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ui-response>) istream)
  "Deserializes a message object of type '<ui-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ui-response>)))
  "Returns string type for a service object of type '<ui-response>"
  "segway_sim/uiResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ui-response)))
  "Returns string type for a service object of type 'ui-response"
  "segway_sim/uiResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ui-response>)))
  "Returns md5sum for a message object of type '<ui-response>"
  "36efdb07e9aa3bd2015647364dd425d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ui-response)))
  "Returns md5sum for a message object of type 'ui-response"
  "36efdb07e9aa3bd2015647364dd425d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ui-response>)))
  "Returns full string definition for message of type '<ui-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ui-response)))
  "Returns full string definition for message of type 'ui-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ui-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ui-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ui-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ui)))
  'ui-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ui)))
  'ui-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ui)))
  "Returns string type for a service object of type '<ui>"
  "segway_sim/ui")