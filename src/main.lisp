(defpackage :kaiju
  (:use :cl :hunchentoot)
  (:import-from :easy-routes :routes-acceptor)
  (:export :run :kill)
  (:intern :*app*))
(in-package :kaiju)

(defvar *app* nil)

(defun run (&key (port 8080))
  (setf *app* (hunchentoot:start (make-instance 'routes-acceptor :port port))))

(defun kill ()
  (hunchentoot:stop *app*)
  (setf *app* nil))
