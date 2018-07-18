;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; DLMF 10.42: Modified Bessel Functions - indefinite integrals
;;
;; Integrals in this section also apply under substitution
;; of %e^(v*%pi*%i)*bessel_k(v*x) for bessel_i(v*x).
;; This is done for a small number of cases.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; DLMF 10.42.1 (i)      
#S(TOI-ENTRY
   INTEGRAND "x^(p+1)*bessel_i(p,x)"
   SOURCE ("DLMF 10.43.1 (i)")
   INTEGRAL "x^(p+1)*bessel_i(p+1,x)"
   M2-PATTERN
   ((MTIMES)
    ((%BESSEL_I) (P FREEVAR) (X VARP))
    ((MEXPT) (X VARP) (P+1 SAMESAME P 1))))

#S(TOI-ENTRY
   INTEGRAND "x*bessel_i(0,x)"
   SOURCE ("DLMF 10.43.1 (i) with p=0")
   INTEGRAL "x*bessel_i(1,x)")

#S(TOI-ENTRY
   INTEGRAND "x^(1-p)*bessel_i(p,x)"
   SOURCE ("DLMF 10.43.1 (ii)" "GR ")
   INTEGRAL "x^(1-p)*bessel_i(p-1,x)"
   M2-PATTERN
      ((MTIMES)
       ((%BESSEL_I) (P FREEVAR) (X VARP))
       ((MEXPT) (X VARP) (1-P SAMEDIFF P -1))))

;; DLMF 10.43.2
#S(TOI-ENTRY
   INTEGRAND "x^v*bessel_i(v,x)"
   SOURCE ("DLMF 10.43.2")
   COMMENT "v # 1/2"
   INTEGRAL
   "sqrt(%pi)*2^(v-1)*gamma(v+1/2)*x
   *(struve_l(v-1,x)*bessel_i(v,x)
    -bessel_i(v-1,x)*struve_l(v,x))"
   CONSTRAINT (ask# v 1//2)
   PARAMETERS (V)
   M2-PATTERN
      ((MTIMES)
       ((%BESSEL_I) (V FREEVAR) (X VARP))
       ((MEXPT) (X VARP) (V_ EQUAL V))))

#S(TOI-ENTRY
   INTEGRAND "x*bessel_i(1,x)"
   SOURCE ("DLMF 10.43.2 with v=1")
   INTEGRAL
   "(%pi/2)*x*(struve_l(0,x)*bessel_i(1,x)-bessel_i(0,x)*(struve_l(1,x)))")

;; DLMF 10.43.3.i %e^x*x^v*bessel_i(v,x), special cases for v=0 and v=1
#S(TOI-ENTRY
   INTEGRAND "%e^x*x^v*bessel_i(v,x)"
   SOURCE ("DLMF 10.43.3.i")
   COMMENT "v # -1/2"
   INTEGRAL "%e^x*x^(v+1)*(bessel_i(v,x)-bessel_i(v+1,x))/(2*v+1)"
   CONSTRAINT (ask# -1//2)
   PARAMETERS (V)
   M2-PATTERN
   ((MTIMES)
    ((%BESSEL_I) (V FREEVAR) (X VARP))
    ((MEXPT) (X VARP) (V_ EQUAL V))
    ((MEXPT) $%E (X VARP))))

#S(TOI-ENTRY
   INTEGRAND "%e^x*bessel_i(0,x)"
   SOURCE ("DLMF 10.43.3.i with v=0")
   INTEGRAL "%e^x*x*(bessel_i(0,x)-bessel_i(1,x))")

#S(TOI-ENTRY
   INTEGRAND "%e^x*x*bessel_i(1,x)"
   SOURCE ("DLMF 10.43.3.i with v=1")
   INTEGRAL "(1/3)*%e^x*x^2*(bessel_i(1,x)-bessel_i(2,x))")

;; DLMF 10.43.3.ii %e^-x*x^v*bessel_i(v,x), special cases for v=0 and v=1
#S(TOI-ENTRY
   INTEGRAND "%e^-x*x^v*bessel_i(v,x)"
   SOURCE ("DLMF 10.43.3.ii")
   COMMENT "v # -1/2"
   INTEGRAL "%e^-x*x^(v+1)*(bessel_i(v,x)+bessel_i(v+1,x))/(2*v+1)"
   CONSTRAINT (ask# v -1//2)
   PARAMETERS (V)
   M2-PATTERN
   ((MTIMES)
    ((%BESSEL_I) (V FREEVAR) (X VARP))
    ((MEXPT) (X VARP) (V_ EQUAL V))
    ((MEXPT) $%E ((MTIMES) -1 (X VARP)))))

