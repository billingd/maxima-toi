;; test-definite.lisp
;;
;; Some definite integrals

#S(TOI-ENTRY
   :INTEGRAND "x"
   :COMMENT "trivial for testing"
   :LBOUND 0
   :UBOUND 1
   :INTEGRAL "1/2")

#S(TOI-ENTRY
   :INTEGRAND "x"
   :COMMENT "trivial for testing"
   :LBOUND 0
   :UBOUND 2
   :INTEGRAL "2")

#S(TOI-ENTRY
   :INTEGRAND "x^2"
   :COMMENT "trivial for testing"
   :LBOUND 0
   :UBOUND 1
   :INTEGRAL "1/3")

#S(TOI-ENTRY
   :INTEGRAND "x^2"
   :COMMENT "trivial for testing"
   :LBOUND 0
   :UBOUND 2
   :INTEGRAL "8/3")

#S(TOI-ENTRY
   :INTEGRAND "sin(x)^2"
   :COMMENT "trivial for testing"
   :LBOUND 0
   :UBOUND $%pi
   :INTEGRAL "%pi/2")

#S(TOI-ENTRY
   :INTEGRAND "sin(x)^2"
   :COMMENT "trivial for testing"
   :LBOUND 0
   :UBOUND ((MTIMES) ((RAT) 1 2) $%PI)
   :INTEGRAL "%pi/4")

