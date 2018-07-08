;; toi.lisp
;;
;; Integration using lookup tables
;;
;; This is inspired by the TILU (Table of Integration Look Up) program
;; by Ted Einwohner, Richard Fateman and students at UC Berkeley.
;; No TILU code used.
;; 
;; T. H. Einwohner, Richard J. Fateman
;; Searching techniques for integral tables, ISSAC '95 
;; Proceedings of the 1995 international symposium on symbolic and
;; algebraic computation 
;; ISBN:0-89791-699-9 doi:10.1145/220346.220364
;; http://www.cs.berkeley.edu/~fateman/papers/integrate.ps
;; Code at http://www.cs.berkeley.edu/~fateman/tilu/ (2012-04-20)

;; TILU has a sophisticated expression hash algorithm.  This code has a
;; simpler hash routine which is works well for the functions in the
;; present lookup table, which is dominated by special functions. 

(in-package :maxima)

;; An entry in the table of integrals
;;
;; The integral VALUE slot can be:
;; - the lisp representation of a maxima expression
;; - a lisp function stored in the value slot
;; - a lisp list that evals to a lambda expression
(defstruct toi-entry
  index       ; Number from source.  Used as index into lookup table
  integrand   ; integrand as string in maxima syntax
              ; not used if integrand2 defined
  comment 
  (var 'x)    ; variable of integration
  parameters  ; free parameters in integrand
              ; can be generated from integrand
  source      ; Source of entry
  integral    ; integral as string in maxima syntax
              ; not used if integral2 defined
  integrand2  ; expression to be integrated as lisp
              ; (can be generated from integrand)
  integral2   ; integral as lisp
              ; (can be generated from integral)
  lbound      ; lower limit of integration - nil if indefinite
  ubound      ; upper limit of integration - nil if indefinite
  constraint  ; constraint on parameters
  m2-pattern  ; m2 pattern matching expression for integrand
              ; Can be generated from integrand in simple cases
)

(defmfun $table_integrate (e x)
  "Integrate integrand e wrt x using table lookup"
  (toi-lookup-integrand e x))

(defmfun $toi_read_table (file)
  "Read integrals from file and load into table of integrals"
  (toi-read-add-table file)
  'done)

(defvar *table-of-integrals* (make-hash-table :test #'equal)
 "The table of integrals. A hash table of toi-entry structures.  
  The hash key is the toi-entry index, a positive integer.")

(defvar *integrand-hash-table* (make-hash-table :test #'equal)
 "Hash table of integrand expressions.  Key is expression hash.  
  Value is a list of possible matches in *table-of-integrals*.")

;; Search for an integrand matching expression e
;; If found, substitute match returned by m2 into integral
;; m2 pattern matching requires VAR be set to integration variable
(defun toi-lookup-integrand (e x)
  "Integrate expression e wrt x using table lookup"
  (declare (special var))
  (setq var x)
  ;; loop over candidate entries from table ofintegrals
  (dolist (index (lookup-entry-list e x))
    ;; loop over table entries that hash to e
    ;; If an entry matches e then return integral
    ;; otherwise return nil
    (let* ((table-entry (gethash index *table-of-integrals*))
	   (integral (toi-match e table-entry)))
      (when integral (return integral)))))

(defun lookup-entry-list (e x)
  "Return list of integrands that hash to expression 
   e with integration variable x"
  (gethash (toi-hash-expression e x) *integrand-hash-table*))

;; Given:
;;   e - integrand
;;   entry - entry from table of integrals
;; NOTE: integration variable is special variable var
;; Return
;; - integral if e matches entry and constraints are satisfied
;; - nil, otherwise
(defun toi-match (e entry)
  "Attempt to match integrand with toi entry"
  (let*
      ((pattern (toi-entry-m2-pattern entry))
       (s (m2 e pattern)))
    (when s (toi-evaluate-integral entry s))))

;; Given
;;   entry - entry from table of integrals
;;   s     - a-list of parameters matched by m2
;; Return
;;   integral, if constraint is satisfied
;;   nil, otherwise
(defun toi-evaluate-integral (entry s)
  (let*
    ;; integral-form - integral as expression, function or lambda-expression
    ;; dummy-args  - Dummy arguments of the integral function
    ;; actual-args - Actual arguments of the integral function
    ;; constraint -   
    ((integral-form (toi-entry-integral2 entry))
     (dummy-args (cons
		  (toi-entry-var entry)
		  (toi-entry-parameters entry)))	
     (actual-args (mapcar #'(lambda (x) (subliss s x)) dummy-args))
     (constraint (toi-entry-constraint entry)))
    (cond
     ; integral may not be defined
     ((null integral-form) nil)
     ;; If a constraint exists and evaluates as false, return nil
     ((and constraint
	   (not (apply (eval `(lambda ,dummy-args ,constraint)) actual-args)))
      nil)
     ;; Is integral-form a lisp function stored in value slot?
     ;; If so, evaluate with actual arguments
     ((equal (first integral-form) 'function)
      (apply (second integral-form) actual-args))
     ;; Is integral-form a lisp list that evals to a lambda expression?
     ;; If so, evaluate with actual args
     ((equal (first integral-form) 'lambda)
      (apply (eval integral-form) actual-args))
     ; integral-form is an expression, substitute s
     (t (subliss s integral-form)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Hash function for integrands                                     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Trivial hash function works for a small table of integrals
;;(defun toi-hash-expression (e x) t)
;;
;; Slightly less trivial.  Return a sorted list of operators,
;; excluding mplus, mtimes and and those that don't contain x
;; Works surprisingly well.
#|
(defun toi-hash-expression (e x)
  "Generate hash function for expression e with integration variable x"
  (sort (toi-operator-list e x) 
    (lambda (x y) (string< (symbol-name x) (symbol-name y)))))

(defun toi-operator-list (e x)
  "List of operators on x in expression e, excluding mplus and mtimes"
  (labels 
    ((ol2 (e)
      (cond ((or (atom e) (freeof x e)) nil)
            ((member (mop e) '(mplus mtimes)) (mapcan #'ol2 (rest e)))
	    (t (append `(,(mop e)) (mapcan #'ol2 (rest e)))))))
    (ol2 e)))
|#

;; Hash funtion for integrand e with integration variable x
;;  Expressions free of x   => nil
;;  Expressions linear in x => var
;;  Functions ((%f) ... )   => (%f ... )
;;  Subexpressions of mplus and mtimes
;;    nil removed
;;    all but one var removed
;;    sorted
;;  Drop leading mtimes
(defun toi-hash-expression (e x)
  " Hash function for toi integrand e with integration variable x"
  (labels
     ((toi-hash-2 (e)
       (cond ((equal x e) 'var)
          ((atom e) nil)
	  ((freeof x e) nil)
	  (t (toi-normalize (cons (mop e) (mapcar #'toi-hash-2 (rest e))))))))
     (let ((h (toi-hash-2 e)))
	   (cond
	    ((equal (car h) 'mtimes) (rest h)) ; drop leading mtimes
	    (t h)))))

;; Normalize list from a toi-hash expression
;; Only mplus and mtimes need processing
(defun toi-normalize (e)
  (case (first e)
    (mplus  (toi-normalize-2 e))
    (mtimes (toi-normalize-2 e))
    (otherwise e)))

;; Normalize mplus and mtimes hash expression
;; - remove all nil
;; - remove all but first var
;; - if there is only one arg, return arg
;; - sort args
(defun toi-normalize-2 (e)
  (let ((l))
    ;; delete any nil
    (setq e (delete nil e))
    ;; delete all but first occurrence of var
    (setq l (position 'var e))
    (if l (setq e (remove 'var e :start (+ l 1))))
    ;; if e is length 2, for example (mplus xxx), then return xxx
    (if (null (cddr e))
      (cadr e)
      ;; otherwise return sorted list
      (cons (first e) (sort (rest e) #'toi<)))))

;; Sort args of a toi hash
;; nil < atoms sorted by name < lists sorted by element
(defun toi< (a b)
  (cond ((null a) (not (null b)))
        ((null b) nil)
	((atom a)
	  (if (atom b)
	    (string< (symbol-name a) (symbol-name b))
	    t))
	((atom b) nil) ; a is NOT an atom so b < a
	;; so a and b are both lists.  Try sorting on first element
	((toi< (first a) (first b)) t)
	((toi< (first b) (first a)) nil)
	;; first elements are equal
	(t (toi< (rest a) (rest b)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Support functions for struct toi-entry                           
;;
;; Only core functions for integral evaluation here.
;;
;; Non-core functions in
;; - toi-support.lisp: run-time predictates, m2 support, etc
;; - toi-utils: Development, debugging, etc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun toi-read-add-table (infile)
  "Read integrals from infile and load into table of integrals"
  (let ((ifile nil) (l nil) s)
    (with-open-file
     (ifile ($file_search infile)
	    :direction :input)
     (loop for s = (read ifile nil nil)
	   while s
	   do
	   (toi-add-entry s))))
  (toi-sort-table))

;; This ensures entries are tried in index order
(defun toi-sort-table ()
  "Sort entries in *integrand-hash-table*"
  (maphash
   (lambda (k v)
     (setf (gethash k *integrand-hash-table*) (sort v #'<)))
   *integrand-hash-table*))

(defun toi-add-entry (f)
  "Add integral f to *table-of-integrals* and *integrand-hash-table*"
  (let ((index (toi-entry-index f))
        (hash
	 (toi-hash-expression
	  (simplifya (toi-entry-integrand2 f) nil)
	  (toi-entry-var f))))
    ;; Add entry to table of integrals
    (setf (gethash index *table-of-integrals*) f)
    ;; Add hashed integrand to lookup table
    (push index (gethash hash *integrand-hash-table*))))
