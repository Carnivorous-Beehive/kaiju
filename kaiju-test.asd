(defsystem :kaiju/test
  :author "Evan Duncan"
  :license "Apache-2.0"
  :pathname "tests/"
  :depends-on (:kaiju :fiveam)
  :components ((:file "main"))
  :perform (test-op (o c) (symbol-call :5am :run! :it.bese.fiveam)))
