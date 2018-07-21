;; bessel-integral-template.lisp
;;
;; Many integrals for Bessel J, Y and Hankel H1 and H2 functions have a
;; common form.
;;
;; Substitute (bessel_j, bessel_y,hankel_1,hankel_2) for (bessel_c,bessel_d)
;; See DLMF 10.22
;;
;;
;; Coverage
;;
;; Integrand                                   DLMF      G&R
;; bessel_j(p,x)                                        5.51       On property list
;; x^(p+1)*bessel_c(p,x)                      10.22.1   5.52.1     Yes
;; x^(1-p)*bessel_c(p,x)                      10.22.1   5.52.2     Yes
;; x^p*bessel_c(p,x)                          10.22.2     -        Yes
;; e^(%i*x)*x^p*bessel_c(p,x)                 10.22.3              No
;; e^(%i*x)*x^-p*bessel_c(p,x)                10.22.3              No
;; x*bessel_c(p,a*x)*bessel_d(p,b*x)          10.22.4   5.54.1     Yes
;; x*bessel_c(p,a*x)^2                        10.22.5   5.54.2     Yes
;; x*bessel_c(p,a*x)*bessel_d(p,a*x)          10.22.5   5.54.3     Yes
;; bessel_c(u,a*x)*bessel_d(v,a*x)/x          10.22.6   5.55       Yes
;; x^(u+v+1)*bessel_c(u,a*x)*bessel_d(v,a*x)  10.22.7              Yes
;; x^(1-u-v)*bessel_c(u,a*x)*bessel_d(v,a*x)  10.22.7              Yes
;; bessel_c(1,x)                              10.22.1   5.56.1     On property list
;; x*bessel_c(0,x)                            10.22.1   5.56.2     Yes
;;

(in-package :maxima)

(defparameter *toi-one-bessel-template* '(

; DLMF 10.22.1				  
#S(TOI-ENTRY
   :INTEGRAND  "x^(p+1)*bessel_c(p,x)"
   :SOURCE ("DLMF 10.22.1" "GR 5.52.1")
   :VAR X
   :PARAMETERS (P)
   :INTEGRAL "x^(p+1)*bessel_c(p+1,x)"
   :M2-PATTERN
   ((MTIMES)
    ((%BESSEL_C) (P FREEVAR) (X VARP))
    ((MEXPT) (X VARP) (P+1 SAMESAME P 1))))

; DLMF 10.22.1
#S(TOI-ENTRY
   :INTEGRAND "x^(1-p)*bessel_c(p,x)"
   :SOURCE ("DLMF 10.22.1" "GR 5.52.2")
   :VAR X
   :PARAMETERS (P)
   :INTEGRAL "-x^(1-p)*bessel_c(p-1,x)"
   :M2-PATTERN
   ((MTIMES)
    ((%BESSEL_C) (P FREEVAR) (X VARP))
    ((MEXPT) (X VARP) (1-P SAMEDIFF P -1))))

#S(TOI-ENTRY
   :INTEGRAND "x*bessel_c(p,a*x)^2"
   :SOURCE ("GR 5.54.1")
   :VAR X
   :PARAMETERS (A P)
   :INTEGRAL "(1/2)*x^2*(bessel_c(p,a*x)^2-bessel_c(p-1,a*x)*bessel_c(p+1,a*x))"
   )

#S(TOI-ENTRY
   :INTEGRAND "x*bessel_c(0,x)"
   :SOURCE ("GR 5.56.2")
   :INTEGRAL  "x*bessel_c(1,x)" )

;; DLMF 10.22.2
#S(TOI-ENTRY
   :INTEGRAND "bessel_c(p,x)*x^p"
   :SOURCE ("DLMF 10.22.2")
   :PARAMETERS (P)
   :INTEGRAL "sqrt(%pi)*2^(p-1)*(struve_h(p-1,x)*bessel_c(p,x)-bessel_c(p-1,x)*struve_h(p,x))*gamma(p+1/2)*x"
   :COMMENT "p # -1/2"   
   ;CONSTRAINT (equal ($askequal p '((rat) -1 2)) '$NO))
   :CONSTRAINT (ask# p -1//2))

; DLMF 10.22.2 with p=1
#S(TOI-ENTRY
   :INTEGRAND "bessel_c(1,x)*x"
   :SOURCE ("DLMF 10.22.2 with p=1")
   :INTEGRAL "%pi*x*(struve_h(0,x)*bessel_c(1,x)-bessel_c(0,x)*struve_h(1,x))/2")

;; DLMF 10.22.7, with same function twice and u=v
#S(TOI-ENTRY
   :INTEGRAND "x^(2*u+1)*bessel_c(u,a*x)^2"
   :SOURCE ("DLMF 10.22.7 with same Bessel function twice and u=v")
   :COMMENT "u # -1/2"
   :PARAMETERS (A U)
   :INTEGRAL "((bessel_c(u+1,a*x)^2+bessel_c(u,a*x)^2)*x^(2*u+2))/(2*(2*u+1))"
   :CONSTRAINT (ask# u -1//2)
   :M2-PATTERN
   ((MTIMES)
    ((MEXPT) ((%BESSEL_C) (U FREEVAR) ((MTIMES) (A FREEVAR) (X VARP))) 2)
    ((MEXPT) (X VARP) (2*U+1 SAMESAME U U 1))))

