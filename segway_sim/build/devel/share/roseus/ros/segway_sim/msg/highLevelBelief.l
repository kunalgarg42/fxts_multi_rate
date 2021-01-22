;; Auto-generated. Do not edit!


(when (boundp 'segway_sim::highLevelBelief)
  (if (not (find-package "SEGWAY_SIM"))
    (make-package "SEGWAY_SIM"))
  (shadow 'highLevelBelief (find-package "SEGWAY_SIM")))
(unless (find-package "SEGWAY_SIM::HIGHLEVELBELIEF")
  (make-package "SEGWAY_SIM::HIGHLEVELBELIEF"))

(in-package "ROS")
;;//! \htmlinclude highLevelBelief.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_sim::highLevelBelief
  :super ros::object
  :slots (_status _header _probMiss _bt _prob _targetPosDrone _targetPosSegway ))

(defmethod segway_sim::highLevelBelief
  (:init
   (&key
    ((:status __status) 0)
    ((:header __header) (instance std_msgs::Header :init))
    ((:probMiss __probMiss) 0.0)
    ((:bt __bt) (make-array 40 :initial-element 0.0 :element-type :float))
    ((:prob __prob) (make-array 20 :initial-element 0.0 :element-type :float))
    ((:targetPosDrone __targetPosDrone) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:targetPosSegway __targetPosSegway) (make-array 2 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _header __header)
   (setq _probMiss (float __probMiss))
   (setq _bt __bt)
   (setq _prob __prob)
   (setq _targetPosDrone __targetPosDrone)
   (setq _targetPosSegway __targetPosSegway)
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
  (:probMiss
   (&optional __probMiss)
   (if __probMiss (setq _probMiss __probMiss)) _probMiss)
  (:bt
   (&optional __bt)
   (if __bt (setq _bt __bt)) _bt)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:targetPosDrone
   (&optional __targetPosDrone)
   (if __targetPosDrone (setq _targetPosDrone __targetPosDrone)) _targetPosDrone)
  (:targetPosSegway
   (&optional __targetPosSegway)
   (if __targetPosSegway (setq _targetPosSegway __targetPosSegway)) _targetPosSegway)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _probMiss
    8
    ;; float64[40] _bt
    (* 8    40)
    ;; float64[20] _prob
    (* 8    20)
    ;; float64[2] _targetPosDrone
    (* 8    2)
    ;; float64[2] _targetPosSegway
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
     ;; float64 _probMiss
       (sys::poke _probMiss (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[40] _bt
     (dotimes (i 40)
       (sys::poke (elt _bt i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[20] _prob
     (dotimes (i 20)
       (sys::poke (elt _prob i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _targetPosDrone
     (dotimes (i 2)
       (sys::poke (elt _targetPosDrone i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _targetPosSegway
     (dotimes (i 2)
       (sys::poke (elt _targetPosSegway i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _probMiss
     (setq _probMiss (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[40] _bt
   (dotimes (i (length _bt))
     (setf (elt _bt i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[20] _prob
   (dotimes (i (length _prob))
     (setf (elt _prob i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _targetPosDrone
   (dotimes (i (length _targetPosDrone))
     (setf (elt _targetPosDrone i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _targetPosSegway
   (dotimes (i (length _targetPosSegway))
     (setf (elt _targetPosSegway i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get segway_sim::highLevelBelief :md5sum-) "40f96d12b2895b791f2b4d422fdc68d0")
(setf (get segway_sim::highLevelBelief :datatype-) "segway_sim/highLevelBelief")
(setf (get segway_sim::highLevelBelief :definition-)
      "uint8 status
Header header
float64 probMiss
float64[40] bt
float64[20] prob
float64[2] targetPosDrone
float64[2] targetPosSegway

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



(provide :segway_sim/highLevelBelief "40f96d12b2895b791f2b4d422fdc68d0")


