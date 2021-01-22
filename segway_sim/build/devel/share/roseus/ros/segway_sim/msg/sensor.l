;; Auto-generated. Do not edit!


(when (boundp 'segway_sim::sensor)
  (if (not (find-package "SEGWAY_SIM"))
    (make-package "SEGWAY_SIM"))
  (shadow 'sensor (find-package "SEGWAY_SIM")))
(unless (find-package "SEGWAY_SIM::SENSOR")
  (make-package "SEGWAY_SIM::SENSOR"))

(in-package "ROS")
;;//! \htmlinclude sensor.msg.html


(defclass segway_sim::sensor
  :super ros::object
  :slots (_time _data ))

(defmethod segway_sim::sensor
  (:init
   (&key
    ((:time __time) 0)
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _time (round __time))
   (setq _data __data)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _time
    4
    ;; float32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _time
       (write-long _time s)
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get segway_sim::sensor :md5sum-) "3c60d7e63896fdb67b75aaa2a7d209f7")
(setf (get segway_sim::sensor :datatype-) "segway_sim/sensor")
(setf (get segway_sim::sensor :definition-)
      "uint32 time
float32[] data

")



(provide :segway_sim/sensor "3c60d7e63896fdb67b75aaa2a7d209f7")


