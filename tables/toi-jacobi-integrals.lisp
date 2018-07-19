;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; G&R 5.13: Jacobian elliptic functions - indefinite integrals
;;
;; Complete coverage
;;
;; Note:
;; (1) G&R use k=sqrt(m) and k'=sqrt(1-k^2)=sqrt(1-m)
;; (2) G&R use am(u). From DLMF 22.16.1, am(x,k) = arcsin(sn(x,k))
;;     Therefore in maxima, am(u,m) = asin(jacobi_sn(u,m))
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; For negative powers, use 5.131.1 in original form
#S(TOI-ENTRY
   :INTEGRAND "jacobi_sn(u,m)^n"
   :SOURCE ("G&R 5.131.1")
   :COMMENT "n, integer < -1"
   :VAR U
   :INTEGRAL ; not used
   "((-m*n-3*m)*integrate(jacobi_sn(u,m)^(n+4),u)
     +(m*n+n+2*m+2)*integrate(jacobi_sn(u,m)^(n+2),u)
     +jacobi_cn(u,m)*jacobi_dn(u,m)*jacobi_sn(u,m)^(n+1))/(n+1)"
   :CONSTRAINT (askinteger> -1 n) )

;; For positive powers, use 5.131.1 in descending form
#S(TOI-ENTRY
   :INTEGRAND "jacobi_sn(u,m)^n"
   :SOURCE ("G&R 5.131.1 descending")
   :COMMENT "n, integer > 2"
   :VAR U
   :INTEGRAL
   ;; Not used. Correct but doesn't quite work
   ;; integrate(jacobi_sn(u,m) -> false sometimes
   "(((m+1)*n-2*m-2)*'integrate(jacobi_sn(u,m)^(n-2),u)
    +(3-n)*'integrate(jacobi_sn(u,m)^(n-4),u)
    +jacobi_cn(u,m)*jacobi_dn(u,m)*jacobi_sn(u,m)^(n-3))
    /(m*n-m)"
   :PARAMETERS (M N)
   :CONSTRAINT (askinteger> n 2)
   :INTEGRAL2
   (lambda (u m n)
     (meval
      `((MTIMES)
	((MEXPT) ((MPLUS) ((MTIMES) -1 ,M) ((MTIMES) ,M ,N)) -1)
	((MPLUS)
	 ((MTIMES) (($JACOBI_CN) ,U ,M) (($JACOBI_DN) ,U ,M)
	  ((MEXPT) (($JACOBI_SN) ,U ,M) ((MPLUS) -3 ,N)))
	 ((MTIMES) ((MPLUS) 3 ((MTIMES) -1 ,N))
	  (($INTEGRATE)
	   ((MEXPT) (($JACOBI_SN) ,U ,M) ((MPLUS) -4 ,N)) ,U))
	 ((MTIMES)
	  ((MPLUS) -2 ((MTIMES) -2 ,M)
	   ((MTIMES) ((MPLUS) 1 ,M) ,N))
	  (($INTEGRATE)
	   ((MEXPT) (($JACOBI_SN) ,U ,M) ((MPLUS) -2 ,N)) ,U))))))
)

;; For negative powers, use 5.131.2 in original form
#S(TOI-ENTRY
   :INTEGRAND "jacobi_cn(u,m)^n"
   :SOURCE ("G&R 5.131.2")
   :COMMENT "n, integer < -1"
   :VAR U
   :INTEGRAL
   "(m*(n+3)*integrate(jacobi_cn(u,m)^(n+4),u)
     +(1-2*m)*(n+2)*integrate(jacobi_cn(u,m)^(n+2),u)
     -jacobi_cn(u,m)^(n+1)*jacobi_dn(u,m)*jacobi_sn(u,m))
     /((1-m)*(n+1))"
   :CONSTRAINT (askinteger> -1 n) )

#S(TOI-ENTRY
   :INTEGRAND "jacobi_cn(u,m)^n"
   :SOURCE ("G&R 5.131.2")
   :COMMENT "n, integer > 2"
   :VAR U
   :INTEGRAL ; not used
   "(((2*m-1)*n-4*m+2)*'integrate(jacobi_cn(u,m)^(n-2),u)
    +((1-m)*n+3*m-3)*'integrate(jacobi_cn(u,m)^(n-4),u)
    +jacobi_cn(u,m)^(n-3)*jacobi_dn(u,m)*jacobi_sn(u,m))
   /(m*n-m)"
   :PARAMETERS (M N)
   :CONSTRAINT (askinteger> n 2)
   :INTEGRAL2
   (lambda (u m n)
     (meval
      `((MTIMES)
	((MEXPT) ((MPLUS) ((MTIMES) -1 ,M) ((MTIMES) ,M ,N)) -1)
	((MPLUS)
	 ((MTIMES) ((MEXPT) ((%JACOBI_CN) ,U ,M) ((MPLUS) -3 ,N))
	  ((%JACOBI_DN) ,U ,M) ((%JACOBI_SN) ,U ,M))
	 ((MTIMES)
	  ((MPLUS) -3 ((MTIMES) 3 ,M)
	   ((MTIMES) ((MPLUS) 1 ((MTIMES) -1 ,M)) ,N))
	  (($INTEGRATE)
	   ((MEXPT) ((%JACOBI_CN) ,U ,M) ((MPLUS) -4 ,N)) ,U))
	 ((MTIMES)
	  ((MPLUS) 2 ((MTIMES) -4 ,M)
	   ((MTIMES) ((MPLUS) -1 ((MTIMES) 2 ,M)) ,N))
	  (($INTEGRATE)
	   ((MEXPT) ((%JACOBI_CN) ,U ,M) ((MPLUS) -2 ,N)) ,U)))))))

