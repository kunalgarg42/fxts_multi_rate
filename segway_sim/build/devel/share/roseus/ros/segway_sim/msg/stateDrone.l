;; Auto-generated. Do not edit!


(when (boundp 'segway_sim::stateDrone)
  (if (not (find-package "SEGWAY_SIM"))
    (make-package "SEGWAY_SIM"))
  (shadow 'stateDrone (find-package "SEGWAY_SIM")))
(unless (find-package "SEGWAY_SIM::STATEDRONE")
  (make-package "SEGWAY_SIM::STATEDRONE"))

(in-package "ROS")
;;//! \htmlinclude stateDrone.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_sim::stateDrone
  :super ros::object
  :slots (_status _header _time _x _y _z _qw _qx _qy _qz _vbx _vby _vbz _omegax _omegay _omegaz _omega1 _omega2 _omega3 _omega4 _vx _vy _vz ))

(defmethod segway_sim::stateDrone
  (:init
   (&key
    ((:status __status) 0)
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:qw __qw) 0.0)
    ((:qx __qx) 0.0)
    ((:qy __qy) 0.0)
    ((:qz __qz) 0.0)
    ((:vbx __vbx) 0.0)
    ((:vby __vby) 0.0)
    ((:vbz __vbz) 0.0)
    ((:omegax __omegax) 0.0)
    ((:omegay __omegay) 0.0)
    ((:omegaz __omegaz) 0.0)
    ((:omega1 __omega1) 0.0)
    ((:omega2 __omega2) 0.0)
    ((:omega3 __omega3) 0.0)
    ((:omega4 __omega4) 0.0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _header __header)
   (setq _time (float __time))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _qw (float __qw))
   (setq _qx (float __qx))
   (setq _qy (float __qy))
   (setq _qz (float __qz))
   (setq _vbx (float __vbx))
   (setq _vby (float __vby))
   (setq _vbz (float __vbz))
   (setq _omegax (float __omegax))
   (setq _omegay (float __omegay))
   (setq _omegaz (float __omegaz))
   (setq _omega1 (float __omega1))
   (setq _omega2 (float __omega2))
   (setq _omega3 (float __omega3))
   (setq _omega4 (float __omega4))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
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
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:qw
   (&optional __qw)
   (if __qw (setq _qw __qw)) _qw)
  (:qx
   (&optional __qx)
   (if __qx (setq _qx __qx)) _qx)
  (:qy
   (&optional __qy)
   (if __qy (setq _qy __qy)) _qy)
  (:qz
   (&optional __qz)
   (if __qz (setq _qz __qz)) _qz)
  (:vbx
   (&optional __vbx)
   (if __vbx (setq _vbx __vbx)) _vbx)
  (:vby
   (&optional __vby)
   (if __vby (setq _vby __vby)) _vby)
  (:vbz
   (&optional __vbz)
   (if __vbz (setq _vbz __vbz)) _vbz)
  (:omegax
   (&optional __omegax)
   (if __omegax (setq _omegax __omegax)) _omegax)
  (:omegay
   (&optional __omegay)
   (if __omegay (setq _omegay __omegay)) _omegay)
  (:omegaz
   (&optional __omegaz)
   (if __omegaz (setq _omegaz __omegaz)) _omegaz)
  (:omega1
   (&optional __omega1)
   (if __omega1 (setq _omega1 __omega1)) _omega1)
  (:omega2
   (&optional __omega2)
   (if __omega2 (setq _omega2 __omega2)) _omega2)
  (:omega3
   (&optional __omega3)
   (if __omega3 (setq _omega3 __omega3)) _omega3)
  (:omega4
   (&optional __omega4)
   (if __omega4 (setq _omega4 __omega4)) _omega4)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
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
    ;; float64 _z
    8
    ;; float64 _qw
    8
    ;; float64 _qx
    8
    ;; float64 _qy
    8
    ;; float64 _qz
    8
    ;; float64 _vbx
    8
    ;; float64 _vby
    8
    ;; float64 _vbz
    8
    ;; float64 _omegax
    8
    ;; float64 _omegay
    8
    ;; float64 _omegaz
    8
    ;; float64 _omega1
    8
    ;; float64 _omega2
    8
    ;; float64 _omega3
    8
    ;; float64 _omega4
    8
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _vz
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
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qw
       (sys::poke _qw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qx
       (sys::poke _qx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qy
       (sys::poke _qy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qz
       (sys::poke _qz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vbx
       (sys::poke _vbx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vby
       (sys::poke _vby (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vbz
       (sys::poke _vbz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omegax
       (sys::poke _omegax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omegay
       (sys::poke _omegay (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omegaz
       (sys::poke _omegaz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omega1
       (sys::poke _omega1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omega2
       (sys::poke _omega2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omega3
       (sys::poke _omega3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omega4
       (sys::poke _omega4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qw
     (setq _qw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qx
     (setq _qx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qy
     (setq _qy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qz
     (setq _qz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vbx
     (setq _vbx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vby
     (setq _vby (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vbz
     (setq _vbz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omegax
     (setq _omegax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omegay
     (setq _omegay (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omegaz
     (setq _omegaz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omega1
     (setq _omega1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omega2
     (setq _omega2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omega3
     (setq _omega3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omega4
     (setq _omega4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vz
     (setq _vz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get segway_sim::stateDrone :md5sum-) "0a4896036143d2c9c95e36620834c63e")
(setf (get segway_sim::stateDrone :datatype-) "segway_sim/stateDrone")
(setf (get segway_sim::stateDrone :definition-)
      "uint8 status
Header header
float64 time
float64 x
float64 y
float64 z
float64 qw
float64 qx
float64 qy
float64 qz
float64 vbx
float64 vby
float64 vbz
float64 omegax
float64 omegay
float64 omegaz
float64 omega1
float64 omega2
float64 omega3
float64 omega4
float64 vx
float64 vy
float64 vz

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



(provide :segway_sim/stateDrone "0a4896036143d2c9c95e36620834c63e")


