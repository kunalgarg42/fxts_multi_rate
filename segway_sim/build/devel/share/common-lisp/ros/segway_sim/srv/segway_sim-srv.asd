
(cl:in-package :asdf)

(defsystem "segway_sim-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ui" :depends-on ("_package_ui"))
    (:file "_package_ui" :depends-on ("_package"))
  ))