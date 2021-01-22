;; Auto-generated. Do not edit!


(when (boundp 'segway_sim::state)
  (if (not (find-package "SEGWAY_SIM"))
    (make-package "SEGWAY_SIM"))
  (shadow 'state (find-package "SEGWAY_SIM")))
(unless (find-package "SEGWAY_SIM::STATE")
  (make-package "SEGWAY_SIM::STATE"))

(in-package "ROS")
;;//! \htmlinclude state.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_sim::state
  :super ros::object
  :slots (_status _header _time _x _y _theta _v _thetaDot _psi _psiDot _stateVec ))

(defmethod segway_sim::state
  (:init
   (&key
    ((:status __status) 0)
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:v __v) 0.0)
    ((:thetaDot __thetaDot) 0.0)
    ((:psi __psi) 0.0)
    ((:psiDot __psiDot) 0.0)
    ((:stateVec __stateVec) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _header __header)
   (setq _time (float __time))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _v (float __v))
   (setq _thetaDot (float __thetaDot))
   (setq _psi (float __psi))
   (setq _psiDot (float __psiDot))
   (setq _stateVec __stateVec)
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
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:thetaDot
   (&optional __thetaDot)
   (if __thetaDot (setq _thetaDot __thetaDot)) _thetaDot)
  (:psi
   (&optional __psi)
   (if __psi (setq _psi __psi)) _psi)
  (:psiDot
   (&optional __psiDot)
   (if __psiDot (setq _psiDot __psiDot)) _psiDot)
  (:stateVec
   (&optional __stateVec)
   (if __stateVec (setq _stateVec __stateVec)) _stateVec)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _time
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ;; float64 _v
    8
    ;; float64 _thetaDot
    8
    ;; float64 _psi
    8
    ;; float64 _psiDot
    8
    ;; float64[7] _stateVec
    (* 8    7)
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
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thetaDot
       (sys::poke _thetaDot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _psi
       (sys::poke _psi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _psiDot
       (sys::poke _psiDot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[7] _stateVec
     (dotimes (i 7)
       (sys::poke (elt _stateVec i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
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
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thetaDot
     (setq _thetaDot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _psi
     (setq _psi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _psiDot
     (setq _psiDot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[7] _stateVec
   (dotimes (i (length _stateVec))
     (setf (elt _stateVec i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get segway_sim::state :md5sum-) "6b60dcbd240a7165577e64ea8154367d")
(setf (get segway_sim::state :datatype-) "segway_sim/state")
(setf (get segway_sim::state :definition-)
      "uint8 status
Header header
float64 time
float64 x
float64 y
float64 theta
float64 v
float64 thetaDot
float64 psi
float64 psiDot
float64[7] stateVec
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



(provide :segway_sim/state "6b60dcbd240a7165577e64ea8154367d")


