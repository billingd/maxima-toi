;; Some definite integrals

;; Non-trivial that maxima cannot solve

#S(TOI-ENTRY
   :INTEGRAND "tan(x)/x"
   :SOURCE ("CRC 603")
   :LBOUND 0
   :UBOUND $inf
   :INTEGRAL "%pi/2")

#S(TOI-ENTRY
   :INTEGRAND "tan(a*x)/x"
   :SOURCE ("CRC 604")
   :PARAMETERS (A) ; FIXME: This isn't set by pre-processor
   :LBOUND 0
   :UBOUND $inf
   :CONSTRAINT (ask> a)
   :INTEGRAL "%pi/2")

#S(TOI-ENTRY
   :INTEGRAND "sin(x)^3/x^2"
   :SOURCE ("CRC 622")
   :LBOUND 0
   :UBOUND $inf
   :INTEGRAL "3*log(3)/4")

;; DLMF 9.11(v) Definite integrals of Airy functions 

#S(TOI-ENTRY
   :INTEGRAND "airy_ai(x)^3"
   :SOURCE ("DLMF 9.11.16")
   :LBOUND $minf
   :UBOUND $inf
   :INTEGRAL "gamma(1/3)^2/(4*%pi^2)")

#S(TOI-ENTRY
   :INTEGRAND "airy_ai(x)^2*airy_bi(x)"
   :SOURCE ("DLMF 9.11.17")
   :LBOUND $minf
   :UBOUND $inf
   :INTEGRAL "gamma(1/3)^2/(4*sqrt(3)*%pi^2)")

#S(TOI-ENTRY
   :INTEGRAND "airy_ai(x)^4"
   :SOURCE ("DLMF 9.11.18")
   :LBOUND 0
   :UBOUND $inf
   :INTEGRAL "log(3)/(24*%pi^2)")

;; DLMF 10.9 Integral Representations of Bessel functions

;; DLMF 10.9(i) Integral Representations along the real line

;; Bessel's integral
#S(TOI-ENTRY
   :INTEGRAND "cos(z*sin(theta))"
   :SOURCE ("DLMF 10.9.1")
   :VAR THETA
   :PARAMETERS (Z) ; FIXME: Should be set by pre-processor
   :LBOUND 0
   :UBOUND $%pi
   :INTEGRAL "%pi*bessel_j(0,z)")

;; FIXME - generated M2-PATTERN broken
#S(TOI-ENTRY
   :INTEGRAND "cos(z*sin(theta)-n*theta)"
   :COMMENT "n integer"
   :SOURCE ("DLMF 10.9.2i")
   :VAR THETA
   :PARAMETERS (N Z) ; FIXME: Should be set by pre-processor
   :LBOUND 0
   :UBOUND $%pi
   :CONSTRAINT ($askinteger n)
   :INTEGRAL "%pi*bessel_j(n,z)")

;; placeholder for DLMF 10.9.2ii
#S(TOI-ENTRY
   :COMMENT "placeholder for DLMF 10.9.2ii" )