;; DLMF 10.22.7, with same function twice and u=v
#S(TOI-ENTRY
   :INTEGRAND "x^(-2*u+1)*bessel_c(u,a*x)^2"
   :SOURCE ("DLMF 10.22.7, with same Bessel function twice and u=v")
   :COMMENT "u # 1/2"
   :PARAMETERS (A U)
   :INTEGRAL "((bessel_c(u,a*x)^2+bessel_c(u-1,a*x)^2)*x^(2-2*u))/(2*(1-2*u))"
   :CONSTRAINT (ask# u 1//2)
   :M2-PATTERN
   ((MTIMES) 
    ((MEXPT)
     ((%BESSEL_C) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP)))
     2)
    ((MEXPT) (X VARP) (1-2*U SAMEDIFF U U -1))))

;; DLMF 10.22.3
;; FIXME: Has complex exponential.  Leave for now.
))

(defparameter *toi-two-bessel-template* '(

;; DLMF 10.22.4					  
#S(TOI-ENTRY 
   :INTEGRAND "x*bessel_c(p,a*x)*bessel_d(p,b*x)"
   :SOURCE ("DLMF 10.22.4" "GR 5.54.1")
   :COMMENT "a^2 # b^2"
   :PARAMETERS (A B P)
   :INTEGRAL "((a*bessel_d(p,b*x)*bessel_c(p+1,a*x)-b*bessel_c(p,a*x)*bessel_d(p+1,b*x))*x)/(a^2-b^2)"
   :CONSTRAINT (not (askequalsquarep a b))
   )

;; DLMF 10.22.5
#S(TOI-ENTRY 
     :INTEGRAND "x*bessel_c(p,a*x)*bessel_d(p,a*x)"
     :SOURCE ("DLMF 10.22.5")
     :PARAMETERS (A P)
     :INTEGRAL "(((-bessel_c(p-1,a*x)*bessel_d(p+1,a*x))-bessel_d(p-1,a*x)*bessel_c(p+1,a*x)+2*bessel_c(p,a*x)*bessel_d(p,a*x))*x^2)/4"
     )

;; DLMF 10.22.6
#S(TOI-ENTRY 
     :INTEGRAND "bessel_c(u,a*x)*bessel_d(v,a*x)/x"
     :SOURCE ("DLMF 10.22.6" "GR 5.55")
     :COMMENT "u^2 # v^2"
     :PARAMETERS (A U V)
     :INTEGRAL "(bessel_c(u,a*x)*bessel_d(v,a*x))/(v+u)-(a*(bessel_c(u+1,a*x)*bessel_d(v,a*x)-bessel_c(u,a*x)*bessel_d(v+1,a*x))*x)/(u^2-v^2)"
     :CONSTRAINT (not (askequalsquarep u v))
     )

;; DLMF 10.22.7
#S(TOI-ENTRY
     :INTEGRAND "x^(u+v+1)*bessel_c(u,a*x)*bessel_d(v,a*x)"
     :SOURCE ("DLMF 10.22.7.i")
     :COMMENT  "u+v # -1"
     :INTEGRAL "((bessel_c(u+1,a*x)*bessel_d(v+1,a*x)+bessel_c(u,a*x)*bessel_d(v,a*x))
 *x^(v+u+2)) /(2*(v+u+1))"
     :CONSTRAINT (not (askzerosump u v 1))
     :PARAMETERS (A U V)
     :M2-PATTERN 
       ((MTIMES) 
	((%BESSEL_C)
	 (U FREEVAR)
	 ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP)))
        ((%BESSEL_D)
	 (V FREEVAR)
	 ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP)))
        ((MEXPT) (X VARP) (U+V+1 SAMESAME U V 1))))

;; DLMF 10.22.7
#S(TOI-ENTRY
     :INTEGRAND "x^(-u-v+1)*bessel_c(u,a*x)*bessel_d(v,a*x)"
     :SOURCE ("DLMF 10.22.7.ii")
     :COMMENT "u+v # 1"
     :INTEGRAL "((bessel_c(u,a*x)*bessel_d(v,a*x)+bessel_c(u-1,a*x)*bessel_d(v-1,a*x))
 *x^((-v)-u+2))/(2*((-v)-u+1))"
     :CONSTRAINT (not (askzerosump u v -1))
     :PARAMETERS (A U V)
     :M2-PATTERN
      ((MTIMES) 
       ((%BESSEL_C)
	(U FREEVAR)
	((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) 
       ((%BESSEL_D)
	(V FREEVAR)
	((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) 
       ((MEXPT) (X VARP) (1-U-V SAMEDIFF U V -1))))

))
