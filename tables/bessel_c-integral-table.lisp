;; bessel_c-integral-table.lisp
;;
;; Many integrals for Bessel J, Y and Hankel H1 and H2 functions have a common form
;; Substitute (bessel_j, bessel_y,hankel_1,hankel_2) for (bessel_c,bessel_d)
;; See DLMF 10.22
;;
;; Generate indefinite integrals from templates

(in-package :maxima)

($load "opsubst.lisp") ; for gatherargs

;; The table of integrals, a hash table of toi-entry
;; elements.  The hash key is a positive integer. 
;(setf bessel-integral-template (make-hash-table :test #'equal))

;; Put the list of templates into a hash table
;(dolist (e *toi-bessel-template*)
;  (setf (gethash (toi-entry-index e) bessel-integral-template) e))

;; From : The Common Lisp Cookbook Project 
;; http://cl-cookbook.sourceforge.net/strings.html
(defun replace-all (string part replacement &key (test #'char=))
"Returns a new string in which all the occurences of the part 
is replaced with replacement."
    (with-output-to-string (out)
      (loop with part-length = (length part)
            for old-pos = 0 then (+ pos part-length)
            for pos = (search part string
                              :start2 old-pos
                              :test test)
            do (write-string string out
                             :start old-pos
                             :end (or pos (length string)))
            when pos do (write-string replacement out)
            while pos)))

;; Take a generic toi-entry containing placeholder %bessel_c
;; Substitute each cylinder function for placeholder in entry
;; Return list of generated entries
(defun sub_bessel_c (entry)
  (let ((l nil))
    (dolist (c '(%bessel_j %bessel_y %hankel_1 %hankel_2))
      (push (toi-sub-fn (copy-structure entry) '%bessel_c c) l))
    (reverse l)))

;; Take a generic toi-entry containing placeholders
;; %bessel_c and %bessel_d.
;; Substitute each cylinder function for both placeholders in entry
;;
;; Assumes that template is symmetric in %bessel_c and %bessel_d.
;; For
;; %bessel_c = %bessel_j:
;;    %bessel_d = (%bessel_j %bessel_y %hankel_1 %hankel_2)
;; %bessel_c = %bessel_y:
;;    %bessel_d = (%bessel_y %hankel_1 %hankel_2)
;; %bessel_c =  %hankel_1:
;;    %bessel_d = (%hankel_1 %hankel_2)
;; %bessel_c =  %hankel_2:
;;    %bessel_d = (hankel_2)
;; Return list of generated entries
;;
;; When %bessel_c and %bessel_d are identical then maxima will simplify the
;; integrand to %bessel_c()^2, so the integrand will hash differently.
;; Skip these cases.
(defun sub_bessel_c_d (entry)
  (let* ((l nil) entry-c integrand
	 (clist '(%bessel_j %bessel_y %hankel_1 %hankel_2))
	 (dlist clist))
    (dolist (c clist)
      (setq entry-c (toi-sub-fn (copy-structure entry) '%bessel_c c))
      (dolist (d dlist)
	;; Skip if
	;; - c and d are same function, and
	;; - %bessel_c and %bessel_d in integrand have same args
	(setq integrand
	      (if (toi-entry-integrand entry)
		(toi-remove-simp-$
		   ($eval_string (toi-entry-integrand entry)))
		(toi-entry-integrand2 entry)))
	(unless (and
		 (equal c d)
		 (tree-equal
		  (gatherargs integrand '%bessel_c)
		  (gatherargs integrand '%bessel_d)))
	  (push (toi-sub-fn (copy-structure entry-c) '%bessel_d d) l)))
      (pop dlist)) ; so we only generate upper triangle of matrix
    (reverse l)))

(defun toi-sub-fn (entry f g)
  "Substitute function g for function f in toi entry - destructive"
  ;; Assumes maxima name of function is symbol name without leading char 
  (let ((fname (string-downcase (subseq (symbol-name f) 1)))
	(gname (string-downcase (subseq (symbol-name g) 1))))
    (unless (null (toi-entry-integrand entry))
      (setf (toi-entry-integrand entry)
	    (replace-all (toi-entry-integrand entry) fname gname)))
    (unless (null (toi-entry-integral entry))
      (setf (toi-entry-integral entry)
	    (replace-all (toi-entry-integral entry) fname gname)))
    (unless (null (toi-entry-integrand2 entry))
      (setf (toi-entry-integrand2 entry)
	    (subst g f (toi-entry-integrand2 entry))))
    (unless (null (toi-entry-integral2 entry))
      (setf (toi-entry-integral2 entry)
	    (subst g f (toi-entry-integral2 entry))))
    (unless (null (toi-entry-m2-pattern entry))
      (setf (toi-entry-m2-pattern entry)
	    (subst g f (toi-entry-m2-pattern entry))))
    entry))

(defun toi-generate-bessel ()
  "Generate table of indefinite integrals of Bessel functions as list"
  (nconc
   (mapcan #'sub_bessel_c *toi-one-bessel-template*)
   (mapcan #'sub_bessel_c_d *toi-two-bessel-template*)))

(defun toi-write-list (table outfile)
  "Write list of integrals to outfile"
  (with-open-file (ofile outfile
		       :direction :output
		       :if-does-not-exist :create
		       :if-exists :supersede)
    (format ofile "(defparameter *toi-table* '(~%")
    (dolist (e table)
      (prin1 (toi-process-entry e) ofile))
    (format ofile "~%))~%")))

;; Take a partial toi entry
;; - copy the structure
;; - give it a number
;; - potentially do other stuff
(defun toi-add-stuff (entry &optional (index nil))
  (let ((new-entry (copy-structure entry)))
    (setf (toi-entry-index new-entry) (counter-next))
    new-entry))
