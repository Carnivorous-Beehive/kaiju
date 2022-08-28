(defpackage :kaiju.view
  (:use :cl)
  (:import-from :cl-who :with-html-output :html-mode)
  (:export :with-html
           :with-application-layout))
(in-package :kaiju.view)

(setf (html-mode) :HTML5)

(defmacro with-html (&body body)
  `(with-html-output (*standard-output* nil :prologue t)
     ,@body))

(defmacro with-application-layout (&body body)
  `(with-html
     (:html
      (:head
       (:meta :name "viewport" :content "width=device-width, initial-scale=1.0"))
      (:body
       (:section :id "content"
                 ,@body)))))
