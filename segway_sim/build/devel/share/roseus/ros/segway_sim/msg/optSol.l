;; Auto-generated. Do not edit!


(when (boundp 'segway_sim::optSol)
  (if (not (find-package "SEGWAY_SIM"))
    (make-package "SEGWAY_SIM"))
  (shadow 'optSol (find-package "SEGWAY_SIM")))
(unless (find-package "SEGWAY_SIM::OPTSOL")
  (make-package "SEGWAY_SIM::OPTSOL"))

(in-package "ROS")
;;//! \htmlinclude optSol.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_sim::optSol
  :super ros::object
  :slots (_status _header _time _optimalSolution _solverFlag _solverTime _x _y _xCurr _x_IC _delay_ms _contPlan ))

(defmethod segway_sim::optSol
  (:init
   (&key
    ((:status __status) 0)
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0.0)
    ((:optimalSolution __optimalSolution) (make-array 367 :initial-element 0.0 :element-type :float))
    ((:solverFlag __solverFlag) 0.0)
    ((:solverTime __solverTime) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:xCurr __xCurr) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:x_IC __x_IC) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:delay_ms __delay_ms) 0.0)
    ((:contPlan __contPlan) 0.0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _header __header)
   (setq _time (float __time))
   (setq _optimalSolution __optimalSolution)
   (setq _solverFlag (float __solverFlag))
   (setq _solverTime (float __solverTime))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _xCurr __xCurr)
   (setq _x_IC __x_IC)
   (setq _delay_ms (float __delay_ms))
   (setq _contPlan (float __contPlan))
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
  (:optimalSolution
   (&optional __optimalSolution)
   (if __optimalSolution (setq _optimalSolution __optimalSolution)) _optimalSolution)
  (:solverFlag
   (&optional __solverFlag)
   (if __solverFlag (setq _solverFlag __solverFlag)) _solverFlag)
  (:solverTime
   (&optional __solverTime)
   (if __solverTime (setq _solverTime __solverTime)) _solverTime)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:xCurr
   (&optional __xCurr)
   (if __xCurr (setq _xCurr __xCurr)) _xCurr)
  (:x_IC
   (&optional __x_IC)
   (if __x_IC (setq _x_IC __x_IC)) _x_IC)
  (:delay_ms
   (&optional __delay_ms)
   (if __delay_ms (setq _delay_ms __delay_ms)) _delay_ms)
  (:contPlan
   (&optional __contPlan)
   (if __contPlan (setq _contPlan __contPlan)) _contPlan)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _time
    8
    ;; float64[367] _optimalSolution
    (* 8    367)
    ;; float64 _solverFlag
    8
    ;; float64 _solverTime
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64[7] _xCurr
    (* 8    7)
    ;; float64[7] _x_IC
    (* 8    7)
    ;; float64 _delay_ms
    8
    ;; float64 _contPlan
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
     ;; float64[367] _optimalSolution
     (dotimes (i 367)
       (sys::poke (elt _optimalSolution i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _solverFlag
       (sys::poke _solverFlag (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _solverTime
       (sys::poke _solverTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[7] _xCurr
     (dotimes (i 7)
       (sys::poke (elt _xCurr i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _x_IC
     (dotimes (i 7)
       (sys::poke (elt _x_IC i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _delay_ms
       (sys::poke _delay_ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _contPlan
       (sys::poke _contPlan (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64[367] _optimalSolution
   (dotimes (i (length _optimalSolution))
     (setf (elt _optimalSolution i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _solverFlag
     (setq _solverFlag (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _solverTime
     (setq _solverTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[7] _xCurr
   (dotimes (i (length _xCurr))
     (setf (elt _xCurr i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _x_IC
   (dotimes (i (length _x_IC))
     (setf (elt _x_IC i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _delay_ms
     (setq _delay_ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _contPlan
     (setq _contPlan (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get segway_sim::optSol :md5sum-) "1db70613ce4d87aefb825b3827121e15")
(setf (get segway_sim::optSol :datatype-) "segway_sim/optSol")
(setf (get segway_sim::optSol :definition-)
      "uint8 status
Header header
float64 time
float64[367] optimalSolution
float64 solverFlag
float64 solverTime
float64 x
float64 y
float64[7] xCurr
float64[7] x_IC
float64 delay_ms
float64 contPlan
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



(provide :segway_sim/optSol "1db70613ce4d87aefb825b3827121e15")


