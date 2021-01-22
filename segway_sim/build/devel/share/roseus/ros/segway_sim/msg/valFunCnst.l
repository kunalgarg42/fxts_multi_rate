;; Auto-generated. Do not edit!


(when (boundp 'segway_sim::valFunCnst)
  (if (not (find-package "SEGWAY_SIM"))
    (make-package "SEGWAY_SIM"))
  (shadow 'valFunCnst (find-package "SEGWAY_SIM")))
(unless (find-package "SEGWAY_SIM::VALFUNCNST")
  (make-package "SEGWAY_SIM::VALFUNCNST"))

(in-package "ROS")
;;//! \htmlinclude valFunCnst.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_sim::valFunCnst
  :super ros::object
  :slots (_status _header _x1 _y1 _c1 _x2 _y2 _c2 _x3 _y3 _c3 _xmin _xmax _ymin _ymax _highLevTime _term_xmin _term_xmax _term_ymin _term_ymax ))

(defmethod segway_sim::valFunCnst
  (:init
   (&key
    ((:status __status) 0)
    ((:header __header) (instance std_msgs::Header :init))
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:c1 __c1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:c2 __c2) 0.0)
    ((:x3 __x3) 0.0)
    ((:y3 __y3) 0.0)
    ((:c3 __c3) 0.0)
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
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _c1 (float __c1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _c2 (float __c2))
   (setq _x3 (float __x3))
   (setq _y3 (float __y3))
   (setq _c3 (float __c3))
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
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:c1
   (&optional __c1)
   (if __c1 (setq _c1 __c1)) _c1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:c2
   (&optional __c2)
   (if __c2 (setq _c2 __c2)) _c2)
  (:x3
   (&optional __x3)
   (if __x3 (setq _x3 __x3)) _x3)
  (:y3
   (&optional __y3)
   (if __y3 (setq _y3 __y3)) _y3)
  (:c3
   (&optional __c3)
   (if __c3 (setq _c3 __c3)) _c3)
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
    ;; float64 _x1
    8
    ;; float64 _y1
    8
    ;; float64 _c1
    8
    ;; float64 _x2
    8
    ;; float64 _y2
    8
    ;; float64 _c2
    8
    ;; float64 _x3
    8
    ;; float64 _y3
    8
    ;; float64 _c3
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
     ;; float64 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c1
       (sys::poke _c1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c2
       (sys::poke _c2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x3
       (sys::poke _x3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y3
       (sys::poke _y3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c3
       (sys::poke _c3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _x1
     (setq _x1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y1
     (setq _y1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c1
     (setq _c1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x2
     (setq _x2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y2
     (setq _y2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c2
     (setq _c2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x3
     (setq _x3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y3
     (setq _y3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c3
     (setq _c3 (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(setf (get segway_sim::valFunCnst :md5sum-) "1e574332a926b29e85d7fb4e82e20fdd")
(setf (get segway_sim::valFunCnst :datatype-) "segway_sim/valFunCnst")
(setf (get segway_sim::valFunCnst :definition-)
      "uint8 status
Header header
float64 x1
float64 y1
float64 c1
float64 x2
float64 y2
float64 c2
float64 x3
float64 y3
float64 c3
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



(provide :segway_sim/valFunCnst "1e574332a926b29e85d7fb4e82e20fdd")


