;; Auto-generated. Do not edit!


(when (boundp 'segway_sim::input)
  (if (not (find-package "SEGWAY_SIM"))
    (make-package "SEGWAY_SIM"))
  (shadow 'input (find-package "SEGWAY_SIM")))
(unless (find-package "SEGWAY_SIM::INPUT")
  (make-package "SEGWAY_SIM::INPUT"))

(in-package "ROS")
;;//! \htmlinclude input.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_sim::input
  :super ros::object
  :slots (_status _header _inputVec ))

(defmethod segway_sim::input
  (:init
   (&key
    ((:status __status) 0)
    ((:header __header) (instance std_msgs::Header :init))
    ((:inputVec __inputVec) (make-array 2 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _header __header)
   (setq _inputVec __inputVec)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:inputVec
   (&optional __inputVec)
   (if __inputVec (setq _inputVec __inputVec)) _inputVec)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[2] _inputVec
    (* 8    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[2] _inputVec
     (dotimes (i 2)
       (sys::poke (elt _inputVec i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[2] _inputVec
   (dotimes (i (length _inputVec))
     (setf (elt _inputVec i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get segway_sim::input :md5sum-) "7dea47cc5205abdf3e669c9357855425")
(setf (get segway_sim::input :datatype-) "segway_sim/input")
(setf (get segway_sim::input :definition-)
      "uint8 status
Header header
float64[2] inputVec
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :segway_sim/input "7dea47cc5205abdf3e669c9357855425")


