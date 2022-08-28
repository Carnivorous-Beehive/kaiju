(defsystem :kaiju
  :version "0.0.1"
  :author "Evan Duncan"
  :description "An open source Jira and Confluence replacement"
  :license "Apache-2.0"
  :pathname "src/"
  :components ((:file "main"))
  :in-order-to ((test-op (test-op :kaiju/test))))

(defsystem :kaiju/test
  :author "Evan Duncan"
  :license "Apache-2.0"
  :pathname "tests/"
  :depends-on (:kaiju :fiveam)
  :components ((:file "main"))
  :perform (test-op (o c) (symbol-call :5am :run! :it.bese.fiveam)))
