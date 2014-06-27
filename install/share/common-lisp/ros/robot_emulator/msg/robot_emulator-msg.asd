
(cl:in-package :asdf)

(defsystem "robot_emulator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
    (:file "BootResponse" :depends-on ("_package_BootResponse"))
    (:file "_package_BootResponse" :depends-on ("_package"))
    (:file "Error" :depends-on ("_package_Error"))
    (:file "_package_Error" :depends-on ("_package"))
    (:file "Request" :depends-on ("_package_Request"))
    (:file "_package_Request" :depends-on ("_package"))
    (:file "Output" :depends-on ("_package_Output"))
    (:file "_package_Output" :depends-on ("_package"))
    (:file "Input" :depends-on ("_package_Input"))
    (:file "_package_Input" :depends-on ("_package"))
  ))