;; Auto-generated. Do not edit!


(when (boundp 'segway_sim::cmd)
  (if (not (find-package "SEGWAY_SIM"))
    (make-package "SEGWAY_SIM"))
  (shadow 'cmd (find-package "SEGWAY_SIM")))
(unless (find-package "SEGWAY_SIM::CMD")
  (make-package "SEGWAY_SIM::CMD"))

(in-package "ROS")
;;//! \htmlinclude cmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_sim::cmd
  :super ros::object
  :slots (_status _header _cmd ))

(defmethod segway_sim::cmd
  (:init
   (&key
    ((:status __status) 0)
    ((:header __header) (instance std_msgs::Header :init))
    ((:cmd __cmd) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _header __header)
   (setq _cmd __cmd)
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
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _cmd
    (* 8    (length _cmd)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _cmd
     (write-long (length _cmd) s)
     (dotimes (i (length _cmd))
       (sys::poke (elt _cmd i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _cmd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cmd (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cmd i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get segway_sim::cmd :md5sum-) "76a2e1e34eae4f29f2be2f791de0ac98")
(setf (get segway_sim::cmd :datatype-) "segway_sim/cmd")
(setf (get segway_sim::cmd :definition-)
      "uint8 status
Header header
float64[] cmd
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



(provide :segway_sim/cmd "76a2e1e34eae4f29f2be2f791de0ac98")