#S(TOI-ENTRY
   INTEGRAND "%e^-x*bessel_i(0,x)"
   SOURCE ("DLMF 10.43.3.ii with v=0")
   INTEGRAL "%e^-x*x*(bessel_i(0,x)+bessel_i(1,x))")

#S(TOI-ENTRY
   INTEGRAND "%e^-x*x*bessel_i(1,x)"
   SOURCE ("DLMF 10.43.3.ii with v=1")
   INTEGRAL "(x^2/3)*%e^-x*(bessel_i(1,x)+bessel_i(2,x))")

;; DLMF 10.43.3.iii %e^x*x^-v*bessel_i(v,x), special case for v=1
;; Case v=0 is same as 10.43.3.i above
#S(TOI-ENTRY
   INTEGRAND "%e^x*x^-v*bessel_i(v,x)"
   SOURCE ("DLMF 10.43.3.iii")
   COMMENT "v # 1/2"
   INTEGRAL "%e^x*x^(1-v)*(bessel_i(v,x)-bessel_i(v-1,x))/(1-2*v)"
   CONSTRAINT (ask# v 1//2)
   M2-PATTERN
   ((MTIMES)
    ((%BESSEL_I) (V FREEVAR) (X VARP))
    ((MEXPT) (X VARP) (-V SAMEDIFF V))
    ((MEXPT) $%E (X VARP))))

#S(TOI-ENTRY
   INTEGRAND "%e^x*x^-1*bessel_i(1,x)"
   SOURCE ("DLMF 10.43.3.iii with v=1")
   INTEGRAL "-%e^x*(bessel_i(1,x)-bessel_i(0,x))")

;; DLMF 10.43.3.iv %e^-x*x^-v*bessel_i(v,x), special case for v=1
;; Case v=0 is same as 10.43.3.ii above
#S(TOI-ENTRY
   INTEGRAND "%e^-x*x^-v*bessel_i(v,x)"
   SOURCE ("DLMF 10.43.3.iv")
   COMMENT "v # 1/2"
   INTEGRAL "%e^-x*x^(1-v)*(bessel_i(v,x)+bessel_i(v-1,x))/(1-2*v)"
   CONSTRAINT (ask# v 1//2)
   PARAMETERS (V)
   M2-PATTERN
   ((MTIMES)
    ((%BESSEL_I) (V FREEVAR) (X VARP))
    ((MEXPT) (X VARP) (-V SAMEDIFF V))
    ((MEXPT) $%E ((MTIMES) -1 (X VARP)))))

#S(TOI-ENTRY
   INTEGRAND "%e^-x*x^-1*bessel_i(1,x)"
   SOURCE ("DLMF 10.43.3.iv with v=1")
   INTEGRAL "-%e^-x*(bessel_i(1,x)+bessel_i(0,x))")

;; Selected integrals containing bessel_k
;; A few bessel_k integrals 
#S(TOI-ENTRY
   INTEGRAND "x*bessel_k(0,x)"
   SOURCE ("DLMF 10.43.1 (i) with v=0")
   INTEGRAL "-x*bessel_k(1,x)")

#S(TOI-ENTRY
   INTEGRAND "x^2*bessel_k(1,x)"
   SOURCE ("DLMF 10.43.1.i with v = 1")
   INTEGRAL "-x^2*bessel_k(2,x)")

#S(TOI-ENTRY
   INTEGRAND "x*bessel_k(1,x)"
   SOURCE ("DLMF 10.43.2 with v=1")
   INTEGRAL
   "(%pi*bessel_k(0,x)*struve_l(1,x)*x)/2+(%pi*struve_l(0,x)*bessel_k(1,x)*x)/2")

#S(TOI-ENTRY
   INTEGRAND "%e^x*bessel_k(0,x)"
   SOURCE ("DLMF 10.43.3.i with v=0")
   INTEGRAL "%e^x*x*(bessel_k(0,x)+bessel_k(1,x))")

#S(TOI-ENTRY
   INTEGRAND "%e^x*x*bessel_k(1,x)"
   SOURCE ("DLMF 10.43.3.i with v=1")
   INTEGRAL "(1/3)*%e^x*x^2*(bessel_k(1,x)+bessel_k(2,x))")

#S(TOI-ENTRY
   INTEGRAND "%e^-x*bessel_k(0,x)"
   SOURCE ("DLMF 10.43.3.ii with v=0")
   INTEGRAL "%e^-x*x*(bessel_k(0,x)-bessel_k(1,x))")

