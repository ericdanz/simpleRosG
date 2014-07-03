
(cl:in-package :asdf)

(defsystem "robot_emulator-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Input" :depends-on ("_package_Input"))
    (:file "_package_Input" :depends-on ("_package"))
    (:file "Boot" :depends-on ("_package_Boot"))
    (:file "_package_Boot" :depends-on ("_package"))
  ))