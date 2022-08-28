(defsystem :kaiju
  :version "0.0.1"
  :author "Evan Duncan"
  :description "An open source Jira and Confluence replacement"
  :license "Apache-2.0"
  :pathname "src/"
  :depends-on ("hunchentoot"
               "easy-routes"
               "cl-who")
  :components ((:file "main" :depends-on ("web"))
               (:file "web" :depends-on ("view"))
               (:file "view"))
  :in-order-to ((test-op (test-op :kaiju/test))))
