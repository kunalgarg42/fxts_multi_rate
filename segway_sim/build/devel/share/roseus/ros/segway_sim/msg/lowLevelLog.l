;; Auto-generated. Do not edit!


(when (boundp 'segway_sim::lowLevelLog)
  (if (not (find-package "SEGWAY_SIM"))
    (make-package "SEGWAY_SIM"))
  (shadow 'lowLevelLog (find-package "SEGWAY_SIM")))
(unless (find-package "SEGWAY_SIM::LOWLEVELLOG")
  (make-package "SEGWAY_SIM::LOWLEVELLOG"))

(in-package "ROS")
;;//! \htmlinclude lowLevelLog.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_sim::lowLevelLog
  :super ros::object
  :slots (_status _header _time _X _Xn _uMPC _uCBF _uTot _flagQP _V _h _QPtime ))

(defmethod segway_sim::lowLevelLog
  (:init
   (&key
    ((:status __status) 0)
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0.0)
    ((:X __X) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:Xn __Xn) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:uMPC __uMPC) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:uCBF __uCBF) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:uTot __uTot) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:flagQP __flagQP) 0.0)
    ((:V __V) 0.0)
    ((:h __h) 0.0)
    ((:QPtime __QPtime) 0.0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _header __header)
   (setq _time (float __time))
   (setq _X __X)
   (setq _Xn __Xn)
   (setq _uMPC __uMPC)
   (setq _uCBF __uCBF)
   (setq _uTot __uTot)
   (setq _flagQP (float __flagQP))
   (setq _V (float __V))
   (setq _h (float __h))
   (setq _QPtime (float __QPtime))
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
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:X
   (&optional __X)
   (if __X (setq _X __X)) _X)
  (:Xn
   (&optional __Xn)
   (if __Xn (setq _Xn __Xn)) _Xn)
  (:uMPC
   (&optional __uMPC)
   (if __uMPC (setq _uMPC __uMPC)) _uMPC)
  (:uCBF
   (&optional __uCBF)
   (if __uCBF (setq _uCBF __uCBF)) _uCBF)
  (:uTot
   (&optional __uTot)
   (if __uTot (setq _uTot __uTot)) _uTot)
  (:flagQP
   (&optional __flagQP)
   (if __flagQP (setq _flagQP __flagQP)) _flagQP)
  (:V
   (&optional __V)
   (if __V (setq _V __V)) _V)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:QPtime
   (&optional __QPtime)
   (if __QPtime (setq _QPtime __QPtime)) _QPtime)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _time
    8
    ;; float64[7] _X
    (* 8    7)
    ;; float64[7] _Xn
    (* 8    7)
    ;; float64[2] _uMPC
    (* 8    2)
    ;; float64[2] _uCBF
    (* 8    2)
    ;; float64[2] _uTot
    (* 8    2)
    ;; float64 _flagQP
    8
    ;; float64 _V
    8
    ;; float64 _h
    8
    ;; float64 _QPtime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[7] _X
     (dotimes (i 7)
       (sys::poke (elt _X i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _Xn
     (dotimes (i 7)
       (sys::poke (elt _Xn i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _uMPC
     (dotimes (i 2)
       (sys::poke (elt _uMPC i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _uCBF
     (dotimes (i 2)
       (sys::poke (elt _uCBF i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _uTot
     (dotimes (i 2)
       (sys::poke (elt _uTot i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _flagQP
       (sys::poke _flagQP (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _V
       (sys::poke _V (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _h
       (sys::poke _h (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _QPtime
       (sys::poke _QPtime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[7] _X
   (dotimes (i (length _X))
     (setf (elt _X i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _Xn
   (dotimes (i (length _Xn))
     (setf (elt _Xn i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _uMPC
   (dotimes (i (length _uMPC))
     (setf (elt _uMPC i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _uCBF
   (dotimes (i (length _uCBF))
     (setf (elt _uCBF i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _uTot
   (dotimes (i (length _uTot))
     (setf (elt _uTot i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _flagQP
     (setq _flagQP (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _V
     (setq _V (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _h
     (setq _h (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _QPtime
     (setq _QPtime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get segway_sim::lowLevelLog :md5sum-) "cce8d89a7ce7c3c6725aa883936dac51")
(setf (get segway_sim::lowLevelLog :datatype-) "segway_sim/lowLevelLog")
(setf (get segway_sim::lowLevelLog :definition-)
      "uint8 status
Header header
float64 time
float64[7] X
float64[7] Xn
float64[2] uMPC
float64[2] uCBF
float64[2] uTot
float64 flagQP
float64 V
float64 h
float64 QPtime

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



(provide :segway_sim/lowLevelLog "cce8d89a7ce7c3c6725aa883936dac51")


