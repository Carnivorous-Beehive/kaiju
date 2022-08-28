(defpackage :kaiju.web
  (:use :cl :kaiju.view)
  (:import-from :easy-routes :defroute :@html))
(in-package :kaiju.web)

(defroute root ("/" :method :get) ()
  (with-application-layout
    (:div "Kaiju")))