;; For negative powers, use 5.131.3 in original form
#S(TOI-ENTRY
   :INTEGRAND "jacobi_dn(u,m)^n"
   :SOURCE ("G&R 5.131.3")
   :COMMENT "n, integer < -1"
   :VAR U
   :INTEGRAL
   "((n+3)*'integrate(jacobi_dn(u,m)^(n+4),u)
    +(m*n-2*n+2*m-4)*'integrate(jacobi_dn(u,m)^(n+2),u)
    -m*jacobi_cn(u,m)*jacobi_dn(u,m)^(n+1)*jacobi_sn(u,m))
   /(m*n-n+m-1)"
   :CONSTRAINT (askinteger> -1 n) )

;; For positive powers, use 5.131.3 in descending form
#S(TOI-ENTRY
   :INTEGRAND "jacobi_dn(u,m)^n"
   :SOURCE ("G&R 5.131.3 descending")
   :COMMENT "n, integer > 2"
   :VAR U
   :INTEGRAL ; not used
   "((-m*n+2*n+2*m-4)*'integrate(jacobi_dn(u,m)^(n-2),u)
    +(m*n-n-3*m+3)*'integrate(jacobi_dn(u,m)^(n-4),u)
    +m*jacobi_cn(u,m)*jacobi_dn(u,m)^(n-3)*jacobi_sn(u,m))/(n-1)"
   :PARAMETERS (M N)
   :CONSTRAINT (askinteger> n 2)
   :INTEGRAL2
   (lambda (u m n)
     (meval
      `((MTIMES)
	((MEXPT) ((MPLUS) -1 ,N) -1)
	((MPLUS)
	 ((MTIMES)
	  ,M
	  ((%JACOBI_CN) ,U ,M)
	  ((MEXPT) ((%JACOBI_DN) ,U ,M) ((MPLUS) -3 ,N))
	  ((%JACOBI_SN) ,U ,M))
	 ((MTIMES)
	  ((MPLUS) 3 ((MTIMES) -3 ,M) ((MTIMES) -1 ,N) ((MTIMES) ,M ,N))
	  (($INTEGRATE)
	   ((MEXPT) ((%JACOBI_DN) ,U ,M) ((MPLUS) -4 ,N)) ,U))
	 ((MTIMES)
	  ((MPLUS) -4 ((MTIMES) 2 ,M) ((MTIMES) 2 ,N) ((MTIMES) -1 ,M ,N))
	  (($INTEGRATE)
	   ((MEXPT) ((%JACOBI_DN) ,U ,M) ((MPLUS) -2 ,N)) ,U)))))))

#S(TOI-ENTRY
   :INTEGRAND "1/jacobi_sn(u,m)"
   :SOURCE ("G&R 5.132.1")
   :VAR U
   :INTEGRAL "log((jacobi_dn(u,m)-jacobi_cn(u,m))/jacobi_sn(u,m))")

#S(TOI-ENTRY
   :INTEGRAND "1/jacobi_cn(u,m)"
   :SOURCE ("G&R 5.132.2")
   :VAR U
   :INTEGRAL "log((sqrt(1-m)*jacobi_sn(u,m)+jacobi_dn(u,m))/jacobi_cn(u,m))/sqrt(1-m)")

#S(TOI-ENTRY
   :INTEGRAND "1/jacobi_dn(u,m)"
   :SOURCE ("G&R 5.132.3")
   :VAR U
   :INTEGRAL "acos(jacobi_cn(u,m)/jacobi_dn(u,m))/sqrt(1-m)")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_sn(u,m)^2"
   :SOURCE ("G&R 5.134.1")
   :VAR U
   :INTEGRAL "(u-elliptic_e(asin(jacobi_sn(u,m)),m))/m")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_cn(u,m)^2"
   :SOURCE ("G&R 5.134.2")
   :VAR U
   :INTEGRAL "(elliptic_e(asin(jacobi_sn(u,m)),m)-(1-m)*u)/m")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_dn(u,m)^2"
   :SOURCE ("G&R 5.134.3")
   :VAR U
   :INTEGRAL "elliptic_e(asin(jacobi_sn(u,m)),m)")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_sn(u,m)/jacobi_cn(u,m)"
   :SOURCE ("G&R 5.135.1")
   :VAR U
   :INTEGRAL "log((jacobi_dn(u,m)+sqrt(1-m))/jacobi_cn(u,m))/sqrt(1-m)")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_sn(u,m)/jacobi_dn(u,m)"
   :SOURCE ("G&R 5.135.2")
   :VAR U
   :INTEGRAL "acot(sqrt(m)*jacobi_cn(u,m)/sqrt(1-m))/(sqrt(m)*sqrt(1-m))")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_cn(u,m)/jacobi_sn(u,m)"
   :SOURCE ("G&R 5.135.3")
   :VAR U
   :INTEGRAL "log((1-jacobi_dn(u,m))/jacobi_sn(u,m))")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_cn(u,m)/jacobi_dn(u,m)"
   :SOURCE ("G&R 5.135.4")
   :VAR U
   :INTEGRAL "-log((1-sqrt(m)*jacobi_sn(u,m))/jacobi_dn(u,m))/sqrt(m)")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_dn(u,m)/jacobi_cn(u,m)"
   :SOURCE ("G&R 5.135.5")
   :VAR U
   :INTEGRAL "log((1+jacobi_sn(u,m))/jacobi_cn(u,m))")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_dn(u,m)/jacobi_sn(u,m)"
   :SOURCE ("G&R 5.135.6")
   :VAR U
   :INTEGRAL "log((1-jacobi_cn(u,m))/(1+jacobi_cn(u,m)))/2")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_sn(u,m)*jacobi_cn(u,m)"
   :SOURCE ("G&R 5.136.1")
   :VAR U
   :INTEGRAL "-jacobi_dn(u,m)/m")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_sn(u,m)*jacobi_dn(u,m)"
   :SOURCE ("G&R 5.136.2")
   :VAR U
   :INTEGRAL "-jacobi_cn(u,m)")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_cn(u,m)*jacobi_dn(u,m)"
   :SOURCE ("G&R 5.136.3")
   :VAR U
   :INTEGRAL "jacobi_sn(u,m)")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_sn(u,m)/jacobi_cn(u,m)^2"
   :SOURCE ("G&R 5.137.1")
   :VAR U
   :INTEGRAL "(1/(1-m))*jacobi_dn(u,m)/jacobi_cn(u,m)")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_sn(u,m)/jacobi_dn(u,m)^2"
   :SOURCE ("G&R 5.137.2")
   :VAR U
   :INTEGRAL "-(1/(1-m))*jacobi_cn(u,m)/jacobi_dn(u,m)")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_cn(u,m)/jacobi_sn(u,m)^2"
   :SOURCE ("G&R 5.137.3")
   :VAR U
   :INTEGRAL "-jacobi_dn(u,m)/jacobi_sn(u,m)")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_cn(u,m)/jacobi_dn(u,m)^2"
   :SOURCE ("G&R 5.137.4")
   :VAR U
   :INTEGRAL "jacobi_sn(u,m)/jacobi_dn(u,m)")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_dn(u,m)/jacobi_sn(u,m)^2"
   :SOURCE ("G&R 5.137.5")
   :VAR U
   :INTEGRAL "-jacobi_cn(u,m)/jacobi_sn(u,m)")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_dn(u,m)/jacobi_cn(u,m)^2"
   :SOURCE ("G&R 5.137.6")
   :VAR U
   :INTEGRAL "jacobi_sn(u,m)/jacobi_cn(u,m)")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_cn(u,m)/(jacobi_sn(u,m)*jacobi_dn(u,m))"
   :SOURCE ("G&R 5.138.1")
   :VAR U
   :INTEGRAL "log(jacobi_sn(u,m)/jacobi_dn(u,m))")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_sn(u,m)/(jacobi_cn(u,m)*jacobi_dn(u,m))"
   :SOURCE ("G&R 5.138.2")
   :VAR U
   :INTEGRAL "log(jacobi_dn(u,m)/jacobi_cn(u,m))/(1-m)")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_dn(u,m)/(jacobi_sn(u,m)*jacobi_cn(u,m))"
   :SOURCE ("G&R 5.138.3")
   :VAR U
   :INTEGRAL "log(jacobi_sn(u,m)/jacobi_cn(u,m))")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_cn(u,m)*jacobi_dn(u,m)/jacobi_sn(u,m)"
   :SOURCE ("G&R 5.139.1")
   :VAR U
   :INTEGRAL "log(jacobi_sn(u,m))")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_sn(u,m)*jacobi_dn(u,m)/jacobi_cn(u,m)"
   :SOURCE ("G&R 5.139.2")
   :VAR U
   :INTEGRAL "-log(jacobi_cn(u,m))")

#S(TOI-ENTRY
   :INTEGRAND "jacobi_sn(u,m)*jacobi_cn(u,m)/jacobi_dn(u,m)"
   :SOURCE ("G&R 5.139.3")
   :VAR U
   :INTEGRAL "-log(jacobi_dn(u,m))/m")



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; G&R 5.3: The Sine Integral and the Cosine Integral
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#S(TOI-ENTRY
   :INTEGRAND "cos(a*x)*expintegral_ci(b*x)"
   :SOURCE ("G&R 5.31.1")
   :INTEGRAL
   "sin(a*x)*expintegral_ci(b*x)/a-(expintegral_si((a+b)*x)+expintegral_si((a-b)*x))/(2*a)")

#S(TOI-ENTRY
   :INTEGRAND "sin(a*x)*expintegral_ci(b*x)"
   :SOURCE ("G&R 5.31.2")
   :COMMENT "a#b"
   :INTEGRAL
   "-cos(a*x)*expintegral_ci(b*x)/a+(expintegral_ci((a+b)*x)+expintegral_ci((a-b)*x))/(2*a)"
   :CONSTRAINT (ask# a b) )

#S(TOI-ENTRY
   :INTEGRAND "cos(a*x)*expintegral_si(b*x)"
   :SOURCE ("G&R 5.32.1")
   :COMMENT "a#b"
   :INTEGRAL
   "sin(a*x)*expintegral_si(b*x)/a+(expintegral_ci((a+b)*x)-expintegral_ci((a-b)*x))/(2*a)"
   :CONSTRAINT (ask# a b) )

#S(TOI-ENTRY
   :INTEGRAND "sin(a*x)*expintegral_si(b*x)"
   :SOURCE ("G&R 5.32.1")
   :INTEGRAL
   "-cos(a*x)*expintegral_si(b*x)/a+(expintegral_si((a+b)*x)-expintegral_si((a-b)*x))/(2*a)")

#S(TOI-ENTRY
   :INTEGRAND "expintegral_ci(a*x)*expintegral_ci(b*x)"
   :SOURCE ("G&R 5.33.1")
   :INTEGRAL
   "x*expintegral_ci(a*x)*expintegral_ci(b*x)
    +(expintegral_si((a+b)*x)+expintegral_si((a-b)*x))/(2*a)
    +(expintegral_si((a+b)*x)+expintegral_si((b-a)*x))/(2*b)
    -sin(a*x)*expintegral_ci(b*x)/a-sin(b*x)*expintegral_ci(a*x)/b" )

#S(TOI-ENTRY
   :INTEGRAND "expintegral_ci(a*x)^2"
   :SOURCE ("G&R 5.33.1, special case a=b")
   :INTEGRAL
   "(a*x*expintegral_ci(a*x)^2-2*sin(a*x)*expintegral_ci(a*x)+expintegral_si(2*a*x))/a")

#S(TOI-ENTRY
   :INTEGRAND "expintegral_si(a*x)*expintegral_si(b*x)"
   :SOURCE ("G&R 5.33.2, 7th ed is incorrect")
   :INTEGRAL
   #| G&R 7th ed.  This wrong.
   "x*expintegral_si(a*x)*expintegral_si(b*x)
    -(expintegral_si((a+b)*x)+expintegral_si((a-b)*x))/(2*b)
    -(expintegral_si((a+b)*x)+expintegral_si((b+a)*x))/(2*a)
    +cos(a*x)*expintegral_si(b*x)/a+cos(b*x)*expintegral_si(a*x)/b" 
   |#
   "x*expintegral_si(a*x)*expintegral_si(b*x)
    -((expintegral_si((a+b)*x)+expintegral_si((a-b)*x))/(2*b))
    -((expintegral_si((a+b)*x)+expintegral_si((b-a)*x))/(2*a))
    +cos(a*x)*expintegral_si(b*x)/a+cos(b*x)*expintegral_si(a*x)/b" )

#S(TOI-ENTRY
   :INTEGRAND "expintegral_si(a*x)^2"
   :SOURCE ("G&R 5.33.2, special case a=b")
   :INTEGRAL
   "(2*cos(a*x)*expintegral_si(a*x)+a*x*expintegral_si(a*x)^2-expintegral_si(2*a*x))/a")

#S(TOI-ENTRY
   :INTEGRAND "expintegral_si(a*x)*expintegral_ci(b*x)"
   :SOURCE ("G&R 5.33.3")
   :COMMENT "a#b"
   :INTEGRAL
   "x*expintegral_si(a*x)*expintegral_ci(b*x)
    +(cos(a*x)*expintegral_ci(b*x)/a)-(sin(b*x)*expintegral_si(a*x)/b)
    -((1/(2*a)+1/(2*b))*expintegral_ci((a+b)*x))
    -((1/(2*a)-1/(2*b))*expintegral_ci((a-b)*x))"
   :CONSTRAINT (ask# a b) )

;; Other indefinite integrals from http://functions.wolfram.com

#S(TOI-ENTRY
   :INTEGRAND "x*expintegral_si(a*x)"
   :SOURCE ("http://functions.wolfram.com/06.37.21.0006.01")
   :INTEGRAL
   "(a^2*expintegral_si(a*x)*x^2+a*cos(a*x)*x-sin(a*x))/(2*a^2)")

#S(TOI-ENTRY
   :INTEGRAND "expintegral_si(a*x)/x^2"
   :SOURCE ("http://functions.wolfram.com/06.37.21.0008.01")
   :INTEGRAL
   "(a*x*expintegral_ci(a*x)-sin(a*x)-expintegral_si(a*x))/x")

#|  ;; Covered by G&R 5.32.1
#S(TOI-ENTRY
   :INTEGRAND "sin(a*x)*expintegral_si(a*x)"
   :SOURCE ("http://functions.wolfram.com/06.37.21.0021.01")
   :INTEGRAL
   "(expintegral_si(2*a*x)-2*cos(a*x)*expintegral_si(a*x))/(2*a)")
|#

#S(TOI-ENTRY
   :INTEGRAND "cos(a*x)*expintegral_si(a*x)"
   :SOURCE ("http://functions.wolfram.com/06.37.21.0023.01")
   :INTEGRAL
   "(expintegral_ci(2*a*x)-log(a*x)+2*sin(a*x)*expintegral_si(a*x))/(2*a)")

#S(TOI-ENTRY
   :INTEGRAND "x*expintegral_ci(a*x)"
   :SOURCE ("http://functions.wolfram.com/06.38.21.0006.01")
   :INTEGRAL
   "-((-a^2*expintegral_ci(a*x)*x^2+a*sin(a*x)*x+cos(a*x))/(2*a^2))")

#S(TOI-ENTRY
   :INTEGRAND "expintegral_ci(a*x)/x^2"
   :SOURCE ("http://functions.wolfram.com/06.38.21.0008.01")
   :INTEGRAL
   "-(a*x*expintegral_si(a*x)+cos(a*x)+expintegral_ci(a*x))/x")

#S(TOI-ENTRY
   :INTEGRAND "sin(a*x)*expintegral_ci(a*x)"
   :SOURCE ("http://functions.wolfram.com/06.38.21.0021.01")
   :INTEGRAL
   "(expintegral_ci(2*a*x)+log(a*x)-2*cos(a*x)*expintegral_ci(a*x))/(2*a)")

#| ;; covered by G&R 5.31.1
#S(TOI-ENTRY
   :INTEGRAND "cos(a*x)*expintegral_ci(a*x)"
   :SOURCE ("http://functions.wolfram.com/06.38.21.0023.01")
   :INTEGRAL
   "(2*sin(a*x)*expintegral_ci(a*x)-expintegral_si(2*a*x))/(2*a)" )
|#
