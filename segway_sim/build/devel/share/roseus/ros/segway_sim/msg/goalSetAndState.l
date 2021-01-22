;; Auto-generated. Do not edit!


(when (boundp 'segway_sim::goalSetAndState)
  (if (not (find-package "SEGWAY_SIM"))
    (make-package "SEGWAY_SIM"))
  (shadow 'goalSetAndState (find-package "SEGWAY_SIM")))
(unless (find-package "SEGWAY_SIM::GOALSETANDSTATE")
  (make-package "SEGWAY_SIM::GOALSETANDSTATE"))

(in-package "ROS")
;;//! \htmlinclude goalSetAndState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_sim::goalSetAndState
  :super ros::object
  :slots (_status _header _x _y _xmin _xmax _ymin _ymax _highLevTime _term_xmin _term_xmax _term_ymin _term_ymax ))

(defmethod segway_sim::goalSetAndState
  (:init
   (&key
    ((:status __status) 0)
    ((:header __header) (instance std_msgs::Header :init))
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:xmin __xmin) 0.0)
    ((:xmax __xmax) 0.0)
    ((:ymin __ymin) 0.0)
    ((:ymax __ymax) 0.0)
    ((:highLevTime __highLevTime) 0.0)
    ((:term_xmin __term_xmin) 0.0)
    ((:term_xmax __term_xmax) 0.0)
    ((:term_ymin __term_ymin) 0.0)
    ((:term_ymax __term_ymax) 0.0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _header __header)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _xmin (float __xmin))
   (setq _xmax (float __xmax))
   (setq _ymin (float __ymin))
   (setq _ymax (float __ymax))
   (setq _highLevTime (float __highLevTime))
   (setq _term_xmin (float __term_xmin))
   (setq _term_xmax (float __term_xmax))
   (setq _term_ymin (float __term_ymin))
   (setq _term_ymax (float __term_ymax))
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
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:xmin
   (&optional __xmin)
   (if __xmin (setq _xmin __xmin)) _xmin)
  (:xmax
   (&optional __xmax)
   (if __xmax (setq _xmax __xmax)) _xmax)
  (:ymin
   (&optional __ymin)
   (if __ymin (setq _ymin __ymin)) _ymin)
  (:ymax
   (&optional __ymax)
   (if __ymax (setq _ymax __ymax)) _ymax)
  (:highLevTime
   (&optional __highLevTime)
   (if __highLevTime (setq _highLevTime __highLevTime)) _highLevTime)
  (:term_xmin
   (&optional __term_xmin)
   (if __term_xmin (setq _term_xmin __term_xmin)) _term_xmin)
  (:term_xmax
   (&optional __term_xmax)
   (if __term_xmax (setq _term_xmax __term_xmax)) _term_xmax)
  (:term_ymin
   (&optional __term_ymin)
   (if __term_ymin (setq _term_ymin __term_ymin)) _term_ymin)
  (:term_ymax
   (&optional __term_ymax)
   (if __term_ymax (setq _term_ymax __term_ymax)) _term_ymax)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _xmin
    8
    ;; float64 _xmax
    8
    ;; float64 _ymin
    8
    ;; float64 _ymax
    8
    ;; float64 _highLevTime
    8
    ;; float64 _term_xmin
    8
    ;; float64 _term_xmax
    8
    ;; float64 _term_ymin
    8
    ;; float64 _term_ymax
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
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xmin
       (sys::poke _xmin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xmax
       (sys::poke _xmax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ymin
       (sys::poke _ymin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ymax
       (sys::poke _ymax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _highLevTime
       (sys::poke _highLevTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _term_xmin
       (sys::poke _term_xmin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _term_xmax
       (sys::poke _term_xmax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _term_ymin
       (sys::poke _term_ymin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _term_ymax
       (sys::poke _term_ymax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xmin
     (setq _xmin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xmax
     (setq _xmax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ymin
     (setq _ymin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ymax
     (setq _ymax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _highLevTime
     (setq _highLevTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _term_xmin
     (setq _term_xmin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _term_xmax
     (setq _term_xmax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _term_ymin
     (setq _term_ymin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _term_ymax
     (setq _term_ymax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get segway_sim::goalSetAndState :md5sum-) "137f75e1f80293e076e49dcfbe9ec6bc")
(setf (get segway_sim::goalSetAndState :datatype-) "segway_sim/goalSetAndState")
(setf (get segway_sim::goalSetAndState :definition-)
      "uint8 status
Header header
float64 x
float64 y
float64 xmin
float64 xmax
float64 ymin
float64 ymax
float64 highLevTime
float64 term_xmin
float64 term_xmax
float64 term_ymin
float64 term_ymax
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



(provide :segway_sim/goalSetAndState "137f75e1f80293e076e49dcfbe9ec6bc")