#S(TOI-ENTRY
   INTEGRAND "%e^-x*x*bessel_k(1,x)"
   SOURCE ("DLMF 10.43.3.ii with v=1")
   INTEGRAL "(x^2/3)*%e^-x*(bessel_k(1,x)-bessel_k(2,x))")

#S(TOI-ENTRY
   INTEGRAND "%e^x*x^-1*bessel_k(1,x)"
   SOURCE ("DLMF 10.43.3.iii with v=1")
   INTEGRAL "-%e^x*(bessel_k(1,x)+bessel_k(0,x))")

#S(TOI-ENTRY
   INTEGRAND "%e^-x*x^-1*bessel_k(1,x)"
   SOURCE ("DLMF 10.43.3.iv with v=1")
   INTEGRAL "-%e^-x*(bessel_k(1,x)-bessel_k(0,x))")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; DLMF 11.7: Struve functions - Indefinite integrals
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
				      
#S(TOI-ENTRY
   INTEGRAND "x^v*struve_h(v-1,x)"
   SOURCE ("DLMF 11.7.1")
   INTEGRAL "x^v*struve_h(v,x)"
   M2-PATTERN
   ((MTIMES)
    ((MEXPT) (X VARP) (V FREEVAR))
    ((%STRUVE_H) (V-1 SAMESAME V -1) (X VARP))) )

#S(TOI-ENTRY
   INTEGRAND "x*struve_h(0,x)"
   SOURCE ("DLMF 11.7.1: case v=1")
   INTEGRAL "x*struve_h(1,x)")

#S(TOI-ENTRY
   ;;INTEGRAND "x^-v*struve_h(v+1,x)"
   INTEGRAND "x^-(u-1)*struve_h(u,x)"
   SOURCE ("DLMF 11.7.2")
   ;;INTEGRAL "-x^-v*struve_h(v,x)+(2^-v*x)/(sqrt(%pi)*gamma(v+3/2))"
   INTEGRAL "-x^-(u-1)*struve_h(u-1,x)+(2^-(u-1)*x)/(sqrt(%pi)*gamma(u+1/2))"
   M2-PATTERN
   ((MTIMES)
    ((%STRUVE_H) (U FREEVAR) (X VARP))
    ((MEXPT) (X VARP) (1-U SAMEDIFF U -1))))

#S(TOI-ENTRY
   INTEGRAND "x^v*struve_l(v-1,x)"
   SOURCE ("DLMF 11.7.3")
   INTEGRAL "x^v*struve_l(v,x)"
   M2-PATTERN
   ((MTIMES)
    ((MEXPT) (X VARP) (V FREEVAR))
    ((%STRUVE_L) (V-1 SAMESAME V -1) (X VARP))) )

#S(TOI-ENTRY
   INTEGRAND "x*struve_l(0,x)"
   SOURCE ("DLMF 11.7.3: case v=1")
   INTEGRAL "x*struve_l(1,x)" )

#S(TOI-ENTRY
   ;;INTEGRAND "x^-v*struve_l(v+1,x)"
   INTEGRAND "x^-(u-1)*struve_l(u,x)"
   SOURCE ("DLMF 11.7.4")
   ;;INTEGRAL "x^-v*struve_l(v,x)-(2^-v*x)/(sqrt(%pi)*gamma(v+3/2))" )
   INTEGRAL "x^-(u-1)*struve_l(u-1,x)-(2^-(u-1)*x)/(sqrt(%pi)*gamma(u+1/2))"
   M2-PATTERN
   ((MTIMES)
    ((%STRUVE_L) (U FREEVAR) (X VARP))
    ((MEXPT) (X VARP) (1-U SAMEDIFF U -1))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; DLMF 9.10: Airy functions - Indefinite integrals
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#S(TOI-ENTRY
   INTEGRAND "x*airy_ai(x)"
   SOURCE ("DLMF 9.10.8")
   INTEGRAL "airy_dai(x)")

#S(TOI-ENTRY
   INTEGRAND "x*airy_bi(x)"
   SOURCE ("DLMF 9.10.8")
   INTEGRAL "airy_dbi(x)")

#S(TOI-ENTRY
   INTEGRAND "x^2*airy_ai(x)"
   SOURCE ("DLMF 9.10.9")
   INTEGRAL "x*airy_dai(x)-airy_ai(x)")

#S(TOI-ENTRY
   INTEGRAND "x^2*airy_bi(x)"
   SOURCE ("DLMF 9.10.9")
   INTEGRAL "x*airy_dbi(x)-airy_bi(x)")

