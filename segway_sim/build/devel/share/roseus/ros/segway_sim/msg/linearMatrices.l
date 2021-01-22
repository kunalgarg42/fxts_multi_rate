;; Auto-generated. Do not edit!


(when (boundp 'segway_sim::linearMatrices)
  (if (not (find-package "SEGWAY_SIM"))
    (make-package "SEGWAY_SIM"))
  (shadow 'linearMatrices (find-package "SEGWAY_SIM")))
(unless (find-package "SEGWAY_SIM::LINEARMATRICES")
  (make-package "SEGWAY_SIM::LINEARMATRICES"))

(in-package "ROS")
;;//! \htmlinclude linearMatrices.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass segway_sim::linearMatrices
  :super ros::object
  :slots (_status _header _Alinear _Blinear _Clinear ))

(defmethod segway_sim::linearMatrices
  (:init
   (&key
    ((:status __status) 0)
    ((:header __header) (instance std_msgs::Header :init))
    ((:Alinear __Alinear) (make-array 49 :initial-element 0.0 :element-type :float))
    ((:Blinear __Blinear) (make-array 14 :initial-element 0.0 :element-type :float))
    ((:Clinear __Clinear) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _header __header)
   (setq _Alinear __Alinear)
   (setq _Blinear __Blinear)
   (setq _Clinear __Clinear)
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
  (:Alinear
   (&optional __Alinear)
   (if __Alinear (setq _Alinear __Alinear)) _Alinear)
  (:Blinear
   (&optional __Blinear)
   (if __Blinear (setq _Blinear __Blinear)) _Blinear)
  (:Clinear
   (&optional __Clinear)
   (if __Clinear (setq _Clinear __Clinear)) _Clinear)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[49] _Alinear
    (* 8    49)
    ;; float64[14] _Blinear
    (* 8    14)
    ;; float64[7] _Clinear
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
     ;; float64[49] _Alinear
     (dotimes (i 49)
       (sys::poke (elt _Alinear i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[14] _Blinear
     (dotimes (i 14)
       (sys::poke (elt _Blinear i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _Clinear
     (dotimes (i 7)
       (sys::poke (elt _Clinear i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[49] _Alinear
   (dotimes (i (length _Alinear))
     (setf (elt _Alinear i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[14] _Blinear
   (dotimes (i (length _Blinear))
     (setf (elt _Blinear i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _Clinear
   (dotimes (i (length _Clinear))
     (setf (elt _Clinear i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get segway_sim::linearMatrices :md5sum-) "ad477ebebaec390b562aab51cae5a720")
(setf (get segway_sim::linearMatrices :datatype-) "segway_sim/linearMatrices")
(setf (get segway_sim::linearMatrices :definition-)
      "uint8 status
Header header
float64[49] Alinear
float64[14] Blinear
float64[7] Clinear
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



(provide :segway_sim/linearMatrices "ad477ebebaec390b562aab51cae5a720")


