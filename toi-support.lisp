;; toi-support.lisp
;;
;; Run time support for table integration
;; - integrals that are functions

;; This is to test that integrals as functions work
;; There is an equivalent lambda expression commented out
;; in table of integrals
;;   DESCRIPTION "%e^-x*x^-v*bessel_i(v,x)"
;;   SOURCE ("DLMF 10.43.3.iv")
(defun integral-bessel_i-DLMF-10.43.3.iv (x v)
  (when (equal ($askequal v '((rat) 1 2)) '$NO)
    `((mtimes)
      ((mexpt) ((mplus) 1 ((mtimes) -2 ,v)) -1)
      ((mplus) ((%bessel_i) ,v ,x) ((%bessel_i) ((mplus) -1 ,v) ,x))
      ((mexpt) ,x ((mplus) 1 ((mtimes) -1 ,v)))
      ((mexpt) $%e ((mtimes) -1 ,x)))))

(defun askequalsquarep (x y)
  "True when $ASKEQUAL(x^2,y^2) = $YES"
  (equal
   ($askequal (resimplify `((mexpt) ,x 2)) (resimplify `((mexpt) ,y 2)))
   '$YES))

(defun askzerosump (&rest l)
  "True when $ASKEQUAL( sum of l, 0) = $YES"
  (equal
   ($askequal (resimplify (cons '(MPLUS) l)) 0)
   '$YES))

(defun integer>2p (n)
  "Predicate true when symbol n is an integer > 2"
  (and
   (equal ($askinteger n) '$YES)
   (equal ($asksign (resimplify `((MPLUS) ,n 2))) '$POS)))

(defun askinteger> (n &optional (m 0))
  "Predicate true when n is an integer and n > m"
  (and
   (equal ($askinteger n) '$YES)
   (equal ($asksign (resimplify `((MMINUS) ,n ,m))) '$POS)))

   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; predicates for m2 pattern matching. Names subject to change                ;;;
;;;                                                                            ;;;
;;; Need to check if similar functions exist, and give some thought to names   ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Not sure why resimplify is needed.  Suggests problem elsewhere.
(defun samesame (x &rest y) 
  "Predicate true if x-sum(y)=0"
  (alike1 0 (resimplify (sub x (apply #'add y)))))

(defun notsamesame (x &rest y) 
  "Predicate true if x-sum(y)#0"
  (not (apply #'samesame `(,x ,@y))))

;; Not sure why resimplify is needed.  Suggests problem elsewhere.
(defun samediff (x &rest y) 
  "Predicate true if x+sum(y)=0"
  (alike1 0 (resimplify (add x (apply #'add y)))))

(defun notsamediff (x &rest y) 
  "Predicate true if x+sum(y)#0"
  (not (apply #'samediff `(,x ,@y))))

;; No longer used.
#|
(defun freevarandnotsamesame (x &rest y) 
  "Predicate true if (freevar x) and x-sum(y)#0"
  (and (freevar x) (apply #'notsamesame `(,x ,@y))))

(defun freevarandnotsamediff (x &rest y) 
  "Predicate true if (freevar x) and x+sum(y)#0"
  (and (freevar x) (apply #'notsamediff `(,x ,@y))))

(defun freevarandnothalf (x)
  (and (freevar x) (not (samesame x 1//2))))

(defun freevarandnotminushalf (x)
  (and (freevar x) (not (samediff x 1//2))))

(defun freevarandnotsamesquare (x y) 
  "Predicate true if x freeof var and x^2 != y^2"
  (and (freevar x) (not (samesame (power x 2) (power y 2)))))

|#
