;; ASDF system definition for maxima-toi
;; cargo-culted from other ASDF files ...
;; if anyone knows how to do this "right", I'll be glad to hear about it.
;; Robert Dodier 2018-07-04

(defclass toi-file (source-file)
  ((type :initform "lisp")))

(defmethod perform ((o load-source-op) (c toi-file))
  (let ((source-file (first (input-files o c))))
    (funcall (find-symbol "TOI-READ-ADD-TABLE" (find-package "MAXIMA")) source-file)))
    
(defmethod perform ((o load-op) (c toi-file))
  (let ((source-file (first (input-files o c))))
    (funcall (find-symbol "TOI-READ-ADD-TABLE" (find-package "MAXIMA")) source-file)))

(defmethod perform ((o compile-op) (c toi-file))
  (let ((source-file (first (input-files o c))))
    (compile-file* source-file)))

(defsystem maxima-toi
  :components
    ((:file "toi")
     (:file "toi-support")
     (:toi-file "toi-integral-table")))

