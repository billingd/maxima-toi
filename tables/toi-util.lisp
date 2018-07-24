;; toi-utils.lisp
;;
;; Utility routines for integration using lookup tables
;; This file is not required for normal usage
;;

(in-package :maxima)

($load "eval_string.lisp") ; for $eval_string

;; Counter for new entries
(let ((counter 0))
    (defun counter-next () (incf counter))
    (defun counter-reset (&optional (n 0)) (setq counter n)))

(defun toi-index-list (toi)
  "Return a list of the indexes of table of integrals toi"
  (let ((l nil))
    (maphash (lambda (k v) (push (toi-entry-index v) l)) toi)
    l))

(defun toi-max-index (toi)
  "Maximum index in table of integrals toi"
  (apply #'max (toi-index-list toi)))

(defun toi-print (toi &optional (stream t))
  "Print table of integrals in index order to stream"
  (let (toi-entry (*print-circle* nil))
    (dotimes (i (toi-max-index toi) nil)
      (when (setq toi-entry (gethash (1+ i) toi))
	(prin1 toi-entry stream)))))

;; FIXME: Somehow we have nil as a key.  Is this correct?  
(defun toi-check-table (toi)
  "Check consistency of a table of integrals"
  (maphash (lambda (k v) (if k (toi-check-entry v))) toi))

(defun toi-print-table-2 (toi)
  "Print table of integrals in maphash order"
  (maphash (lambda (k v) (progn  (format t "~%~%") (prin1 k) (prin1 v))) toi))

(defun toi-check-entry (entry)
  "Some simple checks on an entry in the table of integrals"
  (declare (special var))
  (let (integrand-parameter-list integral-parameter-list (sub nil) m2pat)
  (setq var 'x)
  ;; Check PARAMETERS
  (setq integrand-parameter-list
    (remove-duplicates (toi-sorted-parameter-list (toi-entry-integrand2 entry) 'x)))
  (setq integral-parameter-list
    (remove-duplicates (toi-sorted-parameter-list (toi-entry-integral2 entry) 'x)))
  (unless (equal integrand-parameter-list (toi-entry-parameters entry))
    (format t "Integral ~a parameter list~%" (toi-entry-index entry)))
  (unless (equal integral-parameter-list (toi-entry-parameters entry))
    (format t "Integral ~a parameter list~%" (toi-entry-index entry)))

  ;; Confirm that M2-PATTERN matches INTEGRAND
  (setq m2pat (m2 (simplifya (toi-entry-integrand2 entry) nil) 
                (toi-entry-m2-pattern entry)))
  (unless m2pat
    (format t "Integral ~a M2-PATTERN doesn't match INTEGRAND~%" 
      (toi-entry-index entry)))
  #|
  ;; Confirm diff(INTEGRAL,x)-INTEGRAND=0 (if limits are both nil)
  (unless (alike1 0 
  		  (sub ($diff (toi-entry-integral2 entry) 'x)
		  (toi-entry-integrand2 entry))
  |#		
))

;; Hash table inspection
(defun toi-hash-summary ()
  "Output a summary of the integral has summary"
  (format t "hash-table-count ~S~%"
     (hash-table-count *integrand-hash-table*))
  (format t "hash-table-size ~S~%"
    (hash-table-size *integrand-hash-table*))
  (maphash #'print-entry *integrand-hash-table*))

(defun toi-print-entry (key value)
  (format t "Key: ~S Value: ~S~%" key value))

;; Is the expression e a parameter for table of integrals?
;; x is the integration variable
(defun toi-parameter-p (e x)
  "Is the expression a parameter for table of integrals with var x"
  (and (atom e)
       (not (eq e x))
       (not (member e '(lbound ubound)))
       (not (maxima-constantp e))))

(defun top-level-parameter-p (ex x)
  "True if top level subexpression is a parameter in table of integral"
  (dolist (subex (cdr ex))
    (when (toi-parameter-p subex x) (return t))))

;; return m2 expression matching expr
;; the integration variable is x
;; - still very rough
;;
;; The handling of duplicate parameters is incomplete.  The naive solution
;; is to have multiple m2 sub-patterns (e freevar), but these
;; will match to to different values.  
;;
;; If duplicate parameters are detected, then the first occurence is matched
;; to (e freevar) and subsequent occurences match to (e_ equal e).
;; Hopefully this is robust
;; - is the ordering correct?
;; - don't detect if e_ is also a parameter
;; - can't match to numeric values, eg p=2 and p-1=1
(defun expr-to-m2 (expr x)
  (let ((parameters nil))
    (labels
      ((e-to-m2 (expr)
         (let* ((op (unless (atom expr) (mop expr)))
		(l `((,op))))
	   (cond
	    ((eq expr x) `(,x varp))
	    ((maxima-constantp expr) expr)
	    ((atom expr)
	     (if (member expr parameters) ; duplicate parameter?
		 (duplicate-parameter-pattern expr)
	         (first-parameter-pattern expr)))
  
	      ;; special handling of mtimes
	      ;; if there is a parameter at the top level, wrap in (coefftt)
	      ((and (eq op 'mtimes) (top-level-parameter-p expr x))
	       (dolist (e (cdr expr))
		 (cond
		  ((toi-parameter-p e x) 
		   (push `((coefftt) ,(e-to-m2 e)) l))
		  (t (push (e-to-m2 e) l))))
	       (nreverse l))
 
	      ;; special handling of mplus
	      ;; if there is a parameter at the top level, wrap in (coeffpt)
	      ((and (eq op 'mplus) (top-level-parameter-p expr x))
	       (dolist (e (cdr expr))
		 (cond
		  ((toi-parameter-p e x)
		   (push `((coeffpt) ,(e-to-m2 e)) l))
		  ((atom e) (push (e-to-m2 e) l))
		  ((eq (mop e) 'mtimes)
		   (let ((ll (list '(coeffpt))))
		     (dolist (ee (cdr e)) (push (e-to-m2 ee) ll))
		     (push (nreverse ll) l)))
		  (t (push (e-to-m2 e) l))))
	       (nreverse l))

	      (t (append `((,op)) (mapcar #'e-to-m2 (rest expr)))))))
	(first-parameter-pattern (e); first occurence in expression
	  (push e parameters) ; add e to list of parameters
	  `(,e freevar))
        (duplicate-parameter-pattern (e) ; subsequent occurence in expression
	  ;; Match new symbol (add _) to e -> (e_ equal e)
          ;; This is only a partial solution
	  `(,(intern (concatenate 'string (symbol-name e) "_")) equal ,e))
       )
      (e-to-m2 expr))))

;; Return a list of parameters in an expression from table of integrals
;; x is integration variable
;; Will preserve duplicates in input expression
(defun toi-parameter-list (e x)
  (cond 
    ((atom e) (when (toi-parameter-p e x) `(,e)))
    (t (mapcan (lambda (ee) (toi-parameter-list ee x)) (rest e)))))

;; Sorted list of the parameters in an expression from table of integrals
;; Preserves duplicates
(defun toi-sorted-parameter-list (e x)
  (sort (toi-parameter-list e x) 
    (lambda (x y) (string< (symbol-name x) (symbol-name y)))))

;; t if expression e has duplicate parameters
;; x is integration variable
;; CHECK ME:  Simple but perhaps a bit inefficient
;;            At present, only used for a one-off checks on short lists
(defun toi-duplicate-parameter-p (e x)
  (let ((l (toi-sorted-parameter-list e x)))
    (not (eq (length l) (length (remove-duplicates l))))))

;; Check that symbol and symbol_ are not both parameters of e
(defun toi-symbol-and-symbol-underscore-p (l)
  "True if symbol and symbol_ in list"
  (let ((la (mapcar #'symbol-name l)))
    (dolist (s la)
      (when (member (concatenate 'string s "_") la :test #'equal) (return t)))))

;; Code to rearrange expressions to improve generation of m2 patterns
;;
;; Sort an expression and rearrange commutative expressions
;; in order
;;  0) free of atoms in l1 and l2
;;  1) free of atoms in l2 and has atoms in l1
;;  2) has atoms in l1 and l2
;;  3) free of atoms in l1 and has atoms in l2
;;
;; FIXME: Not careful about creating or destroying terms
(defun toi-sort-expr (e l1 l2)
  (labels
    ((freeofl2 (l e) (loop for x in l always (freeof x e)))
     (toi-order-fn (e)
        (if (freeofl2 l2 e)
	  (if (freeofl2 l1 e) 0 1)
	  (if (freeofl2 l1 e) 4 3)))
     (toi-sort-key (e1 e2) (< (toi-order-fn e1) (toi-order-fn e2)))
     (toi-sort-expr2 (e)
       ;; Recurse through expression.  If op is mtimes or mplus, sort terms
       (cond
	((atom e) e)
	((member (mop e) '(mplus mtimes) :test #'eql)
          `((,(mop e))
	    ,@(stable-sort (mapcar #'toi-sort-expr2 (rest e)) #'toi-sort-key)))
	(t `((,(mop e)) ,@(mapcar #'toi-sort-expr2 (rest e)))))))
    (toi-sort-expr2 e)))

(defun toi-remove-simp (ex)
  "delete SIMP from operators in expresion ex"
  (cond
   ((atom ex) ex)
   (t `((,(mop ex)) ,@(mapcar #'toi-remove-simp (rest ex))))))

(defun toi-remove-$ (ex)
  "remove leading $ from symbol names in expression ex"
  (cond
   ((atom ex) (toi-symbol-no-$ ex))
   (t (cons (first ex) (mapcar #'toi-remove-$ (rest ex))))))

(defun toi-remove-simp-$ (ex)
  "remove SIMP and leading $ from symbol names in expression ex"
  (cond
   ((atom ex) (toi-symbol-no-$ ex))
   (t `((,(mop ex)) ,@(mapcar #'toi-remove-simp-$ (rest ex))))))

;; Given an atom
;; - if it is a symbol with a leading $ in name, and it isn't a
;;   maxima  *builtin-numeric-constants* or $%i, return symbol without $
;; - otherwise return atom
(defun toi-symbol-no-$ (a)
  "Given atom a, return symbol with leading $ removed from name,
  Do not modify a maxima constant"
  (let (name-a)
    (cond
     ((not (atom a)) a) ; Shouldn't have a non-atom
     ((not (symbolp a)) a) ; for example, numbers
     ((member a *builtin-numeric-constants* :test #'equal) a)
     ((equal a '$i) a)
     ((equal (char (setq name-a (symbol-name a)) 0) #\$)
      (intern (subseq name-a 1)))
     (t a))))

;; Process an integral table entry
;; - convert integrand from string if required
(defun toi-process-entry (e)
  (when (or (toi-entry-integrand e) (toi-entry-integrand2 e))
    ;; return unchanged if neither integrand nor integrand2 defined
    (when (null (toi-entry-integrand2 e))
    ; convert integrand to integrand2
      (setf (toi-entry-integrand2 e)
	    (toi-remove-simp-$ ($eval_string (toi-entry-integrand e)))))
     (when  (null (toi-entry-integral2 e))
    ; convert integral to integral2
      (setf (toi-entry-integral2 e)
	    (toi-remove-simp-$ ($eval_string (toi-entry-integral e)))))
     (when (null (toi-entry-parameters e)) ; parameters
       (setf (toi-entry-parameters e)
	     (remove-duplicates
	      (toi-sorted-parameter-list
	       (toi-entry-integrand2 e)
	       (toi-entry-var e)))))
     (when (null (toi-entry-m2-pattern e)) ; m2 pattern
       (setf (toi-entry-m2-pattern e)
	     (expr-to-m2
	      (toi-entry-integrand2 e)
	      (toi-entry-var e)))))
  e)

(defun toi-write-file (outfile table &optional (n nil))
  "Write a list of integrals to outfile"
  ;; If n not nil, then use as start of entry numbers
  (let (ofile e)
    (if n (counter-reset n))
    (with-open-file
     (ofile outfile
	    :direction :output
	    :if-does-not-exist :create
	    :if-exists :supersede)  
     (dolist (e table)
       (if (and n
		(not (toi-entry-index e)))
	   (setf (toi-entry-index e) (counter-next)))
       ;;(prin1 e ofile))
       (print-toi-entry e ofile))
     (format ofile "~%")))
  nil)

(defun toi-filter-file (infile outfile &optional (n nil))
  "Read file with integrals, filter and write"
  (let ((table nil))
    (setq table (toi-read-file infile))
    (setq table (mapcar #'toi-process-entry table))
    (toi-write-file outfile table n)
    nil))

;; Check for duplication in the table of integrals. Rather than
;; returning first integral that matches, try all integrals that
;; has and returb all match.

(defmfun $table_integrate_all (e x)
  "Integrate integrand e wrt x using table lookup.
  Return list of solutions or false"
  (let ((lisp-list))
    (setq lisp-list (toi-lookup-integrand-all e x))
    (when lisp-list
      (adjoin
       '(mlist)
       (mapcar (lambda (x) (adjoin '(mlist) x)) lisp-list)))))

(defun toi-lookup-integrand-all (e x)
  "Integrate expression e wrt x using table lookup.
   Try all the candidates that match and return a list"
  (declare (special var))
  (setq var x)
  (let ((list-of-solutions nil))
    ;; loop over candidate entries from table ofintegrals
    (dolist (index (lookup-entry-list e x))
      ;; loop over table entries that hash to e
      ;; If an entry matches e then return integral
      ;; otherwise return nil
      (let* ((table-entry (gethash index *table-of-integrals*))
	     (integral (toi-match e table-entry)))
	;;(format t "Index ~S~%" index)
	;;(format t "Integral ~S~%" integral)
	(when integral
	  (push `(,index ,integral) list-of-solutions))))
    list-of-solutions))

(defun toi-read-file (infile)
  "Read integrals from infile and return as list"
  (let ((inile nil) (l nil) s)
    (with-open-file
     (ifile infile
	    :direction :input)
     (loop for s = (read ifile nil nil)
	   while s
	   do
	   (push s l)))
    (reverse l)))

(defun toi-add-table (toi)
  "Add list of entries toi to table of integrals"
  (dolist (e toi) (toi-add-entry e))
  (toi-sort-table))

(defun print-toi-entry (e s)
  "Print a toi-entry structure to stream s, ignoring nil elements"
  ;; Must be machine readable.
  ;; Try to make it compact and readable by humans, too
  (let ((*print-pretty* nil))
  (format s "#S(TOI-ENTRY~%")
  (when (toi-entry-index e)
    (format s "  :INDEX ~S~%" (toi-entry-index e)))
  (when (toi-entry-integrand e)
    (format s "  :INTEGRAND ~S~%" (toi-entry-integrand e)))
  (when (toi-entry-comment e)
    (format s "  :COMMENT ~S~%" (toi-entry-comment e)))
  (when (toi-entry-var e)
    (format s "  :VAR ~S~%" (toi-entry-var e)))
  (when (toi-entry-parameters e)
    (format s "  :PARAMETERS ~S~%" (toi-entry-parameters e)))
  (when (toi-entry-source e)
    (format s "  :SOURCE ~S~%" (toi-entry-source e)))
  (when (toi-entry-integral e)
    (format s "  :INTEGRAL ~S~%" (toi-entry-integral e)))
  (when (toi-entry-integrand2 e)
    (format s "  :INTEGRAND2 ~S~%" (toi-entry-integrand2 e)))
  (when (toi-entry-integral2 e)
    ;; It would be nice to pad this on left, and limit width
    (format s "  :INTEGRAL2 ~S~%" (toi-entry-integral2 e)) )
  (when (toi-entry-lbound e)
    (format s "  :LBOUND ~S~%" (toi-entry-lbound e)))
  (when (toi-entry-ubound e)
    (format s "  :UBOUND ~S~%" (toi-entry-ubound e)))
  (when (toi-entry-constraint e)
    (format s "  :CONSTRAINT ~S~%" (toi-entry-constraint e)))
  (when (toi-entry-m2-pattern e)
    ;; It would be nice to pad this on left, and limit width
    (format s "  :M2-PATTERN ~S~%" (toi-entry-m2-pattern e)) )
  (format s ")~%~%")))

(defun toi-print-2 (&optional (stream t))
  "Print table of integrals in index order to stream"
  (let (toi-entry (*print-circle* nil))
    (dotimes (i (toi-max-index *table-of-integrals*) nil)
      (when (setq toi-entry (gethash (1+ i) *table-of-integrals*))
	(print-toi-entry toi-entry stream 0)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Playing with symbol and expressions
;; Much of this is similar to the parameter functions above
;; Can combine later

;; FIXME: very similar to toi-parameter-p
(defun toi-variable-p (e)
  "Is the expression a variable in expression e"
  (and (atom e) (not (maxima-constantp e))))

;; FIXME: very similar to toi-parameter-list
;; Return a list of variables in an expression
;; Will preserve duplicates in input expression
(defun toi-variable-list (e)
  (cond 
    ((atom e) (if (toi-variable-p e) `(,e) nil))
    (t (mapcan (lambda (ee) (toi-variable-list ee)) (rest e)))))

;;FIXME: very similar to toi-sorted-parameter-list
;; Sorted list of the variables in an expression
;; Preserves duplicates
(defun toi-sorted-variable-list (e)
  (sort (toi-variable-list e) 
    (lambda (x y) (string< (symbol-name x) (symbol-name y)))))

(defun toi-$symbol (s)
  "Return symbol with $ added"
  (intern (concatenate 'string "$" (symbol-name s))))

(defun variables-in-expr (expr)
  "Extract variables from expression"
  (remove-duplicates (toi-sorted-variable-list expr)))

(defun toi-expression-to-string (e)
  "Convert lisp maxima expression e to maxima string"
  (let ((sub nil)
	(variables (variables-in-expr e)))
    ;; substitute symbol -> $symbol for x and parameters
    (dolist (s  variables)
      (push `(,s . ,(toi-$symbol s)) sub))
    (mfuncall '$string (subliss sub e))))

;; for testing
(defmfun $expr_to_m2 (expr x)
  "maxima interface to expr-to-m2 for testing"
  (let ((*print-pretty* nil))
    (format nil "~s" (expr-to-m2 expr x))))
