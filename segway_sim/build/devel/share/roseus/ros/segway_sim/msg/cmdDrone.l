;; Auto-generated. Do not edit!


(when (boundp 'segway_sim::cmdDrone)
  (if (not (find-package "SEGWAY_SIM"))
    (make-package "SEGWAY_SIM"))
  (shadow 'cmdDrone (find-package "SEGWAY_SIM")))
(unless (find-package "SEGWAY_SIM::CMDDRONE")
  (make-package "SEGWAY_SIM::CMDDRONE"))

(in-package "ROS")
;;//! \htmlinclude cmdDrone.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_sim::cmdDrone
  :super ros::object
  :slots (_status _header _vDes ))

(defmethod segway_sim::cmdDrone
  (:init
   (&key
    ((:status __status) 0)
    ((:header __header) (instance std_msgs::Header :init))
    ((:vDes __vDes) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _header __header)
   (setq _vDes __vDes)
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
  (:vDes
   (&optional __vDes)
   (if __vDes (setq _vDes __vDes)) _vDes)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[4] _vDes
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[4] _vDes
     (dotimes (i 4)
       (sys::poke (elt _vDes i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[4] _vDes
   (dotimes (i (length _vDes))
     (setf (elt _vDes i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get segway_sim::cmdDrone :md5sum-) "23eab109e8c570619e9097c96ac7643c")
(setf (get segway_sim::cmdDrone :datatype-) "segway_sim/cmdDrone")
(setf (get segway_sim::cmdDrone :definition-)
      "uint8 status
Header header
float64[4] vDes
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



(provide :segway_sim/cmdDrone "23eab109e8c570619e9097c96ac7643c")


