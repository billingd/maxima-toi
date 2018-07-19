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
