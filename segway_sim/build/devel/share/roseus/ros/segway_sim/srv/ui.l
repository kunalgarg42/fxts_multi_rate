;; Auto-generated. Do not edit!


(when (boundp 'segway_sim::ui)
  (if (not (find-package "SEGWAY_SIM"))
    (make-package "SEGWAY_SIM"))
  (shadow 'ui (find-package "SEGWAY_SIM")))
(unless (find-package "SEGWAY_SIM::UI")
  (make-package "SEGWAY_SIM::UI"))
(unless (find-package "SEGWAY_SIM::UIREQUEST")
  (make-package "SEGWAY_SIM::UIREQUEST"))
(unless (find-package "SEGWAY_SIM::UIRESPONSE")
  (make-package "SEGWAY_SIM::UIRESPONSE"))

(in-package "ROS")





(defclass segway_sim::uiRequest
  :super ros::object
  :slots (_cmd _data ))

(defmethod segway_sim::uiRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _data __data)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd
    1
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd
       (write-byte _cmd s)
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass segway_sim::uiResponse
  :super ros::object
  :slots (_result ))

(defmethod segway_sim::uiResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass segway_sim::ui
  :super ros::object
  :slots ())

(setf (get segway_sim::ui :md5sum-) "36efdb07e9aa3bd2015647364dd425d1")
(setf (get segway_sim::ui :datatype-) "segway_sim/ui")
(setf (get segway_sim::ui :request) segway_sim::uiRequest)
(setf (get segway_sim::ui :response) segway_sim::uiResponse)

(defmethod segway_sim::uiRequest
  (:response () (instance segway_sim::uiResponse :init)))

(setf (get segway_sim::uiRequest :md5sum-) "36efdb07e9aa3bd2015647364dd425d1")
(setf (get segway_sim::uiRequest :datatype-) "segway_sim/uiRequest")
(setf (get segway_sim::uiRequest :definition-)
      "uint8 cmd
float64[] data
---
bool result
")

(setf (get segway_sim::uiResponse :md5sum-) "36efdb07e9aa3bd2015647364dd425d1")
(setf (get segway_sim::uiResponse :datatype-) "segway_sim/uiResponse")
(setf (get segway_sim::uiResponse :definition-)
      "uint8 cmd
float64[] data
---
bool result
")



(provide :segway_sim/ui "36efdb07e9aa3bd2015647364dd425d1")


