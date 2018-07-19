#S(TOI-ENTRY
  :INDEX 1100
  :INTEGRAND "x^(p+1)*bessel_j(p,x)"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.22.1" "GR 5.52.1")
  :INTEGRAL "x^(p+1)*bessel_j(p+1,x)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) P X) ((MEXPT) X ((MPLUS) 1 P)))
  :INTEGRAL2 ((MTIMES) ((%BESSEL_J) ((MPLUS) 1 P) X) ((MEXPT) X ((MPLUS) 1 P)))
  :M2-PATTERN ((MTIMES) ((%BESSEL_J) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (P+1 SAMESAME P 1)))
)

#S(TOI-ENTRY
  :INDEX 1101
  :INTEGRAND "x^(p+1)*bessel_y(p,x)"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.22.1" "GR 5.52.1")
  :INTEGRAL "x^(p+1)*bessel_y(p+1,x)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) P X) ((MEXPT) X ((MPLUS) 1 P)))
  :INTEGRAL2 ((MTIMES) ((%BESSEL_Y) ((MPLUS) 1 P) X) ((MEXPT) X ((MPLUS) 1 P)))
  :M2-PATTERN ((MTIMES) ((%BESSEL_Y) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (P+1 SAMESAME P 1)))
)

#S(TOI-ENTRY
  :INDEX 1102
  :INTEGRAND "x^(p+1)*hankel_1(p,x)"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.22.1" "GR 5.52.1")
  :INTEGRAL "x^(p+1)*hankel_1(p+1,x)"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) P X) ((MEXPT) X ((MPLUS) 1 P)))
  :INTEGRAL2 ((MTIMES) ((%HANKEL_1) ((MPLUS) 1 P) X) ((MEXPT) X ((MPLUS) 1 P)))
  :M2-PATTERN ((MTIMES) ((%HANKEL_1) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (P+1 SAMESAME P 1)))
)

#S(TOI-ENTRY
  :INDEX 1103
  :INTEGRAND "x^(p+1)*hankel_2(p,x)"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.22.1" "GR 5.52.1")
  :INTEGRAL "x^(p+1)*hankel_2(p+1,x)"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_2) P X) ((MEXPT) X ((MPLUS) 1 P)))
  :INTEGRAL2 ((MTIMES) ((%HANKEL_2) ((MPLUS) 1 P) X) ((MEXPT) X ((MPLUS) 1 P)))
  :M2-PATTERN ((MTIMES) ((%HANKEL_2) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (P+1 SAMESAME P 1)))
)

#S(TOI-ENTRY
  :INDEX 1104
  :INTEGRAND "x^(1-p)*bessel_j(p,x)"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.22.1" "GR 5.52.2")
  :INTEGRAL "-x^(1-p)*bessel_j(p-1,x)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) P X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 P))))
  :INTEGRAL2 ((MTIMES) -1 ((%BESSEL_J) ((MPLUS) -1 P) X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 P))))
  :M2-PATTERN ((MTIMES) ((%BESSEL_J) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (|1-P| SAMEDIFF P -1)))
)

#S(TOI-ENTRY
  :INDEX 1105
  :INTEGRAND "x^(1-p)*bessel_y(p,x)"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.22.1" "GR 5.52.2")
  :INTEGRAL "-x^(1-p)*bessel_y(p-1,x)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) P X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 P))))
  :INTEGRAL2 ((MTIMES) -1 ((%BESSEL_Y) ((MPLUS) -1 P) X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 P))))
  :M2-PATTERN ((MTIMES) ((%BESSEL_Y) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (|1-P| SAMEDIFF P -1)))
)

#S(TOI-ENTRY
  :INDEX 1106
  :INTEGRAND "x^(1-p)*hankel_1(p,x)"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.22.1" "GR 5.52.2")
  :INTEGRAL "-x^(1-p)*hankel_1(p-1,x)"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) P X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 P))))
  :INTEGRAL2 ((MTIMES) -1 ((%HANKEL_1) ((MPLUS) -1 P) X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 P))))
  :M2-PATTERN ((MTIMES) ((%HANKEL_1) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (|1-P| SAMEDIFF P -1)))
)

#S(TOI-ENTRY
  :INDEX 1107
  :INTEGRAND "x^(1-p)*hankel_2(p,x)"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.22.1" "GR 5.52.2")
  :INTEGRAL "-x^(1-p)*hankel_2(p-1,x)"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_2) P X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 P))))
  :INTEGRAL2 ((MTIMES) -1 ((%HANKEL_2) ((MPLUS) -1 P) X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 P))))
  :M2-PATTERN ((MTIMES) ((%HANKEL_2) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (|1-P| SAMEDIFF P -1)))
)

#S(TOI-ENTRY
  :INDEX 1108
  :INTEGRAND "x*bessel_j(p,a*x)^2"
  :VAR X
  :PARAMETERS (A P)
  :SOURCE ("GR 5.54.1")
  :INTEGRAL "(1/2)*x^2*(bessel_j(p,a*x)^2-bessel_j(p-1,a*x)*bessel_j(p+1,a*x))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%BESSEL_J) P ((MTIMES) A X)) 2) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MPLUS) ((MEXPT) ((%BESSEL_J) P ((MTIMES) A X)) 2) ((MTIMES) -1 ((%BESSEL_J) ((MPLUS) -1 P) ((MTIMES) A X)) ((%BESSEL_J) ((MPLUS) 1 P) ((MTIMES) A X)))) ((MEXPT) X 2))
  :M2-PATTERN ((MTIMES) (X VARP) ((MEXPT) ((%BESSEL_J) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) 2))
)

#S(TOI-ENTRY
  :INDEX 1109
  :INTEGRAND "x*bessel_y(p,a*x)^2"
  :VAR X
  :PARAMETERS (A P)
  :SOURCE ("GR 5.54.1")
  :INTEGRAL "(1/2)*x^2*(bessel_y(p,a*x)^2-bessel_y(p-1,a*x)*bessel_y(p+1,a*x))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%BESSEL_Y) P ((MTIMES) A X)) 2) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MPLUS) ((MEXPT) ((%BESSEL_Y) P ((MTIMES) A X)) 2) ((MTIMES) -1 ((%BESSEL_Y) ((MPLUS) -1 P) ((MTIMES) A X)) ((%BESSEL_Y) ((MPLUS) 1 P) ((MTIMES) A X)))) ((MEXPT) X 2))
  :M2-PATTERN ((MTIMES) (X VARP) ((MEXPT) ((%BESSEL_Y) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) 2))
)

#S(TOI-ENTRY
  :INDEX 1110
  :INTEGRAND "x*hankel_1(p,a*x)^2"
  :VAR X
  :PARAMETERS (A P)
  :SOURCE ("GR 5.54.1")
  :INTEGRAL "(1/2)*x^2*(hankel_1(p,a*x)^2-hankel_1(p-1,a*x)*hankel_1(p+1,a*x))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%HANKEL_1) P ((MTIMES) A X)) 2) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MPLUS) ((MEXPT) ((%HANKEL_1) P ((MTIMES) A X)) 2) ((MTIMES) -1 ((%HANKEL_1) ((MPLUS) -1 P) ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) 1 P) ((MTIMES) A X)))) ((MEXPT) X 2))
  :M2-PATTERN ((MTIMES) (X VARP) ((MEXPT) ((%HANKEL_1) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) 2))
)

#S(TOI-ENTRY
  :INDEX 1111
  :INTEGRAND "x*hankel_2(p,a*x)^2"
  :VAR X
  :PARAMETERS (A P)
  :SOURCE ("GR 5.54.1")
  :INTEGRAL "(1/2)*x^2*(hankel_2(p,a*x)^2-hankel_2(p-1,a*x)*hankel_2(p+1,a*x))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%HANKEL_2) P ((MTIMES) A X)) 2) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MPLUS) ((MEXPT) ((%HANKEL_2) P ((MTIMES) A X)) 2) ((MTIMES) -1 ((%HANKEL_2) ((MPLUS) -1 P) ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 P) ((MTIMES) A X)))) ((MEXPT) X 2))
  :M2-PATTERN ((MTIMES) (X VARP) ((MEXPT) ((%HANKEL_2) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) 2))
)

#S(TOI-ENTRY
  :INDEX 1112
  :INTEGRAND "x*bessel_j(0,x)"
  :VAR X
  :SOURCE ("GR 5.56.2")
  :INTEGRAL "x*bessel_j(1,x)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) 0 X) X)
  :INTEGRAL2 ((MTIMES) ((%BESSEL_J) 1 X) X)
  :M2-PATTERN ((MTIMES) ((%BESSEL_J) 0 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1113
  :INTEGRAND "x*bessel_y(0,x)"
  :VAR X
  :SOURCE ("GR 5.56.2")
  :INTEGRAL "x*bessel_y(1,x)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) 0 X) X)
  :INTEGRAL2 ((MTIMES) ((%BESSEL_Y) 1 X) X)
  :M2-PATTERN ((MTIMES) ((%BESSEL_Y) 0 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1114
  :INTEGRAND "x*hankel_1(0,x)"
  :VAR X
  :SOURCE ("GR 5.56.2")
  :INTEGRAL "x*hankel_1(1,x)"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) 0 X) X)
  :INTEGRAL2 ((MTIMES) ((%HANKEL_1) 1 X) X)
  :M2-PATTERN ((MTIMES) ((%HANKEL_1) 0 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1115
  :INTEGRAND "x*hankel_2(0,x)"
  :VAR X
  :SOURCE ("GR 5.56.2")
  :INTEGRAL "x*hankel_2(1,x)"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_2) 0 X) X)
  :INTEGRAL2 ((MTIMES) ((%HANKEL_2) 1 X) X)
  :M2-PATTERN ((MTIMES) ((%HANKEL_2) 0 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1116
  :INTEGRAND "bessel_j(p,x)*x^p"
  :COMMENT "p # -1/2"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.22.2")
  :INTEGRAL "sqrt(%pi)*2^(p-1)*(struve_h(p-1,x)*bessel_j(p,x)-bessel_j(p-1,x)*struve_h(p,x))*gamma(p+1/2)*x"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) P X) ((MEXPT) X P))
  :INTEGRAL2 ((MTIMES) ((MEXPT) $%PI ((RAT) 1 2)) ((MEXPT) 2 ((MPLUS) -1 P)) ((MPLUS) ((MTIMES) ((%STRUVE_H) ((MPLUS) -1 P) X) ((%BESSEL_J) P X)) ((MTIMES) -1 ((%BESSEL_J) ((MPLUS) -1 P) X) ((%STRUVE_H) P X))) ((%GAMMA) ((MPLUS) ((RAT) 1 2) P)) X)
  :CONSTRAINT (ASK# P |-1//2|)
  :M2-PATTERN ((MTIMES) ((%BESSEL_J) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (P_ EQUAL P)))
)

#S(TOI-ENTRY
  :INDEX 1117
  :INTEGRAND "bessel_y(p,x)*x^p"
  :COMMENT "p # -1/2"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.22.2")
  :INTEGRAL "sqrt(%pi)*2^(p-1)*(struve_h(p-1,x)*bessel_y(p,x)-bessel_y(p-1,x)*struve_h(p,x))*gamma(p+1/2)*x"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) P X) ((MEXPT) X P))
  :INTEGRAL2 ((MTIMES) ((MEXPT) $%PI ((RAT) 1 2)) ((MEXPT) 2 ((MPLUS) -1 P)) ((MPLUS) ((MTIMES) ((%STRUVE_H) ((MPLUS) -1 P) X) ((%BESSEL_Y) P X)) ((MTIMES) -1 ((%BESSEL_Y) ((MPLUS) -1 P) X) ((%STRUVE_H) P X))) ((%GAMMA) ((MPLUS) ((RAT) 1 2) P)) X)
  :CONSTRAINT (ASK# P |-1//2|)
  :M2-PATTERN ((MTIMES) ((%BESSEL_Y) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (P_ EQUAL P)))
)

#S(TOI-ENTRY
  :INDEX 1118
  :INTEGRAND "hankel_1(p,x)*x^p"
  :COMMENT "p # -1/2"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.22.2")
  :INTEGRAL "sqrt(%pi)*2^(p-1)*(struve_h(p-1,x)*hankel_1(p,x)-hankel_1(p-1,x)*struve_h(p,x))*gamma(p+1/2)*x"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) P X) ((MEXPT) X P))
  :INTEGRAL2 ((MTIMES) ((MEXPT) $%PI ((RAT) 1 2)) ((MEXPT) 2 ((MPLUS) -1 P)) ((MPLUS) ((MTIMES) ((%STRUVE_H) ((MPLUS) -1 P) X) ((%HANKEL_1) P X)) ((MTIMES) -1 ((%HANKEL_1) ((MPLUS) -1 P) X) ((%STRUVE_H) P X))) ((%GAMMA) ((MPLUS) ((RAT) 1 2) P)) X)
  :CONSTRAINT (ASK# P |-1//2|)
  :M2-PATTERN ((MTIMES) ((%HANKEL_1) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (P_ EQUAL P)))
)

#S(TOI-ENTRY
  :INDEX 1119
  :INTEGRAND "hankel_2(p,x)*x^p"
  :COMMENT "p # -1/2"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.22.2")
  :INTEGRAL "sqrt(%pi)*2^(p-1)*(struve_h(p-1,x)*hankel_2(p,x)-hankel_2(p-1,x)*struve_h(p,x))*gamma(p+1/2)*x"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_2) P X) ((MEXPT) X P))
  :INTEGRAL2 ((MTIMES) ((MEXPT) $%PI ((RAT) 1 2)) ((MEXPT) 2 ((MPLUS) -1 P)) ((MPLUS) ((MTIMES) ((%STRUVE_H) ((MPLUS) -1 P) X) ((%HANKEL_2) P X)) ((MTIMES) -1 ((%HANKEL_2) ((MPLUS) -1 P) X) ((%STRUVE_H) P X))) ((%GAMMA) ((MPLUS) ((RAT) 1 2) P)) X)
  :CONSTRAINT (ASK# P |-1//2|)
  :M2-PATTERN ((MTIMES) ((%HANKEL_2) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (P_ EQUAL P)))
)

#S(TOI-ENTRY
  :INDEX 1120
  :INTEGRAND "bessel_j(1,x)*x"
  :VAR X
  :SOURCE ("DLMF 10.22.2 with p=1")
  :INTEGRAL "%pi*x*(struve_h(0,x)*bessel_j(1,x)-bessel_j(0,x)*struve_h(1,x))/2"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) 1 X) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) $%PI ((MPLUS) ((MTIMES) ((%STRUVE_H) 0 X) ((%BESSEL_J) 1 X)) ((MTIMES) -1 ((%BESSEL_J) 0 X) ((%STRUVE_H) 1 X))) X)
  :M2-PATTERN ((MTIMES) ((%BESSEL_J) 1 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1121
  :INTEGRAND "bessel_y(1,x)*x"
  :VAR X
  :SOURCE ("DLMF 10.22.2 with p=1")
  :INTEGRAL "%pi*x*(struve_h(0,x)*bessel_y(1,x)-bessel_y(0,x)*struve_h(1,x))/2"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) 1 X) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) $%PI ((MPLUS) ((MTIMES) ((%STRUVE_H) 0 X) ((%BESSEL_Y) 1 X)) ((MTIMES) -1 ((%BESSEL_Y) 0 X) ((%STRUVE_H) 1 X))) X)
  :M2-PATTERN ((MTIMES) ((%BESSEL_Y) 1 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1122
  :INTEGRAND "hankel_1(1,x)*x"
  :VAR X
  :SOURCE ("DLMF 10.22.2 with p=1")
  :INTEGRAL "%pi*x*(struve_h(0,x)*hankel_1(1,x)-hankel_1(0,x)*struve_h(1,x))/2"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) 1 X) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) $%PI ((MPLUS) ((MTIMES) ((%STRUVE_H) 0 X) ((%HANKEL_1) 1 X)) ((MTIMES) -1 ((%HANKEL_1) 0 X) ((%STRUVE_H) 1 X))) X)
  :M2-PATTERN ((MTIMES) ((%HANKEL_1) 1 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1123
  :INTEGRAND "hankel_2(1,x)*x"
  :VAR X
  :SOURCE ("DLMF 10.22.2 with p=1")
  :INTEGRAL "%pi*x*(struve_h(0,x)*hankel_2(1,x)-hankel_2(0,x)*struve_h(1,x))/2"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_2) 1 X) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) $%PI ((MPLUS) ((MTIMES) ((%STRUVE_H) 0 X) ((%HANKEL_2) 1 X)) ((MTIMES) -1 ((%HANKEL_2) 0 X) ((%STRUVE_H) 1 X))) X)
  :M2-PATTERN ((MTIMES) ((%HANKEL_2) 1 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1124
  :INTEGRAND "x^(2*u+1)*bessel_j(u,a*x)^2"
  :COMMENT "u # -1/2"
  :VAR X
  :PARAMETERS (A U)
  :SOURCE ("DLMF 10.22.7 with same Bessel function twice and u=v")
  :INTEGRAL "((bessel_j(u+1,a*x)^2+bessel_j(u,a*x)^2)*x^(2*u+2))/(2*(2*u+1))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%BESSEL_J) U ((MTIMES) A X)) 2) ((MEXPT) X ((MPLUS) 1 ((MTIMES) 2 U))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) 2 U)) -1) ((MPLUS) ((MEXPT) ((%BESSEL_J) U ((MTIMES) A X)) 2) ((MEXPT) ((%BESSEL_J) ((MPLUS) 1 U) ((MTIMES) A X)) 2)) ((MEXPT) X ((MPLUS) 2 ((MTIMES) 2 U))))
  :CONSTRAINT (ASK# U |-1//2|)
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%BESSEL_J) (U FREEVAR) ((MTIMES) (A FREEVAR) (X VARP))) 2) ((MEXPT) (X VARP) (2*U+1 SAMESAME U U 1)))
)

#S(TOI-ENTRY
  :INDEX 1125
  :INTEGRAND "x^(2*u+1)*bessel_y(u,a*x)^2"
  :COMMENT "u # -1/2"
  :VAR X
  :PARAMETERS (A U)
  :SOURCE ("DLMF 10.22.7 with same Bessel function twice and u=v")
  :INTEGRAL "((bessel_y(u+1,a*x)^2+bessel_y(u,a*x)^2)*x^(2*u+2))/(2*(2*u+1))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%BESSEL_Y) U ((MTIMES) A X)) 2) ((MEXPT) X ((MPLUS) 1 ((MTIMES) 2 U))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) 2 U)) -1) ((MPLUS) ((MEXPT) ((%BESSEL_Y) U ((MTIMES) A X)) 2) ((MEXPT) ((%BESSEL_Y) ((MPLUS) 1 U) ((MTIMES) A X)) 2)) ((MEXPT) X ((MPLUS) 2 ((MTIMES) 2 U))))
  :CONSTRAINT (ASK# U |-1//2|)
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%BESSEL_Y) (U FREEVAR) ((MTIMES) (A FREEVAR) (X VARP))) 2) ((MEXPT) (X VARP) (2*U+1 SAMESAME U U 1)))
)

#S(TOI-ENTRY
  :INDEX 1126
  :INTEGRAND "x^(2*u+1)*hankel_1(u,a*x)^2"
  :COMMENT "u # -1/2"
  :VAR X
  :PARAMETERS (A U)
  :SOURCE ("DLMF 10.22.7 with same Bessel function twice and u=v")
  :INTEGRAL "((hankel_1(u+1,a*x)^2+hankel_1(u,a*x)^2)*x^(2*u+2))/(2*(2*u+1))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%HANKEL_1) U ((MTIMES) A X)) 2) ((MEXPT) X ((MPLUS) 1 ((MTIMES) 2 U))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) 2 U)) -1) ((MPLUS) ((MEXPT) ((%HANKEL_1) U ((MTIMES) A X)) 2) ((MEXPT) ((%HANKEL_1) ((MPLUS) 1 U) ((MTIMES) A X)) 2)) ((MEXPT) X ((MPLUS) 2 ((MTIMES) 2 U))))
  :CONSTRAINT (ASK# U |-1//2|)
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%HANKEL_1) (U FREEVAR) ((MTIMES) (A FREEVAR) (X VARP))) 2) ((MEXPT) (X VARP) (2*U+1 SAMESAME U U 1)))
)

#S(TOI-ENTRY
  :INDEX 1127
  :INTEGRAND "x^(2*u+1)*hankel_2(u,a*x)^2"
  :COMMENT "u # -1/2"
  :VAR X
  :PARAMETERS (A U)
  :SOURCE ("DLMF 10.22.7 with same Bessel function twice and u=v")
  :INTEGRAL "((hankel_2(u+1,a*x)^2+hankel_2(u,a*x)^2)*x^(2*u+2))/(2*(2*u+1))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%HANKEL_2) U ((MTIMES) A X)) 2) ((MEXPT) X ((MPLUS) 1 ((MTIMES) 2 U))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) 2 U)) -1) ((MPLUS) ((MEXPT) ((%HANKEL_2) U ((MTIMES) A X)) 2) ((MEXPT) ((%HANKEL_2) ((MPLUS) 1 U) ((MTIMES) A X)) 2)) ((MEXPT) X ((MPLUS) 2 ((MTIMES) 2 U))))
  :CONSTRAINT (ASK# U |-1//2|)
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%HANKEL_2) (U FREEVAR) ((MTIMES) (A FREEVAR) (X VARP))) 2) ((MEXPT) (X VARP) (2*U+1 SAMESAME U U 1)))
)

#S(TOI-ENTRY
  :INDEX 1128
  :INTEGRAND "x^(-2*u+1)*bessel_j(u,a*x)^2"
  :COMMENT "u # 1/2"
  :VAR X
  :PARAMETERS (A U)
  :SOURCE ("DLMF 10.22.7, with same Bessel function twice and u=v")
  :INTEGRAL "((bessel_j(u,a*x)^2+bessel_j(u-1,a*x)^2)*x^(2-2*u))/(2*(1-2*u))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%BESSEL_J) U ((MTIMES) A X)) 2) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -2 U))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -2 U)) -1) ((MPLUS) ((MEXPT) ((%BESSEL_J) ((MPLUS) -1 U) ((MTIMES) A X)) 2) ((MEXPT) ((%BESSEL_J) U ((MTIMES) A X)) 2)) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -2 U))))
  :CONSTRAINT (ASK# U |1//2|)
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%BESSEL_J) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) 2) ((MEXPT) (X VARP) (1-2*U SAMEDIFF U U -1)))
)

#S(TOI-ENTRY
  :INDEX 1129
  :INTEGRAND "x^(-2*u+1)*bessel_y(u,a*x)^2"
  :COMMENT "u # 1/2"
  :VAR X
  :PARAMETERS (A U)
  :SOURCE ("DLMF 10.22.7, with same Bessel function twice and u=v")
  :INTEGRAL "((bessel_y(u,a*x)^2+bessel_y(u-1,a*x)^2)*x^(2-2*u))/(2*(1-2*u))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%BESSEL_Y) U ((MTIMES) A X)) 2) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -2 U))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -2 U)) -1) ((MPLUS) ((MEXPT) ((%BESSEL_Y) ((MPLUS) -1 U) ((MTIMES) A X)) 2) ((MEXPT) ((%BESSEL_Y) U ((MTIMES) A X)) 2)) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -2 U))))
  :CONSTRAINT (ASK# U |1//2|)
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%BESSEL_Y) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) 2) ((MEXPT) (X VARP) (1-2*U SAMEDIFF U U -1)))
)

#S(TOI-ENTRY
  :INDEX 1130
  :INTEGRAND "x^(-2*u+1)*hankel_1(u,a*x)^2"
  :COMMENT "u # 1/2"
  :VAR X
  :PARAMETERS (A U)
  :SOURCE ("DLMF 10.22.7, with same Bessel function twice and u=v")
  :INTEGRAL "((hankel_1(u,a*x)^2+hankel_1(u-1,a*x)^2)*x^(2-2*u))/(2*(1-2*u))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%HANKEL_1) U ((MTIMES) A X)) 2) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -2 U))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -2 U)) -1) ((MPLUS) ((MEXPT) ((%HANKEL_1) ((MPLUS) -1 U) ((MTIMES) A X)) 2) ((MEXPT) ((%HANKEL_1) U ((MTIMES) A X)) 2)) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -2 U))))
  :CONSTRAINT (ASK# U |1//2|)
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%HANKEL_1) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) 2) ((MEXPT) (X VARP) (1-2*U SAMEDIFF U U -1)))
)

#S(TOI-ENTRY
  :INDEX 1131
  :INTEGRAND "x^(-2*u+1)*hankel_2(u,a*x)^2"
  :COMMENT "u # 1/2"
  :VAR X
  :PARAMETERS (A U)
  :SOURCE ("DLMF 10.22.7, with same Bessel function twice and u=v")
  :INTEGRAL "((hankel_2(u,a*x)^2+hankel_2(u-1,a*x)^2)*x^(2-2*u))/(2*(1-2*u))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%HANKEL_2) U ((MTIMES) A X)) 2) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -2 U))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -2 U)) -1) ((MPLUS) ((MEXPT) ((%HANKEL_2) ((MPLUS) -1 U) ((MTIMES) A X)) 2) ((MEXPT) ((%HANKEL_2) U ((MTIMES) A X)) 2)) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -2 U))))
  :CONSTRAINT (ASK# U |1//2|)
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%HANKEL_2) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) 2) ((MEXPT) (X VARP) (1-2*U SAMEDIFF U U -1)))
)

#S(TOI-ENTRY
  :INDEX 1132
  :INTEGRAND "x*bessel_j(p,a*x)*bessel_j(p,b*x)"
  :COMMENT "a^2 # b^2"
  :VAR X
  :PARAMETERS (A B P)
  :SOURCE ("DLMF 10.22.4" "GR 5.54.1")
  :INTEGRAL "((a*bessel_j(p,b*x)*bessel_j(p+1,a*x)-b*bessel_j(p,a*x)*bessel_j(p+1,b*x))*x)/(a^2-b^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) P ((MTIMES) A X)) ((%BESSEL_J) P ((MTIMES) B X)) X)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) ((MEXPT) A 2) ((MTIMES) -1 ((MEXPT) B 2))) -1) ((MPLUS) ((MTIMES) A ((%BESSEL_J) P ((MTIMES) B X)) ((%BESSEL_J) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 B ((%BESSEL_J) P ((MTIMES) A X)) ((%BESSEL_J) ((MPLUS) 1 P) ((MTIMES) B X)))) X)
  :CONSTRAINT (NOT (ASKEQUALSQUAREP A B))
  :M2-PATTERN ((MTIMES) (X VARP) ((%BESSEL_J) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%BESSEL_J) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1133
  :INTEGRAND "x*bessel_j(p,a*x)*bessel_y(p,b*x)"
  :COMMENT "a^2 # b^2"
  :VAR X
  :PARAMETERS (A B P)
  :SOURCE ("DLMF 10.22.4" "GR 5.54.1")
  :INTEGRAL "((a*bessel_y(p,b*x)*bessel_j(p+1,a*x)-b*bessel_j(p,a*x)*bessel_y(p+1,b*x))*x)/(a^2-b^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) P ((MTIMES) A X)) ((%BESSEL_Y) P ((MTIMES) B X)) X)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) ((MEXPT) A 2) ((MTIMES) -1 ((MEXPT) B 2))) -1) ((MPLUS) ((MTIMES) A ((%BESSEL_Y) P ((MTIMES) B X)) ((%BESSEL_J) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 B ((%BESSEL_J) P ((MTIMES) A X)) ((%BESSEL_Y) ((MPLUS) 1 P) ((MTIMES) B X)))) X)
  :CONSTRAINT (NOT (ASKEQUALSQUAREP A B))
  :M2-PATTERN ((MTIMES) (X VARP) ((%BESSEL_J) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%BESSEL_Y) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1134
  :INTEGRAND "x*bessel_j(p,a*x)*hankel_1(p,b*x)"
  :COMMENT "a^2 # b^2"
  :VAR X
  :PARAMETERS (A B P)
  :SOURCE ("DLMF 10.22.4" "GR 5.54.1")
  :INTEGRAL "((a*hankel_1(p,b*x)*bessel_j(p+1,a*x)-b*bessel_j(p,a*x)*hankel_1(p+1,b*x))*x)/(a^2-b^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) P ((MTIMES) A X)) ((%HANKEL_1) P ((MTIMES) B X)) X)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) ((MEXPT) A 2) ((MTIMES) -1 ((MEXPT) B 2))) -1) ((MPLUS) ((MTIMES) A ((%HANKEL_1) P ((MTIMES) B X)) ((%BESSEL_J) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 B ((%BESSEL_J) P ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) 1 P) ((MTIMES) B X)))) X)
  :CONSTRAINT (NOT (ASKEQUALSQUAREP A B))
  :M2-PATTERN ((MTIMES) (X VARP) ((%BESSEL_J) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1135
  :INTEGRAND "x*bessel_j(p,a*x)*hankel_2(p,b*x)"
  :COMMENT "a^2 # b^2"
  :VAR X
  :PARAMETERS (A B P)
  :SOURCE ("DLMF 10.22.4" "GR 5.54.1")
  :INTEGRAL "((a*hankel_2(p,b*x)*bessel_j(p+1,a*x)-b*bessel_j(p,a*x)*hankel_2(p+1,b*x))*x)/(a^2-b^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) P ((MTIMES) A X)) ((%HANKEL_2) P ((MTIMES) B X)) X)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) ((MEXPT) A 2) ((MTIMES) -1 ((MEXPT) B 2))) -1) ((MPLUS) ((MTIMES) A ((%HANKEL_2) P ((MTIMES) B X)) ((%BESSEL_J) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 B ((%BESSEL_J) P ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 P) ((MTIMES) B X)))) X)
  :CONSTRAINT (NOT (ASKEQUALSQUAREP A B))
  :M2-PATTERN ((MTIMES) (X VARP) ((%BESSEL_J) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1136
  :INTEGRAND "x*bessel_y(p,a*x)*bessel_y(p,b*x)"
  :COMMENT "a^2 # b^2"
  :VAR X
  :PARAMETERS (A B P)
  :SOURCE ("DLMF 10.22.4" "GR 5.54.1")
  :INTEGRAL "((a*bessel_y(p,b*x)*bessel_y(p+1,a*x)-b*bessel_y(p,a*x)*bessel_y(p+1,b*x))*x)/(a^2-b^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) P ((MTIMES) A X)) ((%BESSEL_Y) P ((MTIMES) B X)) X)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) ((MEXPT) A 2) ((MTIMES) -1 ((MEXPT) B 2))) -1) ((MPLUS) ((MTIMES) A ((%BESSEL_Y) P ((MTIMES) B X)) ((%BESSEL_Y) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 B ((%BESSEL_Y) P ((MTIMES) A X)) ((%BESSEL_Y) ((MPLUS) 1 P) ((MTIMES) B X)))) X)
  :CONSTRAINT (NOT (ASKEQUALSQUAREP A B))
  :M2-PATTERN ((MTIMES) (X VARP) ((%BESSEL_Y) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%BESSEL_Y) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1137
  :INTEGRAND "x*bessel_y(p,a*x)*hankel_1(p,b*x)"
  :COMMENT "a^2 # b^2"
  :VAR X
  :PARAMETERS (A B P)
  :SOURCE ("DLMF 10.22.4" "GR 5.54.1")
  :INTEGRAL "((a*hankel_1(p,b*x)*bessel_y(p+1,a*x)-b*bessel_y(p,a*x)*hankel_1(p+1,b*x))*x)/(a^2-b^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) P ((MTIMES) A X)) ((%HANKEL_1) P ((MTIMES) B X)) X)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) ((MEXPT) A 2) ((MTIMES) -1 ((MEXPT) B 2))) -1) ((MPLUS) ((MTIMES) A ((%HANKEL_1) P ((MTIMES) B X)) ((%BESSEL_Y) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 B ((%BESSEL_Y) P ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) 1 P) ((MTIMES) B X)))) X)
  :CONSTRAINT (NOT (ASKEQUALSQUAREP A B))
  :M2-PATTERN ((MTIMES) (X VARP) ((%BESSEL_Y) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1138
  :INTEGRAND "x*bessel_y(p,a*x)*hankel_2(p,b*x)"
  :COMMENT "a^2 # b^2"
  :VAR X
  :PARAMETERS (A B P)
  :SOURCE ("DLMF 10.22.4" "GR 5.54.1")
  :INTEGRAL "((a*hankel_2(p,b*x)*bessel_y(p+1,a*x)-b*bessel_y(p,a*x)*hankel_2(p+1,b*x))*x)/(a^2-b^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) P ((MTIMES) A X)) ((%HANKEL_2) P ((MTIMES) B X)) X)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) ((MEXPT) A 2) ((MTIMES) -1 ((MEXPT) B 2))) -1) ((MPLUS) ((MTIMES) A ((%HANKEL_2) P ((MTIMES) B X)) ((%BESSEL_Y) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 B ((%BESSEL_Y) P ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 P) ((MTIMES) B X)))) X)
  :CONSTRAINT (NOT (ASKEQUALSQUAREP A B))
  :M2-PATTERN ((MTIMES) (X VARP) ((%BESSEL_Y) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1139
  :INTEGRAND "x*hankel_1(p,a*x)*hankel_1(p,b*x)"
  :COMMENT "a^2 # b^2"
  :VAR X
  :PARAMETERS (A B P)
  :SOURCE ("DLMF 10.22.4" "GR 5.54.1")
  :INTEGRAL "((a*hankel_1(p,b*x)*hankel_1(p+1,a*x)-b*hankel_1(p,a*x)*hankel_1(p+1,b*x))*x)/(a^2-b^2)"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) P ((MTIMES) A X)) ((%HANKEL_1) P ((MTIMES) B X)) X)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) ((MEXPT) A 2) ((MTIMES) -1 ((MEXPT) B 2))) -1) ((MPLUS) ((MTIMES) A ((%HANKEL_1) P ((MTIMES) B X)) ((%HANKEL_1) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 B ((%HANKEL_1) P ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) 1 P) ((MTIMES) B X)))) X)
  :CONSTRAINT (NOT (ASKEQUALSQUAREP A B))
  :M2-PATTERN ((MTIMES) (X VARP) ((%HANKEL_1) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1140
  :INTEGRAND "x*hankel_1(p,a*x)*hankel_2(p,b*x)"
  :COMMENT "a^2 # b^2"
  :VAR X
  :PARAMETERS (A B P)
  :SOURCE ("DLMF 10.22.4" "GR 5.54.1")
  :INTEGRAL "((a*hankel_2(p,b*x)*hankel_1(p+1,a*x)-b*hankel_1(p,a*x)*hankel_2(p+1,b*x))*x)/(a^2-b^2)"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) P ((MTIMES) A X)) ((%HANKEL_2) P ((MTIMES) B X)) X)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) ((MEXPT) A 2) ((MTIMES) -1 ((MEXPT) B 2))) -1) ((MPLUS) ((MTIMES) A ((%HANKEL_2) P ((MTIMES) B X)) ((%HANKEL_1) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 B ((%HANKEL_1) P ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 P) ((MTIMES) B X)))) X)
  :CONSTRAINT (NOT (ASKEQUALSQUAREP A B))
  :M2-PATTERN ((MTIMES) (X VARP) ((%HANKEL_1) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1141
  :INTEGRAND "x*hankel_2(p,a*x)*hankel_2(p,b*x)"
  :COMMENT "a^2 # b^2"
  :VAR X
  :PARAMETERS (A B P)
  :SOURCE ("DLMF 10.22.4" "GR 5.54.1")
  :INTEGRAL "((a*hankel_2(p,b*x)*hankel_2(p+1,a*x)-b*hankel_2(p,a*x)*hankel_2(p+1,b*x))*x)/(a^2-b^2)"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_2) P ((MTIMES) A X)) ((%HANKEL_2) P ((MTIMES) B X)) X)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) ((MEXPT) A 2) ((MTIMES) -1 ((MEXPT) B 2))) -1) ((MPLUS) ((MTIMES) A ((%HANKEL_2) P ((MTIMES) B X)) ((%HANKEL_2) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 B ((%HANKEL_2) P ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 P) ((MTIMES) B X)))) X)
  :CONSTRAINT (NOT (ASKEQUALSQUAREP A B))
  :M2-PATTERN ((MTIMES) (X VARP) ((%HANKEL_2) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1142
  :INTEGRAND "x*bessel_j(p,a*x)*bessel_y(p,a*x)"
  :VAR X
  :PARAMETERS (A P)
  :SOURCE ("DLMF 10.22.5")
  :INTEGRAL "(((-bessel_j(p-1,a*x)*bessel_y(p+1,a*x))-bessel_y(p-1,a*x)*bessel_j(p+1,a*x)+2*bessel_j(p,a*x)*bessel_y(p,a*x))*x^2)/4"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) P ((MTIMES) A X)) ((%BESSEL_Y) P ((MTIMES) A X)) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 4) ((MPLUS) ((MTIMES) 2 ((%BESSEL_J) P ((MTIMES) A X)) ((%BESSEL_Y) P ((MTIMES) A X))) ((MTIMES) -1 ((%BESSEL_Y) ((MPLUS) -1 P) ((MTIMES) A X)) ((%BESSEL_J) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 ((%BESSEL_J) ((MPLUS) -1 P) ((MTIMES) A X)) ((%BESSEL_Y) ((MPLUS) 1 P) ((MTIMES) A X)))) ((MEXPT) X 2))
  :M2-PATTERN ((MTIMES) (X VARP) ((%BESSEL_J) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%BESSEL_Y) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1143
  :INTEGRAND "x*bessel_j(p,a*x)*hankel_1(p,a*x)"
  :VAR X
  :PARAMETERS (A P)
  :SOURCE ("DLMF 10.22.5")
  :INTEGRAL "(((-bessel_j(p-1,a*x)*hankel_1(p+1,a*x))-hankel_1(p-1,a*x)*bessel_j(p+1,a*x)+2*bessel_j(p,a*x)*hankel_1(p,a*x))*x^2)/4"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) P ((MTIMES) A X)) ((%HANKEL_1) P ((MTIMES) A X)) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 4) ((MPLUS) ((MTIMES) 2 ((%BESSEL_J) P ((MTIMES) A X)) ((%HANKEL_1) P ((MTIMES) A X))) ((MTIMES) -1 ((%HANKEL_1) ((MPLUS) -1 P) ((MTIMES) A X)) ((%BESSEL_J) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 ((%BESSEL_J) ((MPLUS) -1 P) ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) 1 P) ((MTIMES) A X)))) ((MEXPT) X 2))
  :M2-PATTERN ((MTIMES) (X VARP) ((%BESSEL_J) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1144
  :INTEGRAND "x*bessel_j(p,a*x)*hankel_2(p,a*x)"
  :VAR X
  :PARAMETERS (A P)
  :SOURCE ("DLMF 10.22.5")
  :INTEGRAL "(((-bessel_j(p-1,a*x)*hankel_2(p+1,a*x))-hankel_2(p-1,a*x)*bessel_j(p+1,a*x)+2*bessel_j(p,a*x)*hankel_2(p,a*x))*x^2)/4"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) P ((MTIMES) A X)) ((%HANKEL_2) P ((MTIMES) A X)) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 4) ((MPLUS) ((MTIMES) 2 ((%BESSEL_J) P ((MTIMES) A X)) ((%HANKEL_2) P ((MTIMES) A X))) ((MTIMES) -1 ((%HANKEL_2) ((MPLUS) -1 P) ((MTIMES) A X)) ((%BESSEL_J) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 ((%BESSEL_J) ((MPLUS) -1 P) ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 P) ((MTIMES) A X)))) ((MEXPT) X 2))
  :M2-PATTERN ((MTIMES) (X VARP) ((%BESSEL_J) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1145
  :INTEGRAND "x*bessel_y(p,a*x)*hankel_1(p,a*x)"
  :VAR X
  :PARAMETERS (A P)
  :SOURCE ("DLMF 10.22.5")
  :INTEGRAL "(((-bessel_y(p-1,a*x)*hankel_1(p+1,a*x))-hankel_1(p-1,a*x)*bessel_y(p+1,a*x)+2*bessel_y(p,a*x)*hankel_1(p,a*x))*x^2)/4"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) P ((MTIMES) A X)) ((%HANKEL_1) P ((MTIMES) A X)) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 4) ((MPLUS) ((MTIMES) 2 ((%BESSEL_Y) P ((MTIMES) A X)) ((%HANKEL_1) P ((MTIMES) A X))) ((MTIMES) -1 ((%HANKEL_1) ((MPLUS) -1 P) ((MTIMES) A X)) ((%BESSEL_Y) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 ((%BESSEL_Y) ((MPLUS) -1 P) ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) 1 P) ((MTIMES) A X)))) ((MEXPT) X 2))
  :M2-PATTERN ((MTIMES) (X VARP) ((%BESSEL_Y) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1146
  :INTEGRAND "x*bessel_y(p,a*x)*hankel_2(p,a*x)"
  :VAR X
  :PARAMETERS (A P)
  :SOURCE ("DLMF 10.22.5")
  :INTEGRAL "(((-bessel_y(p-1,a*x)*hankel_2(p+1,a*x))-hankel_2(p-1,a*x)*bessel_y(p+1,a*x)+2*bessel_y(p,a*x)*hankel_2(p,a*x))*x^2)/4"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) P ((MTIMES) A X)) ((%HANKEL_2) P ((MTIMES) A X)) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 4) ((MPLUS) ((MTIMES) 2 ((%BESSEL_Y) P ((MTIMES) A X)) ((%HANKEL_2) P ((MTIMES) A X))) ((MTIMES) -1 ((%HANKEL_2) ((MPLUS) -1 P) ((MTIMES) A X)) ((%BESSEL_Y) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 ((%BESSEL_Y) ((MPLUS) -1 P) ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 P) ((MTIMES) A X)))) ((MEXPT) X 2))
  :M2-PATTERN ((MTIMES) (X VARP) ((%BESSEL_Y) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1147
  :INTEGRAND "x*hankel_1(p,a*x)*hankel_2(p,a*x)"
  :VAR X
  :PARAMETERS (A P)
  :SOURCE ("DLMF 10.22.5")
  :INTEGRAL "(((-hankel_1(p-1,a*x)*hankel_2(p+1,a*x))-hankel_2(p-1,a*x)*hankel_1(p+1,a*x)+2*hankel_1(p,a*x)*hankel_2(p,a*x))*x^2)/4"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) P ((MTIMES) A X)) ((%HANKEL_2) P ((MTIMES) A X)) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 4) ((MPLUS) ((MTIMES) 2 ((%HANKEL_1) P ((MTIMES) A X)) ((%HANKEL_2) P ((MTIMES) A X))) ((MTIMES) -1 ((%HANKEL_2) ((MPLUS) -1 P) ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) 1 P) ((MTIMES) A X))) ((MTIMES) -1 ((%HANKEL_1) ((MPLUS) -1 P) ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 P) ((MTIMES) A X)))) ((MEXPT) X 2))
  :M2-PATTERN ((MTIMES) (X VARP) ((%HANKEL_1) (P FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (P_ EQUAL P) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1148
  :INTEGRAND "bessel_j(u,a*x)*bessel_j(v,a*x)/x"
  :COMMENT "u^2 # v^2"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.6" "GR 5.55")
  :INTEGRAL "(bessel_j(u,a*x)*bessel_j(v,a*x))/(v+u)-(a*(bessel_j(u+1,a*x)*bessel_j(v,a*x)-bessel_j(u,a*x)*bessel_j(v+1,a*x))*x)/(u^2-v^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%BESSEL_J) V ((MTIMES) A X)) ((MEXPT) X -1))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((MEXPT) ((MPLUS) U V) -1) ((%BESSEL_J) V ((MTIMES) A X))) ((MTIMES) -1 A ((MEXPT) ((MPLUS) ((MEXPT) U 2) ((MTIMES) -1 ((MEXPT) V 2))) -1) ((MPLUS) ((MTIMES) ((%BESSEL_J) ((MPLUS) 1 U) ((MTIMES) A X)) ((%BESSEL_J) V ((MTIMES) A X))) ((MTIMES) -1 ((%BESSEL_J) U ((MTIMES) A X)) ((%BESSEL_J) ((MPLUS) 1 V) ((MTIMES) A X)))) X))
  :CONSTRAINT (NOT (ASKEQUALSQUAREP U V))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -1) ((%BESSEL_J) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%BESSEL_J) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1149
  :INTEGRAND "bessel_j(u,a*x)*bessel_y(v,a*x)/x"
  :COMMENT "u^2 # v^2"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.6" "GR 5.55")
  :INTEGRAL "(bessel_j(u,a*x)*bessel_y(v,a*x))/(v+u)-(a*(bessel_j(u+1,a*x)*bessel_y(v,a*x)-bessel_j(u,a*x)*bessel_y(v+1,a*x))*x)/(u^2-v^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%BESSEL_Y) V ((MTIMES) A X)) ((MEXPT) X -1))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((MEXPT) ((MPLUS) U V) -1) ((%BESSEL_Y) V ((MTIMES) A X))) ((MTIMES) -1 A ((MEXPT) ((MPLUS) ((MEXPT) U 2) ((MTIMES) -1 ((MEXPT) V 2))) -1) ((MPLUS) ((MTIMES) ((%BESSEL_J) ((MPLUS) 1 U) ((MTIMES) A X)) ((%BESSEL_Y) V ((MTIMES) A X))) ((MTIMES) -1 ((%BESSEL_J) U ((MTIMES) A X)) ((%BESSEL_Y) ((MPLUS) 1 V) ((MTIMES) A X)))) X))
  :CONSTRAINT (NOT (ASKEQUALSQUAREP U V))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -1) ((%BESSEL_J) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%BESSEL_Y) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1150
  :INTEGRAND "bessel_j(u,a*x)*hankel_1(v,a*x)/x"
  :COMMENT "u^2 # v^2"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.6" "GR 5.55")
  :INTEGRAL "(bessel_j(u,a*x)*hankel_1(v,a*x))/(v+u)-(a*(bessel_j(u+1,a*x)*hankel_1(v,a*x)-bessel_j(u,a*x)*hankel_1(v+1,a*x))*x)/(u^2-v^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X)) ((MEXPT) X -1))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((MEXPT) ((MPLUS) U V) -1) ((%HANKEL_1) V ((MTIMES) A X))) ((MTIMES) -1 A ((MEXPT) ((MPLUS) ((MEXPT) U 2) ((MTIMES) -1 ((MEXPT) V 2))) -1) ((MPLUS) ((MTIMES) ((%BESSEL_J) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X))) ((MTIMES) -1 ((%BESSEL_J) U ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) 1 V) ((MTIMES) A X)))) X))
  :CONSTRAINT (NOT (ASKEQUALSQUAREP U V))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -1) ((%BESSEL_J) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1151
  :INTEGRAND "bessel_j(u,a*x)*hankel_2(v,a*x)/x"
  :COMMENT "u^2 # v^2"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.6" "GR 5.55")
  :INTEGRAL "(bessel_j(u,a*x)*hankel_2(v,a*x))/(v+u)-(a*(bessel_j(u+1,a*x)*hankel_2(v,a*x)-bessel_j(u,a*x)*hankel_2(v+1,a*x))*x)/(u^2-v^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)) ((MEXPT) X -1))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((MEXPT) ((MPLUS) U V) -1) ((%HANKEL_2) V ((MTIMES) A X))) ((MTIMES) -1 A ((MEXPT) ((MPLUS) ((MEXPT) U 2) ((MTIMES) -1 ((MEXPT) V 2))) -1) ((MPLUS) ((MTIMES) ((%BESSEL_J) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X))) ((MTIMES) -1 ((%BESSEL_J) U ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 V) ((MTIMES) A X)))) X))
  :CONSTRAINT (NOT (ASKEQUALSQUAREP U V))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -1) ((%BESSEL_J) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1152
  :INTEGRAND "bessel_y(u,a*x)*bessel_y(v,a*x)/x"
  :COMMENT "u^2 # v^2"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.6" "GR 5.55")
  :INTEGRAL "(bessel_y(u,a*x)*bessel_y(v,a*x))/(v+u)-(a*(bessel_y(u+1,a*x)*bessel_y(v,a*x)-bessel_y(u,a*x)*bessel_y(v+1,a*x))*x)/(u^2-v^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%BESSEL_Y) V ((MTIMES) A X)) ((MEXPT) X -1))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((MEXPT) ((MPLUS) U V) -1) ((%BESSEL_Y) V ((MTIMES) A X))) ((MTIMES) -1 A ((MEXPT) ((MPLUS) ((MEXPT) U 2) ((MTIMES) -1 ((MEXPT) V 2))) -1) ((MPLUS) ((MTIMES) ((%BESSEL_Y) ((MPLUS) 1 U) ((MTIMES) A X)) ((%BESSEL_Y) V ((MTIMES) A X))) ((MTIMES) -1 ((%BESSEL_Y) U ((MTIMES) A X)) ((%BESSEL_Y) ((MPLUS) 1 V) ((MTIMES) A X)))) X))
  :CONSTRAINT (NOT (ASKEQUALSQUAREP U V))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -1) ((%BESSEL_Y) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%BESSEL_Y) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1153
  :INTEGRAND "bessel_y(u,a*x)*hankel_1(v,a*x)/x"
  :COMMENT "u^2 # v^2"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.6" "GR 5.55")
  :INTEGRAL "(bessel_y(u,a*x)*hankel_1(v,a*x))/(v+u)-(a*(bessel_y(u+1,a*x)*hankel_1(v,a*x)-bessel_y(u,a*x)*hankel_1(v+1,a*x))*x)/(u^2-v^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X)) ((MEXPT) X -1))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((MEXPT) ((MPLUS) U V) -1) ((%HANKEL_1) V ((MTIMES) A X))) ((MTIMES) -1 A ((MEXPT) ((MPLUS) ((MEXPT) U 2) ((MTIMES) -1 ((MEXPT) V 2))) -1) ((MPLUS) ((MTIMES) ((%BESSEL_Y) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X))) ((MTIMES) -1 ((%BESSEL_Y) U ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) 1 V) ((MTIMES) A X)))) X))
  :CONSTRAINT (NOT (ASKEQUALSQUAREP U V))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -1) ((%BESSEL_Y) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1154
  :INTEGRAND "bessel_y(u,a*x)*hankel_2(v,a*x)/x"
  :COMMENT "u^2 # v^2"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.6" "GR 5.55")
  :INTEGRAL "(bessel_y(u,a*x)*hankel_2(v,a*x))/(v+u)-(a*(bessel_y(u+1,a*x)*hankel_2(v,a*x)-bessel_y(u,a*x)*hankel_2(v+1,a*x))*x)/(u^2-v^2)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)) ((MEXPT) X -1))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((MEXPT) ((MPLUS) U V) -1) ((%HANKEL_2) V ((MTIMES) A X))) ((MTIMES) -1 A ((MEXPT) ((MPLUS) ((MEXPT) U 2) ((MTIMES) -1 ((MEXPT) V 2))) -1) ((MPLUS) ((MTIMES) ((%BESSEL_Y) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X))) ((MTIMES) -1 ((%BESSEL_Y) U ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 V) ((MTIMES) A X)))) X))
  :CONSTRAINT (NOT (ASKEQUALSQUAREP U V))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -1) ((%BESSEL_Y) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1155
  :INTEGRAND "hankel_1(u,a*x)*hankel_1(v,a*x)/x"
  :COMMENT "u^2 # v^2"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.6" "GR 5.55")
  :INTEGRAL "(hankel_1(u,a*x)*hankel_1(v,a*x))/(v+u)-(a*(hankel_1(u+1,a*x)*hankel_1(v,a*x)-hankel_1(u,a*x)*hankel_1(v+1,a*x))*x)/(u^2-v^2)"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X)) ((MEXPT) X -1))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((%HANKEL_1) U ((MTIMES) A X)) ((MEXPT) ((MPLUS) U V) -1) ((%HANKEL_1) V ((MTIMES) A X))) ((MTIMES) -1 A ((MEXPT) ((MPLUS) ((MEXPT) U 2) ((MTIMES) -1 ((MEXPT) V 2))) -1) ((MPLUS) ((MTIMES) ((%HANKEL_1) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X))) ((MTIMES) -1 ((%HANKEL_1) U ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) 1 V) ((MTIMES) A X)))) X))
  :CONSTRAINT (NOT (ASKEQUALSQUAREP U V))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -1) ((%HANKEL_1) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1156
  :INTEGRAND "hankel_1(u,a*x)*hankel_2(v,a*x)/x"
  :COMMENT "u^2 # v^2"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.6" "GR 5.55")
  :INTEGRAL "(hankel_1(u,a*x)*hankel_2(v,a*x))/(v+u)-(a*(hankel_1(u+1,a*x)*hankel_2(v,a*x)-hankel_1(u,a*x)*hankel_2(v+1,a*x))*x)/(u^2-v^2)"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)) ((MEXPT) X -1))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((%HANKEL_1) U ((MTIMES) A X)) ((MEXPT) ((MPLUS) U V) -1) ((%HANKEL_2) V ((MTIMES) A X))) ((MTIMES) -1 A ((MEXPT) ((MPLUS) ((MEXPT) U 2) ((MTIMES) -1 ((MEXPT) V 2))) -1) ((MPLUS) ((MTIMES) ((%HANKEL_1) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X))) ((MTIMES) -1 ((%HANKEL_1) U ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 V) ((MTIMES) A X)))) X))
  :CONSTRAINT (NOT (ASKEQUALSQUAREP U V))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -1) ((%HANKEL_1) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1157
  :INTEGRAND "hankel_2(u,a*x)*hankel_2(v,a*x)/x"
  :COMMENT "u^2 # v^2"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.6" "GR 5.55")
  :INTEGRAL "(hankel_2(u,a*x)*hankel_2(v,a*x))/(v+u)-(a*(hankel_2(u+1,a*x)*hankel_2(v,a*x)-hankel_2(u,a*x)*hankel_2(v+1,a*x))*x)/(u^2-v^2)"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_2) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)) ((MEXPT) X -1))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((%HANKEL_2) U ((MTIMES) A X)) ((MEXPT) ((MPLUS) U V) -1) ((%HANKEL_2) V ((MTIMES) A X))) ((MTIMES) -1 A ((MEXPT) ((MPLUS) ((MEXPT) U 2) ((MTIMES) -1 ((MEXPT) V 2))) -1) ((MPLUS) ((MTIMES) ((%HANKEL_2) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X))) ((MTIMES) -1 ((%HANKEL_2) U ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 V) ((MTIMES) A X)))) X))
  :CONSTRAINT (NOT (ASKEQUALSQUAREP U V))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -1) ((%HANKEL_2) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1158
  :INTEGRAND "x^(u+v+1)*bessel_j(u,a*x)*bessel_j(v,a*x)"
  :COMMENT "u+v # -1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.i")
  :INTEGRAL "((bessel_j(u+1,a*x)*bessel_j(v+1,a*x)+bessel_j(u,a*x)*bessel_j(v,a*x))
 *x^(v+u+2)) /(2*(v+u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%BESSEL_J) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 U V)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 U V) -1) ((MPLUS) ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%BESSEL_J) V ((MTIMES) A X))) ((MTIMES) ((%BESSEL_J) ((MPLUS) 1 U) ((MTIMES) A X)) ((%BESSEL_J) ((MPLUS) 1 V) ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 U V)))
  :CONSTRAINT (NOT (ASKZEROSUMP U V 1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_J) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%BESSEL_J) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (U+V+1 SAMESAME U V 1)))
)

#S(TOI-ENTRY
  :INDEX 1159
  :INTEGRAND "x^(u+v+1)*bessel_j(u,a*x)*bessel_y(v,a*x)"
  :COMMENT "u+v # -1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.i")
  :INTEGRAL "((bessel_j(u+1,a*x)*bessel_y(v+1,a*x)+bessel_j(u,a*x)*bessel_y(v,a*x))
 *x^(v+u+2)) /(2*(v+u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%BESSEL_Y) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 U V)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 U V) -1) ((MPLUS) ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%BESSEL_Y) V ((MTIMES) A X))) ((MTIMES) ((%BESSEL_J) ((MPLUS) 1 U) ((MTIMES) A X)) ((%BESSEL_Y) ((MPLUS) 1 V) ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 U V)))
  :CONSTRAINT (NOT (ASKZEROSUMP U V 1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_J) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%BESSEL_Y) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (U+V+1 SAMESAME U V 1)))
)

#S(TOI-ENTRY
  :INDEX 1160
  :INTEGRAND "x^(u+v+1)*bessel_j(u,a*x)*hankel_1(v,a*x)"
  :COMMENT "u+v # -1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.i")
  :INTEGRAL "((bessel_j(u+1,a*x)*hankel_1(v+1,a*x)+bessel_j(u,a*x)*hankel_1(v,a*x))
 *x^(v+u+2)) /(2*(v+u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 U V)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 U V) -1) ((MPLUS) ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X))) ((MTIMES) ((%BESSEL_J) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) 1 V) ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 U V)))
  :CONSTRAINT (NOT (ASKZEROSUMP U V 1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_J) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (U+V+1 SAMESAME U V 1)))
)

#S(TOI-ENTRY
  :INDEX 1161
  :INTEGRAND "x^(u+v+1)*bessel_j(u,a*x)*hankel_2(v,a*x)"
  :COMMENT "u+v # -1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.i")
  :INTEGRAL "((bessel_j(u+1,a*x)*hankel_2(v+1,a*x)+bessel_j(u,a*x)*hankel_2(v,a*x))
 *x^(v+u+2)) /(2*(v+u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 U V)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 U V) -1) ((MPLUS) ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X))) ((MTIMES) ((%BESSEL_J) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 V) ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 U V)))
  :CONSTRAINT (NOT (ASKZEROSUMP U V 1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_J) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (U+V+1 SAMESAME U V 1)))
)

#S(TOI-ENTRY
  :INDEX 1162
  :INTEGRAND "x^(u+v+1)*bessel_y(u,a*x)*bessel_y(v,a*x)"
  :COMMENT "u+v # -1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.i")
  :INTEGRAL "((bessel_y(u+1,a*x)*bessel_y(v+1,a*x)+bessel_y(u,a*x)*bessel_y(v,a*x))
 *x^(v+u+2)) /(2*(v+u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%BESSEL_Y) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 U V)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 U V) -1) ((MPLUS) ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%BESSEL_Y) V ((MTIMES) A X))) ((MTIMES) ((%BESSEL_Y) ((MPLUS) 1 U) ((MTIMES) A X)) ((%BESSEL_Y) ((MPLUS) 1 V) ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 U V)))
  :CONSTRAINT (NOT (ASKZEROSUMP U V 1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_Y) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%BESSEL_Y) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (U+V+1 SAMESAME U V 1)))
)

#S(TOI-ENTRY
  :INDEX 1163
  :INTEGRAND "x^(u+v+1)*bessel_y(u,a*x)*hankel_1(v,a*x)"
  :COMMENT "u+v # -1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.i")
  :INTEGRAL "((bessel_y(u+1,a*x)*hankel_1(v+1,a*x)+bessel_y(u,a*x)*hankel_1(v,a*x))
 *x^(v+u+2)) /(2*(v+u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 U V)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 U V) -1) ((MPLUS) ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X))) ((MTIMES) ((%BESSEL_Y) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) 1 V) ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 U V)))
  :CONSTRAINT (NOT (ASKZEROSUMP U V 1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_Y) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (U+V+1 SAMESAME U V 1)))
)

#S(TOI-ENTRY
  :INDEX 1164
  :INTEGRAND "x^(u+v+1)*bessel_y(u,a*x)*hankel_2(v,a*x)"
  :COMMENT "u+v # -1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.i")
  :INTEGRAL "((bessel_y(u+1,a*x)*hankel_2(v+1,a*x)+bessel_y(u,a*x)*hankel_2(v,a*x))
 *x^(v+u+2)) /(2*(v+u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 U V)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 U V) -1) ((MPLUS) ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X))) ((MTIMES) ((%BESSEL_Y) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 V) ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 U V)))
  :CONSTRAINT (NOT (ASKZEROSUMP U V 1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_Y) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (U+V+1 SAMESAME U V 1)))
)

#S(TOI-ENTRY
  :INDEX 1165
  :INTEGRAND "x^(u+v+1)*hankel_1(u,a*x)*hankel_1(v,a*x)"
  :COMMENT "u+v # -1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.i")
  :INTEGRAL "((hankel_1(u+1,a*x)*hankel_1(v+1,a*x)+hankel_1(u,a*x)*hankel_1(v,a*x))
 *x^(v+u+2)) /(2*(v+u+1))"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 U V)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 U V) -1) ((MPLUS) ((MTIMES) ((%HANKEL_1) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X))) ((MTIMES) ((%HANKEL_1) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) 1 V) ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 U V)))
  :CONSTRAINT (NOT (ASKZEROSUMP U V 1))
  :M2-PATTERN ((MTIMES) ((%HANKEL_1) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (U+V+1 SAMESAME U V 1)))
)

#S(TOI-ENTRY
  :INDEX 1166
  :INTEGRAND "x^(u+v+1)*hankel_1(u,a*x)*hankel_2(v,a*x)"
  :COMMENT "u+v # -1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.i")
  :INTEGRAL "((hankel_1(u+1,a*x)*hankel_2(v+1,a*x)+hankel_1(u,a*x)*hankel_2(v,a*x))
 *x^(v+u+2)) /(2*(v+u+1))"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 U V)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 U V) -1) ((MPLUS) ((MTIMES) ((%HANKEL_1) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X))) ((MTIMES) ((%HANKEL_1) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 V) ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 U V)))
  :CONSTRAINT (NOT (ASKZEROSUMP U V 1))
  :M2-PATTERN ((MTIMES) ((%HANKEL_1) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (U+V+1 SAMESAME U V 1)))
)

#S(TOI-ENTRY
  :INDEX 1167
  :INTEGRAND "x^(u+v+1)*hankel_2(u,a*x)*hankel_2(v,a*x)"
  :COMMENT "u+v # -1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.i")
  :INTEGRAL "((hankel_2(u+1,a*x)*hankel_2(v+1,a*x)+hankel_2(u,a*x)*hankel_2(v,a*x))
 *x^(v+u+2)) /(2*(v+u+1))"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_2) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 U V)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 U V) -1) ((MPLUS) ((MTIMES) ((%HANKEL_2) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X))) ((MTIMES) ((%HANKEL_2) ((MPLUS) 1 U) ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) 1 V) ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 U V)))
  :CONSTRAINT (NOT (ASKZEROSUMP U V 1))
  :M2-PATTERN ((MTIMES) ((%HANKEL_2) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (U+V+1 SAMESAME U V 1)))
)

#S(TOI-ENTRY
  :INDEX 1168
  :INTEGRAND "x^(-u-v+1)*bessel_j(u,a*x)*bessel_j(v,a*x)"
  :COMMENT "u+v # 1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.ii")
  :INTEGRAL "((bessel_j(u,a*x)*bessel_j(v,a*x)+bessel_j(u-1,a*x)*bessel_j(v-1,a*x))
 *x^((-v)-u+2))/(2*((-v)-u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%BESSEL_J) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V)) -1) ((MPLUS) ((MTIMES) ((%BESSEL_J) ((MPLUS) -1 U) ((MTIMES) A X)) ((%BESSEL_J) ((MPLUS) -1 V) ((MTIMES) A X))) ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%BESSEL_J) V ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :CONSTRAINT (NOT (ASKZEROSUMP U V -1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_J) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%BESSEL_J) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (|1-U-V| SAMEDIFF U V -1)))
)

#S(TOI-ENTRY
  :INDEX 1169
  :INTEGRAND "x^(-u-v+1)*bessel_j(u,a*x)*bessel_y(v,a*x)"
  :COMMENT "u+v # 1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.ii")
  :INTEGRAL "((bessel_j(u,a*x)*bessel_y(v,a*x)+bessel_j(u-1,a*x)*bessel_y(v-1,a*x))
 *x^((-v)-u+2))/(2*((-v)-u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%BESSEL_Y) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V)) -1) ((MPLUS) ((MTIMES) ((%BESSEL_J) ((MPLUS) -1 U) ((MTIMES) A X)) ((%BESSEL_Y) ((MPLUS) -1 V) ((MTIMES) A X))) ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%BESSEL_Y) V ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :CONSTRAINT (NOT (ASKZEROSUMP U V -1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_J) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%BESSEL_Y) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (|1-U-V| SAMEDIFF U V -1)))
)

#S(TOI-ENTRY
  :INDEX 1170
  :INTEGRAND "x^(-u-v+1)*bessel_j(u,a*x)*hankel_1(v,a*x)"
  :COMMENT "u+v # 1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.ii")
  :INTEGRAL "((bessel_j(u,a*x)*hankel_1(v,a*x)+bessel_j(u-1,a*x)*hankel_1(v-1,a*x))
 *x^((-v)-u+2))/(2*((-v)-u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V)) -1) ((MPLUS) ((MTIMES) ((%BESSEL_J) ((MPLUS) -1 U) ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) -1 V) ((MTIMES) A X))) ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :CONSTRAINT (NOT (ASKZEROSUMP U V -1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_J) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (|1-U-V| SAMEDIFF U V -1)))
)

#S(TOI-ENTRY
  :INDEX 1171
  :INTEGRAND "x^(-u-v+1)*bessel_j(u,a*x)*hankel_2(v,a*x)"
  :COMMENT "u+v # 1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.ii")
  :INTEGRAL "((bessel_j(u,a*x)*hankel_2(v,a*x)+bessel_j(u-1,a*x)*hankel_2(v-1,a*x))
 *x^((-v)-u+2))/(2*((-v)-u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V)) -1) ((MPLUS) ((MTIMES) ((%BESSEL_J) ((MPLUS) -1 U) ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) -1 V) ((MTIMES) A X))) ((MTIMES) ((%BESSEL_J) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :CONSTRAINT (NOT (ASKZEROSUMP U V -1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_J) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (|1-U-V| SAMEDIFF U V -1)))
)

#S(TOI-ENTRY
  :INDEX 1172
  :INTEGRAND "x^(-u-v+1)*bessel_y(u,a*x)*bessel_y(v,a*x)"
  :COMMENT "u+v # 1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.ii")
  :INTEGRAL "((bessel_y(u,a*x)*bessel_y(v,a*x)+bessel_y(u-1,a*x)*bessel_y(v-1,a*x))
 *x^((-v)-u+2))/(2*((-v)-u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%BESSEL_Y) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V)) -1) ((MPLUS) ((MTIMES) ((%BESSEL_Y) ((MPLUS) -1 U) ((MTIMES) A X)) ((%BESSEL_Y) ((MPLUS) -1 V) ((MTIMES) A X))) ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%BESSEL_Y) V ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :CONSTRAINT (NOT (ASKZEROSUMP U V -1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_Y) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%BESSEL_Y) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (|1-U-V| SAMEDIFF U V -1)))
)

#S(TOI-ENTRY
  :INDEX 1173
  :INTEGRAND "x^(-u-v+1)*bessel_y(u,a*x)*hankel_1(v,a*x)"
  :COMMENT "u+v # 1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.ii")
  :INTEGRAL "((bessel_y(u,a*x)*hankel_1(v,a*x)+bessel_y(u-1,a*x)*hankel_1(v-1,a*x))
 *x^((-v)-u+2))/(2*((-v)-u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V)) -1) ((MPLUS) ((MTIMES) ((%BESSEL_Y) ((MPLUS) -1 U) ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) -1 V) ((MTIMES) A X))) ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :CONSTRAINT (NOT (ASKZEROSUMP U V -1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_Y) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (|1-U-V| SAMEDIFF U V -1)))
)

#S(TOI-ENTRY
  :INDEX 1174
  :INTEGRAND "x^(-u-v+1)*bessel_y(u,a*x)*hankel_2(v,a*x)"
  :COMMENT "u+v # 1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.ii")
  :INTEGRAL "((bessel_y(u,a*x)*hankel_2(v,a*x)+bessel_y(u-1,a*x)*hankel_2(v-1,a*x))
 *x^((-v)-u+2))/(2*((-v)-u+1))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V)) -1) ((MPLUS) ((MTIMES) ((%BESSEL_Y) ((MPLUS) -1 U) ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) -1 V) ((MTIMES) A X))) ((MTIMES) ((%BESSEL_Y) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :CONSTRAINT (NOT (ASKZEROSUMP U V -1))
  :M2-PATTERN ((MTIMES) ((%BESSEL_Y) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (|1-U-V| SAMEDIFF U V -1)))
)

#S(TOI-ENTRY
  :INDEX 1175
  :INTEGRAND "x^(-u-v+1)*hankel_1(u,a*x)*hankel_1(v,a*x)"
  :COMMENT "u+v # 1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.ii")
  :INTEGRAL "((hankel_1(u,a*x)*hankel_1(v,a*x)+hankel_1(u-1,a*x)*hankel_1(v-1,a*x))
 *x^((-v)-u+2))/(2*((-v)-u+1))"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V)) -1) ((MPLUS) ((MTIMES) ((%HANKEL_1) ((MPLUS) -1 U) ((MTIMES) A X)) ((%HANKEL_1) ((MPLUS) -1 V) ((MTIMES) A X))) ((MTIMES) ((%HANKEL_1) U ((MTIMES) A X)) ((%HANKEL_1) V ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :CONSTRAINT (NOT (ASKZEROSUMP U V -1))
  :M2-PATTERN ((MTIMES) ((%HANKEL_1) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_1) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (|1-U-V| SAMEDIFF U V -1)))
)

#S(TOI-ENTRY
  :INDEX 1176
  :INTEGRAND "x^(-u-v+1)*hankel_1(u,a*x)*hankel_2(v,a*x)"
  :COMMENT "u+v # 1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.ii")
  :INTEGRAL "((hankel_1(u,a*x)*hankel_2(v,a*x)+hankel_1(u-1,a*x)*hankel_2(v-1,a*x))
 *x^((-v)-u+2))/(2*((-v)-u+1))"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_1) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V)) -1) ((MPLUS) ((MTIMES) ((%HANKEL_1) ((MPLUS) -1 U) ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) -1 V) ((MTIMES) A X))) ((MTIMES) ((%HANKEL_1) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :CONSTRAINT (NOT (ASKZEROSUMP U V -1))
  :M2-PATTERN ((MTIMES) ((%HANKEL_1) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (|1-U-V| SAMEDIFF U V -1)))
)

#S(TOI-ENTRY
  :INDEX 1177
  :INTEGRAND "x^(-u-v+1)*hankel_2(u,a*x)*hankel_2(v,a*x)"
  :COMMENT "u+v # 1"
  :VAR X
  :PARAMETERS (A U V)
  :SOURCE ("DLMF 10.22.7.ii")
  :INTEGRAL "((hankel_2(u,a*x)*hankel_2(v,a*x)+hankel_2(u-1,a*x)*hankel_2(v-1,a*x))
 *x^((-v)-u+2))/(2*((-v)-u+1))"
  :INTEGRAND2 ((MTIMES) ((%HANKEL_2) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 U) ((MTIMES) -1 V)) -1) ((MPLUS) ((MTIMES) ((%HANKEL_2) ((MPLUS) -1 U) ((MTIMES) A X)) ((%HANKEL_2) ((MPLUS) -1 V) ((MTIMES) A X))) ((MTIMES) ((%HANKEL_2) U ((MTIMES) A X)) ((%HANKEL_2) V ((MTIMES) A X)))) ((MEXPT) X ((MPLUS) 2 ((MTIMES) -1 U) ((MTIMES) -1 V))))
  :CONSTRAINT (NOT (ASKZEROSUMP U V -1))
  :M2-PATTERN ((MTIMES) ((%HANKEL_2) (U FREEVAR) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%HANKEL_2) (V FREEVAR) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))) ((MEXPT) (X VARP) (|1-U-V| SAMEDIFF U V -1)))
)

#S(TOI-ENTRY
  :INDEX 1178
  :INTEGRAND "x^(p+1)*bessel_i(p,x)"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.43.1 (i)")
  :INTEGRAL "x^(p+1)*bessel_i(p+1,x)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) P X) ((MEXPT) X ((MPLUS) 1 P)))
  :INTEGRAL2 ((MTIMES) ((%BESSEL_I) ((MPLUS) 1 P) X) ((MEXPT) X ((MPLUS) 1 P)))
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (P+1 SAMESAME P 1)))
)

#S(TOI-ENTRY
  :INDEX 1179
  :INTEGRAND "x*bessel_i(0,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.1 (i) with p=0")
  :INTEGRAL "x*bessel_i(1,x)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) 0 X) X)
  :INTEGRAL2 ((MTIMES) ((%BESSEL_I) 1 X) X)
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) 0 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1180
  :INTEGRAND "x^(1-p)*bessel_i(p,x)"
  :VAR X
  :PARAMETERS (P)
  :SOURCE ("DLMF 10.43.1 (ii)" "GR ")
  :INTEGRAL "x^(1-p)*bessel_i(p-1,x)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) P X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 P))))
  :INTEGRAL2 ((MTIMES) ((%BESSEL_I) ((MPLUS) -1 P) X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 P))))
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) (P FREEVAR) (X VARP)) ((MEXPT) (X VARP) (|1-P| SAMEDIFF P -1)))
)

#S(TOI-ENTRY
  :INDEX 1181
  :INTEGRAND "x^v*bessel_i(v,x)"
  :COMMENT "v # 1/2"
  :VAR X
  :PARAMETERS (V)
  :SOURCE ("DLMF 10.43.2")
  :INTEGRAL "sqrt(%pi)*2^(v-1)*gamma(v+1/2)*x
   *(struve_l(v-1,x)*bessel_i(v,x)
    -bessel_i(v-1,x)*struve_l(v,x))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) V X) ((MEXPT) X V))
  :INTEGRAL2 ((MTIMES) ((MEXPT) $%PI ((RAT) 1 2)) ((MEXPT) 2 ((MPLUS) -1 V)) ((MPLUS) ((MTIMES) ((%STRUVE_L) ((MPLUS) -1 V) X) ((%BESSEL_I) V X)) ((MTIMES) -1 ((%BESSEL_I) ((MPLUS) -1 V) X) ((%STRUVE_L) V X))) ((%GAMMA) ((MPLUS) ((RAT) 1 2) V)) X)
  :CONSTRAINT (ASK# V |1//2|)
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) (V FREEVAR) (X VARP)) ((MEXPT) (X VARP) (V_ EQUAL V)))
)

#S(TOI-ENTRY
  :INDEX 1182
  :INTEGRAND "x*bessel_i(1,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.2 with v=1")
  :INTEGRAL "(%pi/2)*x*(struve_l(0,x)*bessel_i(1,x)-bessel_i(0,x)*(struve_l(1,x)))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) 1 X) X)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) $%PI ((MPLUS) ((MTIMES) ((%STRUVE_L) 0 X) ((%BESSEL_I) 1 X)) ((MTIMES) -1 ((%BESSEL_I) 0 X) ((%STRUVE_L) 1 X))) X)
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) 1 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1183
  :INTEGRAND "%e^x*x^v*bessel_i(v,x)"
  :COMMENT "v # -1/2"
  :VAR X
  :PARAMETERS (V)
  :SOURCE ("DLMF 10.43.3.i")
  :INTEGRAL "%e^x*x^(v+1)*(bessel_i(v,x)-bessel_i(v+1,x))/(2*v+1)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) V X) ((MEXPT) X V) ((MEXPT) $%E X))
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) 1 ((MTIMES) 2 V)) -1) ((MPLUS) ((%BESSEL_I) V X) ((MTIMES) -1 ((%BESSEL_I) ((MPLUS) 1 V) X))) ((MEXPT) X ((MPLUS) 1 V)) ((MEXPT) $%E X))
  :CONSTRAINT (ASK# |-1//2|)
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) (V FREEVAR) (X VARP)) ((MEXPT) (X VARP) (V_ EQUAL V)) ((MEXPT) $%E (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1184
  :INTEGRAND "%e^x*bessel_i(0,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.3.i with v=0")
  :INTEGRAL "%e^x*x*(bessel_i(0,x)-bessel_i(1,x))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) 0 X) ((MEXPT) $%E X))
  :INTEGRAL2 ((MTIMES) ((MPLUS) ((%BESSEL_I) 0 X) ((MTIMES) -1 ((%BESSEL_I) 1 X))) X ((MEXPT) $%E X))
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) 0 (X VARP)) ((MEXPT) $%E (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1185
  :INTEGRAND "%e^x*x*bessel_i(1,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.3.i with v=1")
  :INTEGRAL "(1/3)*%e^x*x^2*(bessel_i(1,x)-bessel_i(2,x))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) 1 X) X ((MEXPT) $%E X))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 3) ((MPLUS) ((%BESSEL_I) 1 X) ((MTIMES) -1 ((%BESSEL_I) 2 X))) ((MEXPT) X 2) ((MEXPT) $%E X))
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) 1 (X VARP)) (X VARP) ((MEXPT) $%E (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1186
  :INTEGRAND "%e^-x*x^v*bessel_i(v,x)"
  :COMMENT "v # -1/2"
  :VAR X
  :PARAMETERS (V)
  :SOURCE ("DLMF 10.43.3.ii")
  :INTEGRAL "%e^-x*x^(v+1)*(bessel_i(v,x)+bessel_i(v+1,x))/(2*v+1)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) V X) ((MEXPT) X V) ((MEXPT) $%E ((MTIMES) -1 X)))
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) 1 ((MTIMES) 2 V)) -1) ((MPLUS) ((%BESSEL_I) V X) ((%BESSEL_I) ((MPLUS) 1 V) X)) ((MEXPT) X ((MPLUS) 1 V)) ((MEXPT) $%E ((MTIMES) -1 X)))
  :CONSTRAINT (ASK# V |-1//2|)
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) (V FREEVAR) (X VARP)) ((MEXPT) (X VARP) (V_ EQUAL V)) ((MEXPT) $%E ((MTIMES) -1 (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1187
  :INTEGRAND "%e^-x*bessel_i(0,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.3.ii with v=0")
  :INTEGRAL "%e^-x*x*(bessel_i(0,x)+bessel_i(1,x))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) 0 X) ((MEXPT) $%E ((MTIMES) -1 X)))
  :INTEGRAL2 ((MTIMES) ((MPLUS) ((%BESSEL_I) 0 X) ((%BESSEL_I) 1 X)) X ((MEXPT) $%E ((MTIMES) -1 X)))
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) 0 (X VARP)) ((MEXPT) $%E ((MTIMES) -1 (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1188
  :INTEGRAND "%e^-x*x*bessel_i(1,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.3.ii with v=1")
  :INTEGRAL "(x^2/3)*%e^-x*(bessel_i(1,x)+bessel_i(2,x))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) 1 X) X ((MEXPT) $%E ((MTIMES) -1 X)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 3) ((MPLUS) ((%BESSEL_I) 1 X) ((%BESSEL_I) 2 X)) ((MEXPT) X 2) ((MEXPT) $%E ((MTIMES) -1 X)))
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) 1 (X VARP)) (X VARP) ((MEXPT) $%E ((MTIMES) -1 (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1189
  :INTEGRAND "%e^x*x^-v*bessel_i(v,x)"
  :COMMENT "v # 1/2"
  :VAR X
  :PARAMETERS (V)
  :SOURCE ("DLMF 10.43.3.iii")
  :INTEGRAL "%e^x*x^(1-v)*(bessel_i(v,x)-bessel_i(v-1,x))/(1-2*v)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) V X) ((MEXPT) X ((MTIMES) -1 V)) ((MEXPT) $%E X))
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) 1 ((MTIMES) -2 V)) -1) ((MPLUS) ((MTIMES) -1 ((%BESSEL_I) ((MPLUS) -1 V) X)) ((%BESSEL_I) V X)) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 V))) ((MEXPT) $%E X))
  :CONSTRAINT (ASK# V |1//2|)
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) (V FREEVAR) (X VARP)) ((MEXPT) (X VARP) (-V SAMEDIFF V)) ((MEXPT) $%E (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1190
  :INTEGRAND "%e^x*x^-1*bessel_i(1,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.3.iii with v=1")
  :INTEGRAL "-%e^x*(bessel_i(1,x)-bessel_i(0,x))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) 1 X) ((MEXPT) X -1) ((MEXPT) $%E X))
  :INTEGRAL2 ((MTIMES) -1 ((MPLUS) ((MTIMES) -1 ((%BESSEL_I) 0 X)) ((%BESSEL_I) 1 X)) ((MEXPT) $%E X))
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) 1 (X VARP)) ((MEXPT) (X VARP) -1) ((MEXPT) $%E (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1191
  :INTEGRAND "%e^-x*x^-v*bessel_i(v,x)"
  :COMMENT "v # 1/2"
  :VAR X
  :PARAMETERS (V)
  :SOURCE ("DLMF 10.43.3.iv")
  :INTEGRAL "%e^-x*x^(1-v)*(bessel_i(v,x)+bessel_i(v-1,x))/(1-2*v)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) V X) ((MEXPT) X ((MTIMES) -1 V)) ((MEXPT) $%E ((MTIMES) -1 X)))
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) 1 ((MTIMES) -2 V)) -1) ((MPLUS) ((%BESSEL_I) ((MPLUS) -1 V) X) ((%BESSEL_I) V X)) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 V))) ((MEXPT) $%E ((MTIMES) -1 X)))
  :CONSTRAINT (ASK# V |1//2|)
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) (V FREEVAR) (X VARP)) ((MEXPT) (X VARP) (-V SAMEDIFF V)) ((MEXPT) $%E ((MTIMES) -1 (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1192
  :INTEGRAND "%e^-x*x^-1*bessel_i(1,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.3.iv with v=1")
  :INTEGRAL "-%e^-x*(bessel_i(1,x)+bessel_i(0,x))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_I) 1 X) ((MEXPT) X -1) ((MEXPT) $%E ((MTIMES) -1 X)))
  :INTEGRAL2 ((MTIMES) -1 ((MPLUS) ((%BESSEL_I) 0 X) ((%BESSEL_I) 1 X)) ((MEXPT) $%E ((MTIMES) -1 X)))
  :M2-PATTERN ((MTIMES) ((%BESSEL_I) 1 (X VARP)) ((MEXPT) (X VARP) -1) ((MEXPT) $%E ((MTIMES) -1 (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1193
  :INTEGRAND "x*bessel_k(0,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.1 (i) with v=0")
  :INTEGRAL "-x*bessel_k(1,x)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_K) 0 X) X)
  :INTEGRAL2 ((MTIMES) -1 ((%BESSEL_K) 1 X) X)
  :M2-PATTERN ((MTIMES) ((%BESSEL_K) 0 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1194
  :INTEGRAND "x^2*bessel_k(1,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.1.i with v = 1")
  :INTEGRAL "-x^2*bessel_k(2,x)"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_K) 1 X) ((MEXPT) X 2))
  :INTEGRAL2 ((MTIMES) -1 ((%BESSEL_K) 2 X) ((MEXPT) X 2))
  :M2-PATTERN ((MTIMES) ((%BESSEL_K) 1 (X VARP)) ((MEXPT) (X VARP) 2))
)

#S(TOI-ENTRY
  :INDEX 1195
  :INTEGRAND "x*bessel_k(1,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.2 with v=1")
  :INTEGRAL "(%pi*bessel_k(0,x)*struve_l(1,x)*x)/2+(%pi*struve_l(0,x)*bessel_k(1,x)*x)/2"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_K) 1 X) X)
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((RAT) 1 2) $%PI ((%STRUVE_L) 0 X) ((%BESSEL_K) 1 X) X) ((MTIMES) ((RAT) 1 2) $%PI ((%BESSEL_K) 0 X) ((%STRUVE_L) 1 X) X))
  :M2-PATTERN ((MTIMES) ((%BESSEL_K) 1 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1196
  :INTEGRAND "%e^x*bessel_k(0,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.3.i with v=0")
  :INTEGRAL "%e^x*x*(bessel_k(0,x)+bessel_k(1,x))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_K) 0 X) ((MEXPT) $%E X))
  :INTEGRAL2 ((MTIMES) ((MPLUS) ((%BESSEL_K) 0 X) ((%BESSEL_K) 1 X)) X ((MEXPT) $%E X))
  :M2-PATTERN ((MTIMES) ((%BESSEL_K) 0 (X VARP)) ((MEXPT) $%E (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1197
  :INTEGRAND "%e^x*x*bessel_k(1,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.3.i with v=1")
  :INTEGRAL "(1/3)*%e^x*x^2*(bessel_k(1,x)+bessel_k(2,x))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_K) 1 X) X ((MEXPT) $%E X))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 3) ((MPLUS) ((%BESSEL_K) 1 X) ((%BESSEL_K) 2 X)) ((MEXPT) X 2) ((MEXPT) $%E X))
  :M2-PATTERN ((MTIMES) ((%BESSEL_K) 1 (X VARP)) (X VARP) ((MEXPT) $%E (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1198
  :INTEGRAND "%e^-x*bessel_k(0,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.3.ii with v=0")
  :INTEGRAL "%e^-x*x*(bessel_k(0,x)-bessel_k(1,x))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_K) 0 X) ((MEXPT) $%E ((MTIMES) -1 X)))
  :INTEGRAL2 ((MTIMES) ((MPLUS) ((%BESSEL_K) 0 X) ((MTIMES) -1 ((%BESSEL_K) 1 X))) X ((MEXPT) $%E ((MTIMES) -1 X)))
  :M2-PATTERN ((MTIMES) ((%BESSEL_K) 0 (X VARP)) ((MEXPT) $%E ((MTIMES) -1 (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1199
  :INTEGRAND "%e^-x*x*bessel_k(1,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.3.ii with v=1")
  :INTEGRAL "(x^2/3)*%e^-x*(bessel_k(1,x)-bessel_k(2,x))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_K) 1 X) X ((MEXPT) $%E ((MTIMES) -1 X)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 3) ((MPLUS) ((%BESSEL_K) 1 X) ((MTIMES) -1 ((%BESSEL_K) 2 X))) ((MEXPT) X 2) ((MEXPT) $%E ((MTIMES) -1 X)))
  :M2-PATTERN ((MTIMES) ((%BESSEL_K) 1 (X VARP)) (X VARP) ((MEXPT) $%E ((MTIMES) -1 (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1200
  :INTEGRAND "%e^x*x^-1*bessel_k(1,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.3.iii with v=1")
  :INTEGRAL "-%e^x*(bessel_k(1,x)+bessel_k(0,x))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_K) 1 X) ((MEXPT) X -1) ((MEXPT) $%E X))
  :INTEGRAL2 ((MTIMES) -1 ((MPLUS) ((%BESSEL_K) 0 X) ((%BESSEL_K) 1 X)) ((MEXPT) $%E X))
  :M2-PATTERN ((MTIMES) ((%BESSEL_K) 1 (X VARP)) ((MEXPT) (X VARP) -1) ((MEXPT) $%E (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1201
  :INTEGRAND "%e^-x*x^-1*bessel_k(1,x)"
  :VAR X
  :SOURCE ("DLMF 10.43.3.iv with v=1")
  :INTEGRAL "-%e^-x*(bessel_k(1,x)-bessel_k(0,x))"
  :INTEGRAND2 ((MTIMES) ((%BESSEL_K) 1 X) ((MEXPT) X -1) ((MEXPT) $%E ((MTIMES) -1 X)))
  :INTEGRAL2 ((MTIMES) -1 ((MPLUS) ((MTIMES) -1 ((%BESSEL_K) 0 X)) ((%BESSEL_K) 1 X)) ((MEXPT) $%E ((MTIMES) -1 X)))
  :M2-PATTERN ((MTIMES) ((%BESSEL_K) 1 (X VARP)) ((MEXPT) (X VARP) -1) ((MEXPT) $%E ((MTIMES) -1 (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1202
  :INTEGRAND "x^v*struve_h(v-1,x)"
  :VAR X
  :PARAMETERS (V)
  :SOURCE ("DLMF 11.7.1")
  :INTEGRAL "x^v*struve_h(v,x)"
  :INTEGRAND2 ((MTIMES) ((%STRUVE_H) ((MPLUS) -1 V) X) ((MEXPT) X V))
  :INTEGRAL2 ((MTIMES) ((%STRUVE_H) V X) ((MEXPT) X V))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) (V FREEVAR)) ((%STRUVE_H) (V-1 SAMESAME V -1) (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1203
  :INTEGRAND "x*struve_h(0,x)"
  :VAR X
  :SOURCE ("DLMF 11.7.1: case v=1")
  :INTEGRAL "x*struve_h(1,x)"
  :INTEGRAND2 ((MTIMES) ((%STRUVE_H) 0 X) X)
  :INTEGRAL2 ((MTIMES) ((%STRUVE_H) 1 X) X)
  :M2-PATTERN ((MTIMES) ((%STRUVE_H) 0 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1204
  :INTEGRAND "x^-(u-1)*struve_h(u,x)"
  :VAR X
  :PARAMETERS (U)
  :SOURCE ("DLMF 11.7.2")
  :INTEGRAL "-x^-(u-1)*struve_h(u-1,x)+(2^-(u-1)*x)/(sqrt(%pi)*gamma(u+1/2))"
  :INTEGRAND2 ((MTIMES) ((%STRUVE_H) U X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U))))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((MEXPT) $%PI ((RAT) -1 2)) ((MEXPT) 2 ((MPLUS) 1 ((MTIMES) -1 U))) ((MEXPT) ((%GAMMA) ((MPLUS) ((RAT) 1 2) U)) -1) X) ((MTIMES) -1 ((%STRUVE_H) ((MPLUS) -1 U) X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U)))))
  :M2-PATTERN ((MTIMES) ((%STRUVE_H) (U FREEVAR) (X VARP)) ((MEXPT) (X VARP) (|1-U| SAMEDIFF U -1)))
)

#S(TOI-ENTRY
  :INDEX 1205
  :INTEGRAND "x^v*struve_l(v-1,x)"
  :VAR X
  :PARAMETERS (V)
  :SOURCE ("DLMF 11.7.3")
  :INTEGRAL "x^v*struve_l(v,x)"
  :INTEGRAND2 ((MTIMES) ((%STRUVE_L) ((MPLUS) -1 V) X) ((MEXPT) X V))
  :INTEGRAL2 ((MTIMES) ((%STRUVE_L) V X) ((MEXPT) X V))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) (V FREEVAR)) ((%STRUVE_L) (V-1 SAMESAME V -1) (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1206
  :INTEGRAND "x*struve_l(0,x)"
  :VAR X
  :SOURCE ("DLMF 11.7.3: case v=1")
  :INTEGRAL "x*struve_l(1,x)"
  :INTEGRAND2 ((MTIMES) ((%STRUVE_L) 0 X) X)
  :INTEGRAL2 ((MTIMES) ((%STRUVE_L) 1 X) X)
  :M2-PATTERN ((MTIMES) ((%STRUVE_L) 0 (X VARP)) (X VARP))
)

#S(TOI-ENTRY
  :INDEX 1207
  :INTEGRAND "x^-(u-1)*struve_l(u,x)"
  :VAR X
  :PARAMETERS (U)
  :SOURCE ("DLMF 11.7.4")
  :INTEGRAL "x^-(u-1)*struve_l(u-1,x)-(2^-(u-1)*x)/(sqrt(%pi)*gamma(u+1/2))"
  :INTEGRAND2 ((MTIMES) ((%STRUVE_L) U X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U))))
  :INTEGRAL2 ((MPLUS) ((MTIMES) -1 ((MEXPT) $%PI ((RAT) -1 2)) ((MEXPT) 2 ((MPLUS) 1 ((MTIMES) -1 U))) ((MEXPT) ((%GAMMA) ((MPLUS) ((RAT) 1 2) U)) -1) X) ((MTIMES) ((%STRUVE_L) ((MPLUS) -1 U) X) ((MEXPT) X ((MPLUS) 1 ((MTIMES) -1 U)))))
  :M2-PATTERN ((MTIMES) ((%STRUVE_L) (U FREEVAR) (X VARP)) ((MEXPT) (X VARP) (|1-U| SAMEDIFF U -1)))
)

#S(TOI-ENTRY
  :INDEX 1208
  :INTEGRAND "x*airy_ai(x)"
  :VAR X
  :SOURCE ("DLMF 9.10.8")
  :INTEGRAL "airy_dai(x)"
  :INTEGRAND2 ((MTIMES) X ((%AIRY_AI) X))
  :INTEGRAL2 ((%AIRY_DAI) X)
  :M2-PATTERN ((MTIMES) (X VARP) ((%AIRY_AI) (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1209
  :INTEGRAND "x*airy_bi(x)"
  :VAR X
  :SOURCE ("DLMF 9.10.8")
  :INTEGRAL "airy_dbi(x)"
  :INTEGRAND2 ((MTIMES) X ((%AIRY_BI) X))
  :INTEGRAL2 ((%AIRY_DBI) X)
  :M2-PATTERN ((MTIMES) (X VARP) ((%AIRY_BI) (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1210
  :INTEGRAND "x^2*airy_ai(x)"
  :VAR X
  :SOURCE ("DLMF 9.10.9")
  :INTEGRAL "x*airy_dai(x)-airy_ai(x)"
  :INTEGRAND2 ((MTIMES) ((MEXPT) X 2) ((%AIRY_AI) X))
  :INTEGRAL2 ((MPLUS) ((MTIMES) -1 ((%AIRY_AI) X)) ((MTIMES) X ((%AIRY_DAI) X)))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) 2) ((%AIRY_AI) (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1211
  :INTEGRAND "x^2*airy_bi(x)"
  :VAR X
  :SOURCE ("DLMF 9.10.9")
  :INTEGRAL "x*airy_dbi(x)-airy_bi(x)"
  :INTEGRAND2 ((MTIMES) ((MEXPT) X 2) ((%AIRY_BI) X))
  :INTEGRAL2 ((MPLUS) ((MTIMES) -1 ((%AIRY_BI) X)) ((MTIMES) X ((%AIRY_DBI) X)))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) 2) ((%AIRY_BI) (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1212
  :INTEGRAND "jacobi_sn(u,m)^n"
  :COMMENT "n, integer < -1"
  :VAR U
  :PARAMETERS (M N)
  :SOURCE ("G&R 5.131.1")
  :INTEGRAL "((-m*n-3*m)*integrate(jacobi_sn(u,m)^(n+4),u)
     +(m*n+n+2*m+2)*integrate(jacobi_sn(u,m)^(n+2),u)
     +jacobi_cn(u,m)*jacobi_dn(u,m)*jacobi_sn(u,m)^(n+1))/(n+1)"
  :INTEGRAND2 ((MEXPT) ((%JACOBI_SN) U M) N)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) 1 N) -1) ((MPLUS) ((MTIMES) ((%JACOBI_CN) U M) ((%JACOBI_DN) U M) ((MEXPT) ((%JACOBI_SN) U M) ((MPLUS) 1 N))) ((MTIMES) ((MPLUS) 2 ((MTIMES) 2 M) N ((MTIMES) M N)) ((%INTEGRATE) ((MEXPT) ((%JACOBI_SN) U M) ((MPLUS) 2 N)) U)) ((MTIMES) ((MPLUS) ((MTIMES) -3 M) ((MTIMES) -1 M N)) ((%INTEGRATE) ((MEXPT) ((%JACOBI_SN) U M) ((MPLUS) 4 N)) U))))
  :CONSTRAINT (ASKINTEGER> -1 N)
  :M2-PATTERN ((MEXPT) ((%JACOBI_SN) (U VARP) (M FREEVAR)) (N FREEVAR))
)

#S(TOI-ENTRY
  :INDEX 1213
  :INTEGRAND "jacobi_sn(u,m)^n"
  :COMMENT "n, integer > 2"
  :VAR U
  :PARAMETERS (M N)
  :SOURCE ("G&R 5.131.1 descending")
  :INTEGRAL "(((m+1)*n-2*m-2)*'integrate(jacobi_sn(u,m)^(n-2),u)
    +(3-n)*'integrate(jacobi_sn(u,m)^(n-4),u)
    +jacobi_cn(u,m)*jacobi_dn(u,m)*jacobi_sn(u,m)^(n-3))
    /(m*n-m)"
  :INTEGRAND2 ((MEXPT) ((%JACOBI_SN) U M) N)
  :INTEGRAL2 (LAMBDA (U M N) (MEVAL `((MTIMES) ((MEXPT) ((MPLUS) ((MTIMES) -1 ,M) ((MTIMES) ,M ,N)) -1) ((MPLUS) ((MTIMES) (($JACOBI_CN) ,U ,M) (($JACOBI_DN) ,U ,M) ((MEXPT) (($JACOBI_SN) ,U ,M) ((MPLUS) -3 ,N))) ((MTIMES) ((MPLUS) 3 ((MTIMES) -1 ,N)) (($INTEGRATE) ((MEXPT) (($JACOBI_SN) ,U ,M) ((MPLUS) -4 ,N)) ,U)) ((MTIMES) ((MPLUS) -2 ((MTIMES) -2 ,M) ((MTIMES) ((MPLUS) 1 ,M) ,N)) (($INTEGRATE) ((MEXPT) (($JACOBI_SN) ,U ,M) ((MPLUS) -2 ,N)) ,U))))))
  :CONSTRAINT (ASKINTEGER> N 2)
  :M2-PATTERN ((MEXPT) ((%JACOBI_SN) (U VARP) (M FREEVAR)) (N FREEVAR))
)

#S(TOI-ENTRY
  :INDEX 1214
  :INTEGRAND "jacobi_cn(u,m)^n"
  :COMMENT "n, integer < -1"
  :VAR U
  :PARAMETERS (M N)
  :SOURCE ("G&R 5.131.2")
  :INTEGRAL "(m*(n+3)*integrate(jacobi_cn(u,m)^(n+4),u)
     +(1-2*m)*(n+2)*integrate(jacobi_cn(u,m)^(n+2),u)
     -jacobi_cn(u,m)^(n+1)*jacobi_dn(u,m)*jacobi_sn(u,m))
     /((1-m)*(n+1))"
  :INTEGRAND2 ((MEXPT) ((%JACOBI_CN) U M) N)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 M)) -1) ((MEXPT) ((MPLUS) 1 N) -1) ((MPLUS) ((MTIMES) -1 ((MEXPT) ((%JACOBI_CN) U M) ((MPLUS) 1 N)) ((%JACOBI_DN) U M) ((%JACOBI_SN) U M)) ((MTIMES) ((MPLUS) 1 ((MTIMES) -2 M)) ((MPLUS) 2 N) ((%INTEGRATE) ((MEXPT) ((%JACOBI_CN) U M) ((MPLUS) 2 N)) U)) ((MTIMES) M ((MPLUS) 3 N) ((%INTEGRATE) ((MEXPT) ((%JACOBI_CN) U M) ((MPLUS) 4 N)) U))))
  :CONSTRAINT (ASKINTEGER> -1 N)
  :M2-PATTERN ((MEXPT) ((%JACOBI_CN) (U VARP) (M FREEVAR)) (N FREEVAR))
)

#S(TOI-ENTRY
  :INDEX 1215
  :INTEGRAND "jacobi_cn(u,m)^n"
  :COMMENT "n, integer > 2"
  :VAR U
  :PARAMETERS (M N)
  :SOURCE ("G&R 5.131.2")
  :INTEGRAL "(((2*m-1)*n-4*m+2)*'integrate(jacobi_cn(u,m)^(n-2),u)
    +((1-m)*n+3*m-3)*'integrate(jacobi_cn(u,m)^(n-4),u)
    +jacobi_cn(u,m)^(n-3)*jacobi_dn(u,m)*jacobi_sn(u,m))
   /(m*n-m)"
  :INTEGRAND2 ((MEXPT) ((%JACOBI_CN) U M) N)
  :INTEGRAL2 (LAMBDA (U M N) (MEVAL `((MTIMES) ((MEXPT) ((MPLUS) ((MTIMES) -1 ,M) ((MTIMES) ,M ,N)) -1) ((MPLUS) ((MTIMES) ((MEXPT) ((%JACOBI_CN) ,U ,M) ((MPLUS) -3 ,N)) ((%JACOBI_DN) ,U ,M) ((%JACOBI_SN) ,U ,M)) ((MTIMES) ((MPLUS) -3 ((MTIMES) 3 ,M) ((MTIMES) ((MPLUS) 1 ((MTIMES) -1 ,M)) ,N)) (($INTEGRATE) ((MEXPT) ((%JACOBI_CN) ,U ,M) ((MPLUS) -4 ,N)) ,U)) ((MTIMES) ((MPLUS) 2 ((MTIMES) -4 ,M) ((MTIMES) ((MPLUS) -1 ((MTIMES) 2 ,M)) ,N)) (($INTEGRATE) ((MEXPT) ((%JACOBI_CN) ,U ,M) ((MPLUS) -2 ,N)) ,U))))))
  :CONSTRAINT (ASKINTEGER> N 2)
  :M2-PATTERN ((MEXPT) ((%JACOBI_CN) (U VARP) (M FREEVAR)) (N FREEVAR))
)

#S(TOI-ENTRY
  :INDEX 1216
  :INTEGRAND "jacobi_dn(u,m)^n"
  :COMMENT "n, integer < -1"
  :VAR U
  :PARAMETERS (M N)
  :SOURCE ("G&R 5.131.3")
  :INTEGRAL "((n+3)*'integrate(jacobi_dn(u,m)^(n+4),u)
    +(m*n-2*n+2*m-4)*'integrate(jacobi_dn(u,m)^(n+2),u)
    -m*jacobi_cn(u,m)*jacobi_dn(u,m)^(n+1)*jacobi_sn(u,m))
   /(m*n-n+m-1)"
  :INTEGRAND2 ((MEXPT) ((%JACOBI_DN) U M) N)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) -1 M ((MTIMES) -1 N) ((MTIMES) M N)) -1) ((MPLUS) ((MTIMES) -1 M ((%JACOBI_CN) U M) ((MEXPT) ((%JACOBI_DN) U M) ((MPLUS) 1 N)) ((%JACOBI_SN) U M)) ((MTIMES) ((MPLUS) -4 ((MTIMES) 2 M) ((MTIMES) -2 N) ((MTIMES) M N)) ((%INTEGRATE) ((MEXPT) ((%JACOBI_DN) U M) ((MPLUS) 2 N)) U)) ((MTIMES) ((MPLUS) 3 N) ((%INTEGRATE) ((MEXPT) ((%JACOBI_DN) U M) ((MPLUS) 4 N)) U))))
  :CONSTRAINT (ASKINTEGER> -1 N)
  :M2-PATTERN ((MEXPT) ((%JACOBI_DN) (U VARP) (M FREEVAR)) (N FREEVAR))
)

#S(TOI-ENTRY
  :INDEX 1217
  :INTEGRAND "jacobi_dn(u,m)^n"
  :COMMENT "n, integer > 2"
  :VAR U
  :PARAMETERS (M N)
  :SOURCE ("G&R 5.131.3 descending")
  :INTEGRAL "((-m*n+2*n+2*m-4)*'integrate(jacobi_dn(u,m)^(n-2),u)
    +(m*n-n-3*m+3)*'integrate(jacobi_dn(u,m)^(n-4),u)
    +m*jacobi_cn(u,m)*jacobi_dn(u,m)^(n-3)*jacobi_sn(u,m))/(n-1)"
  :INTEGRAND2 ((MEXPT) ((%JACOBI_DN) U M) N)
  :INTEGRAL2 (LAMBDA (U M N) (MEVAL `((MTIMES) ((MEXPT) ((MPLUS) -1 ,N) -1) ((MPLUS) ((MTIMES) ,M ((%JACOBI_CN) ,U ,M) ((MEXPT) ((%JACOBI_DN) ,U ,M) ((MPLUS) -3 ,N)) ((%JACOBI_SN) ,U ,M)) ((MTIMES) ((MPLUS) 3 ((MTIMES) -3 ,M) ((MTIMES) -1 ,N) ((MTIMES) ,M ,N)) (($INTEGRATE) ((MEXPT) ((%JACOBI_DN) ,U ,M) ((MPLUS) -4 ,N)) ,U)) ((MTIMES) ((MPLUS) -4 ((MTIMES) 2 ,M) ((MTIMES) 2 ,N) ((MTIMES) -1 ,M ,N)) (($INTEGRATE) ((MEXPT) ((%JACOBI_DN) ,U ,M) ((MPLUS) -2 ,N)) ,U))))))
  :CONSTRAINT (ASKINTEGER> N 2)
  :M2-PATTERN ((MEXPT) ((%JACOBI_DN) (U VARP) (M FREEVAR)) (N FREEVAR))
)

#S(TOI-ENTRY
  :INDEX 1218
  :INTEGRAND "1/jacobi_sn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.132.1")
  :INTEGRAL "log((jacobi_dn(u,m)-jacobi_cn(u,m))/jacobi_sn(u,m))"
  :INTEGRAND2 ((MEXPT) ((%JACOBI_SN) U M) -1)
  :INTEGRAL2 ((%LOG) ((MTIMES) ((MPLUS) ((MTIMES) -1 ((%JACOBI_CN) U M)) ((%JACOBI_DN) U M)) ((MEXPT) ((%JACOBI_SN) U M) -1)))
  :M2-PATTERN ((MEXPT) ((%JACOBI_SN) (U VARP) (M FREEVAR)) -1)
)

#S(TOI-ENTRY
  :INDEX 1219
  :INTEGRAND "1/jacobi_cn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.132.2")
  :INTEGRAL "log((sqrt(1-m)*jacobi_sn(u,m)+jacobi_dn(u,m))/jacobi_cn(u,m))/sqrt(1-m)"
  :INTEGRAND2 ((MEXPT) ((%JACOBI_CN) U M) -1)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 M)) ((RAT) -1 2)) ((%LOG) ((MTIMES) ((MEXPT) ((%JACOBI_CN) U M) -1) ((MPLUS) ((%JACOBI_DN) U M) ((MTIMES) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 M)) ((RAT) 1 2)) ((%JACOBI_SN) U M))))))
  :M2-PATTERN ((MEXPT) ((%JACOBI_CN) (U VARP) (M FREEVAR)) -1)
)

#S(TOI-ENTRY
  :INDEX 1220
  :INTEGRAND "1/jacobi_dn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.132.3")
  :INTEGRAL "acos(jacobi_cn(u,m)/jacobi_dn(u,m))/sqrt(1-m)"
  :INTEGRAND2 ((MEXPT) ((%JACOBI_DN) U M) -1)
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 M)) ((RAT) -1 2)) ((%ACOS) ((MTIMES) ((%JACOBI_CN) U M) ((MEXPT) ((%JACOBI_DN) U M) -1))))
  :M2-PATTERN ((MEXPT) ((%JACOBI_DN) (U VARP) (M FREEVAR)) -1)
)

#S(TOI-ENTRY
  :INDEX 1221
  :INTEGRAND "jacobi_sn(u,m)^2"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.134.1")
  :INTEGRAL "(u-elliptic_e(asin(jacobi_sn(u,m)),m))/m"
  :INTEGRAND2 ((MEXPT) ((%JACOBI_SN) U M) 2)
  :INTEGRAL2 ((MTIMES) ((MEXPT) M -1) ((MPLUS) U ((MTIMES) -1 (($ELLIPTIC_E) ((%ASIN) ((%JACOBI_SN) U M)) M))))
  :M2-PATTERN ((MEXPT) ((%JACOBI_SN) (U VARP) (M FREEVAR)) 2)
)

#S(TOI-ENTRY
  :INDEX 1222
  :INTEGRAND "jacobi_cn(u,m)^2"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.134.2")
  :INTEGRAL "(elliptic_e(asin(jacobi_sn(u,m)),m)-(1-m)*u)/m"
  :INTEGRAND2 ((MEXPT) ((%JACOBI_CN) U M) 2)
  :INTEGRAL2 ((MTIMES) ((MEXPT) M -1) ((MPLUS) ((MTIMES) -1 ((MPLUS) 1 ((MTIMES) -1 M)) U) (($ELLIPTIC_E) ((%ASIN) ((%JACOBI_SN) U M)) M)))
  :M2-PATTERN ((MEXPT) ((%JACOBI_CN) (U VARP) (M FREEVAR)) 2)
)

#S(TOI-ENTRY
  :INDEX 1223
  :INTEGRAND "jacobi_dn(u,m)^2"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.134.3")
  :INTEGRAL "elliptic_e(asin(jacobi_sn(u,m)),m)"
  :INTEGRAND2 ((MEXPT) ((%JACOBI_DN) U M) 2)
  :INTEGRAL2 (($ELLIPTIC_E) ((%ASIN) ((%JACOBI_SN) U M)) M)
  :M2-PATTERN ((MEXPT) ((%JACOBI_DN) (U VARP) (M FREEVAR)) 2)
)

#S(TOI-ENTRY
  :INDEX 1224
  :INTEGRAND "jacobi_sn(u,m)/jacobi_cn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.135.1")
  :INTEGRAL "log((jacobi_dn(u,m)+sqrt(1-m))/jacobi_cn(u,m))/sqrt(1-m)"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%JACOBI_CN) U M) -1) ((%JACOBI_SN) U M))
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 M)) ((RAT) -1 2)) ((%LOG) ((MTIMES) ((MEXPT) ((%JACOBI_CN) U M) -1) ((MPLUS) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 M)) ((RAT) 1 2)) ((%JACOBI_DN) U M)))))
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%JACOBI_CN) (U VARP) (M FREEVAR)) -1) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)))
)

#S(TOI-ENTRY
  :INDEX 1225
  :INTEGRAND "jacobi_sn(u,m)/jacobi_dn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.135.2")
  :INTEGRAL "acot(sqrt(m)*jacobi_cn(u,m)/sqrt(1-m))/(sqrt(m)*sqrt(1-m))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%JACOBI_DN) U M) -1) ((%JACOBI_SN) U M))
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 M)) ((RAT) -1 2)) ((MEXPT) M ((RAT) -1 2)) ((%ACOT) ((MTIMES) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 M)) ((RAT) -1 2)) ((MEXPT) M ((RAT) 1 2)) ((%JACOBI_CN) U M))))
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%JACOBI_DN) (U VARP) (M FREEVAR)) -1) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)))
)

#S(TOI-ENTRY
  :INDEX 1226
  :INTEGRAND "jacobi_cn(u,m)/jacobi_sn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.135.3")
  :INTEGRAL "log((1-jacobi_dn(u,m))/jacobi_sn(u,m))"
  :INTEGRAND2 ((MTIMES) ((%JACOBI_CN) U M) ((MEXPT) ((%JACOBI_SN) U M) -1))
  :INTEGRAL2 ((%LOG) ((MTIMES) ((MPLUS) 1 ((MTIMES) -1 ((%JACOBI_DN) U M))) ((MEXPT) ((%JACOBI_SN) U M) -1)))
  :M2-PATTERN ((MTIMES) ((%JACOBI_CN) (U VARP) (M FREEVAR)) ((MEXPT) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)) -1))
)

#S(TOI-ENTRY
  :INDEX 1227
  :INTEGRAND "jacobi_cn(u,m)/jacobi_dn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.135.4")
  :INTEGRAL "-log((1-sqrt(m)*jacobi_sn(u,m))/jacobi_dn(u,m))/sqrt(m)"
  :INTEGRAND2 ((MTIMES) ((%JACOBI_CN) U M) ((MEXPT) ((%JACOBI_DN) U M) -1))
  :INTEGRAL2 ((MTIMES) -1 ((MEXPT) M ((RAT) -1 2)) ((%LOG) ((MTIMES) ((MEXPT) ((%JACOBI_DN) U M) -1) ((MPLUS) 1 ((MTIMES) -1 ((MEXPT) M ((RAT) 1 2)) ((%JACOBI_SN) U M))))))
  :M2-PATTERN ((MTIMES) ((%JACOBI_CN) (U VARP) (M FREEVAR)) ((MEXPT) ((%JACOBI_DN) (U VARP) (M_ EQUAL M)) -1))
)

#S(TOI-ENTRY
  :INDEX 1228
  :INTEGRAND "jacobi_dn(u,m)/jacobi_cn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.135.5")
  :INTEGRAL "log((1+jacobi_sn(u,m))/jacobi_cn(u,m))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%JACOBI_CN) U M) -1) ((%JACOBI_DN) U M))
  :INTEGRAL2 ((%LOG) ((MTIMES) ((MEXPT) ((%JACOBI_CN) U M) -1) ((MPLUS) 1 ((%JACOBI_SN) U M))))
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%JACOBI_CN) (U VARP) (M FREEVAR)) -1) ((%JACOBI_DN) (U VARP) (M_ EQUAL M)))
)

#S(TOI-ENTRY
  :INDEX 1229
  :INTEGRAND "jacobi_dn(u,m)/jacobi_sn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.135.6")
  :INTEGRAL "log((1-jacobi_cn(u,m))/(1+jacobi_cn(u,m)))/2"
  :INTEGRAND2 ((MTIMES) ((%JACOBI_DN) U M) ((MEXPT) ((%JACOBI_SN) U M) -1))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((%LOG) ((MTIMES) ((MPLUS) 1 ((MTIMES) -1 ((%JACOBI_CN) U M))) ((MEXPT) ((MPLUS) 1 ((%JACOBI_CN) U M)) -1))))
  :M2-PATTERN ((MTIMES) ((%JACOBI_DN) (U VARP) (M FREEVAR)) ((MEXPT) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)) -1))
)

#S(TOI-ENTRY
  :INDEX 1230
  :INTEGRAND "jacobi_sn(u,m)*jacobi_cn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.136.1")
  :INTEGRAL "-jacobi_dn(u,m)/m"
  :INTEGRAND2 ((MTIMES) ((%JACOBI_CN) U M) ((%JACOBI_SN) U M))
  :INTEGRAL2 ((MTIMES) -1 ((MEXPT) M -1) ((%JACOBI_DN) U M))
  :M2-PATTERN ((MTIMES) ((%JACOBI_CN) (U VARP) (M FREEVAR)) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)))
)

#S(TOI-ENTRY
  :INDEX 1231
  :INTEGRAND "jacobi_sn(u,m)*jacobi_dn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.136.2")
  :INTEGRAL "-jacobi_cn(u,m)"
  :INTEGRAND2 ((MTIMES) ((%JACOBI_DN) U M) ((%JACOBI_SN) U M))
  :INTEGRAL2 ((MTIMES) -1 ((%JACOBI_CN) U M))
  :M2-PATTERN ((MTIMES) ((%JACOBI_DN) (U VARP) (M FREEVAR)) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)))
)

#S(TOI-ENTRY
  :INDEX 1232
  :INTEGRAND "jacobi_cn(u,m)*jacobi_dn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.136.3")
  :INTEGRAL "jacobi_sn(u,m)"
  :INTEGRAND2 ((MTIMES) ((%JACOBI_CN) U M) ((%JACOBI_DN) U M))
  :INTEGRAL2 ((%JACOBI_SN) U M)
  :M2-PATTERN ((MTIMES) ((%JACOBI_CN) (U VARP) (M FREEVAR)) ((%JACOBI_DN) (U VARP) (M_ EQUAL M)))
)

#S(TOI-ENTRY
  :INDEX 1233
  :INTEGRAND "jacobi_sn(u,m)/jacobi_cn(u,m)^2"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.137.1")
  :INTEGRAL "(1/(1-m))*jacobi_dn(u,m)/jacobi_cn(u,m)"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%JACOBI_CN) U M) -2) ((%JACOBI_SN) U M))
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 M)) -1) ((MEXPT) ((%JACOBI_CN) U M) -1) ((%JACOBI_DN) U M))
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%JACOBI_CN) (U VARP) (M FREEVAR)) -2) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)))
)

#S(TOI-ENTRY
  :INDEX 1234
  :INTEGRAND "jacobi_sn(u,m)/jacobi_dn(u,m)^2"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.137.2")
  :INTEGRAL "-(1/(1-m))*jacobi_cn(u,m)/jacobi_dn(u,m)"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%JACOBI_DN) U M) -2) ((%JACOBI_SN) U M))
  :INTEGRAL2 ((MTIMES) -1 ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 M)) -1) ((%JACOBI_CN) U M) ((MEXPT) ((%JACOBI_DN) U M) -1))
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%JACOBI_DN) (U VARP) (M FREEVAR)) -2) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)))
)

#S(TOI-ENTRY
  :INDEX 1235
  :INTEGRAND "jacobi_cn(u,m)/jacobi_sn(u,m)^2"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.137.3")
  :INTEGRAL "-jacobi_dn(u,m)/jacobi_sn(u,m)"
  :INTEGRAND2 ((MTIMES) ((%JACOBI_CN) U M) ((MEXPT) ((%JACOBI_SN) U M) -2))
  :INTEGRAL2 ((MTIMES) -1 ((%JACOBI_DN) U M) ((MEXPT) ((%JACOBI_SN) U M) -1))
  :M2-PATTERN ((MTIMES) ((%JACOBI_CN) (U VARP) (M FREEVAR)) ((MEXPT) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)) -2))
)

#S(TOI-ENTRY
  :INDEX 1236
  :INTEGRAND "jacobi_cn(u,m)/jacobi_dn(u,m)^2"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.137.4")
  :INTEGRAL "jacobi_sn(u,m)/jacobi_dn(u,m)"
  :INTEGRAND2 ((MTIMES) ((%JACOBI_CN) U M) ((MEXPT) ((%JACOBI_DN) U M) -2))
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((%JACOBI_DN) U M) -1) ((%JACOBI_SN) U M))
  :M2-PATTERN ((MTIMES) ((%JACOBI_CN) (U VARP) (M FREEVAR)) ((MEXPT) ((%JACOBI_DN) (U VARP) (M_ EQUAL M)) -2))
)

#S(TOI-ENTRY
  :INDEX 1237
  :INTEGRAND "jacobi_dn(u,m)/jacobi_sn(u,m)^2"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.137.5")
  :INTEGRAL "-jacobi_cn(u,m)/jacobi_sn(u,m)"
  :INTEGRAND2 ((MTIMES) ((%JACOBI_DN) U M) ((MEXPT) ((%JACOBI_SN) U M) -2))
  :INTEGRAL2 ((MTIMES) -1 ((%JACOBI_CN) U M) ((MEXPT) ((%JACOBI_SN) U M) -1))
  :M2-PATTERN ((MTIMES) ((%JACOBI_DN) (U VARP) (M FREEVAR)) ((MEXPT) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)) -2))
)

#S(TOI-ENTRY
  :INDEX 1238
  :INTEGRAND "jacobi_dn(u,m)/jacobi_cn(u,m)^2"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.137.6")
  :INTEGRAL "jacobi_sn(u,m)/jacobi_cn(u,m)"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%JACOBI_CN) U M) -2) ((%JACOBI_DN) U M))
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((%JACOBI_CN) U M) -1) ((%JACOBI_SN) U M))
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%JACOBI_CN) (U VARP) (M FREEVAR)) -2) ((%JACOBI_DN) (U VARP) (M_ EQUAL M)))
)

#S(TOI-ENTRY
  :INDEX 1239
  :INTEGRAND "jacobi_cn(u,m)/(jacobi_sn(u,m)*jacobi_dn(u,m))"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.138.1")
  :INTEGRAL "log(jacobi_sn(u,m)/jacobi_dn(u,m))"
  :INTEGRAND2 ((MTIMES) ((%JACOBI_CN) U M) ((MEXPT) ((%JACOBI_DN) U M) -1) ((MEXPT) ((%JACOBI_SN) U M) -1))
  :INTEGRAL2 ((%LOG) ((MTIMES) ((MEXPT) ((%JACOBI_DN) U M) -1) ((%JACOBI_SN) U M)))
  :M2-PATTERN ((MTIMES) ((%JACOBI_CN) (U VARP) (M FREEVAR)) ((MEXPT) ((%JACOBI_DN) (U VARP) (M_ EQUAL M)) -1) ((MEXPT) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)) -1))
)

#S(TOI-ENTRY
  :INDEX 1240
  :INTEGRAND "jacobi_sn(u,m)/(jacobi_cn(u,m)*jacobi_dn(u,m))"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.138.2")
  :INTEGRAL "log(jacobi_dn(u,m)/jacobi_cn(u,m))/(1-m)"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%JACOBI_CN) U M) -1) ((MEXPT) ((%JACOBI_DN) U M) -1) ((%JACOBI_SN) U M))
  :INTEGRAL2 ((MTIMES) ((MEXPT) ((MPLUS) 1 ((MTIMES) -1 M)) -1) ((%LOG) ((MTIMES) ((MEXPT) ((%JACOBI_CN) U M) -1) ((%JACOBI_DN) U M))))
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%JACOBI_CN) (U VARP) (M FREEVAR)) -1) ((MEXPT) ((%JACOBI_DN) (U VARP) (M_ EQUAL M)) -1) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)))
)

#S(TOI-ENTRY
  :INDEX 1241
  :INTEGRAND "jacobi_dn(u,m)/(jacobi_sn(u,m)*jacobi_cn(u,m))"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.138.3")
  :INTEGRAL "log(jacobi_sn(u,m)/jacobi_cn(u,m))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%JACOBI_CN) U M) -1) ((%JACOBI_DN) U M) ((MEXPT) ((%JACOBI_SN) U M) -1))
  :INTEGRAL2 ((%LOG) ((MTIMES) ((MEXPT) ((%JACOBI_CN) U M) -1) ((%JACOBI_SN) U M)))
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%JACOBI_CN) (U VARP) (M FREEVAR)) -1) ((%JACOBI_DN) (U VARP) (M_ EQUAL M)) ((MEXPT) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)) -1))
)

#S(TOI-ENTRY
  :INDEX 1242
  :INTEGRAND "jacobi_cn(u,m)*jacobi_dn(u,m)/jacobi_sn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.139.1")
  :INTEGRAL "log(jacobi_sn(u,m))"
  :INTEGRAND2 ((MTIMES) ((%JACOBI_CN) U M) ((%JACOBI_DN) U M) ((MEXPT) ((%JACOBI_SN) U M) -1))
  :INTEGRAL2 ((%LOG) ((%JACOBI_SN) U M))
  :M2-PATTERN ((MTIMES) ((%JACOBI_CN) (U VARP) (M FREEVAR)) ((%JACOBI_DN) (U VARP) (M_ EQUAL M)) ((MEXPT) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)) -1))
)

#S(TOI-ENTRY
  :INDEX 1243
  :INTEGRAND "jacobi_sn(u,m)*jacobi_dn(u,m)/jacobi_cn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.139.2")
  :INTEGRAL "-log(jacobi_cn(u,m))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%JACOBI_CN) U M) -1) ((%JACOBI_DN) U M) ((%JACOBI_SN) U M))
  :INTEGRAL2 ((MTIMES) -1 ((%LOG) ((%JACOBI_CN) U M)))
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%JACOBI_CN) (U VARP) (M FREEVAR)) -1) ((%JACOBI_DN) (U VARP) (M_ EQUAL M)) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)))
)

#S(TOI-ENTRY
  :INDEX 1244
  :INTEGRAND "jacobi_sn(u,m)*jacobi_cn(u,m)/jacobi_dn(u,m)"
  :VAR U
  :PARAMETERS (M)
  :SOURCE ("G&R 5.139.3")
  :INTEGRAL "-log(jacobi_dn(u,m))/m"
  :INTEGRAND2 ((MTIMES) ((%JACOBI_CN) U M) ((MEXPT) ((%JACOBI_DN) U M) -1) ((%JACOBI_SN) U M))
  :INTEGRAL2 ((MTIMES) -1 ((MEXPT) M -1) ((%LOG) ((%JACOBI_DN) U M)))
  :M2-PATTERN ((MTIMES) ((%JACOBI_CN) (U VARP) (M FREEVAR)) ((MEXPT) ((%JACOBI_DN) (U VARP) (M_ EQUAL M)) -1) ((%JACOBI_SN) (U VARP) (M_ EQUAL M)))
)

#S(TOI-ENTRY
  :INDEX 1245
  :INTEGRAND "cos(a*x)*expintegral_ci(b*x)"
  :VAR X
  :PARAMETERS (A B)
  :SOURCE ("G&R 5.31.1")
  :INTEGRAL "sin(a*x)*expintegral_ci(b*x)/a-(expintegral_si((a+b)*x)+expintegral_si((a-b)*x))/(2*a)"
  :INTEGRAND2 ((MTIMES) ((%COS) ((MTIMES) A X)) ((%EXPINTEGRAL_CI) ((MTIMES) B X)))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((MEXPT) A -1) ((%SIN) ((MTIMES) A X)) ((%EXPINTEGRAL_CI) ((MTIMES) B X))) ((MTIMES) ((RAT) -1 2) ((MEXPT) A -1) ((MPLUS) ((%EXPINTEGRAL_SI) ((MTIMES) ((MPLUS) A ((MTIMES) -1 B)) X)) ((%EXPINTEGRAL_SI) ((MTIMES) ((MPLUS) A B) X)))))
  :M2-PATTERN ((MTIMES) ((%COS) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%EXPINTEGRAL_CI) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1246
  :INTEGRAND "sin(a*x)*expintegral_ci(b*x)"
  :COMMENT "a#b"
  :VAR X
  :PARAMETERS (A B)
  :SOURCE ("G&R 5.31.2")
  :INTEGRAL "-cos(a*x)*expintegral_ci(b*x)/a+(expintegral_ci((a+b)*x)+expintegral_ci((a-b)*x))/(2*a)"
  :INTEGRAND2 ((MTIMES) ((%SIN) ((MTIMES) A X)) ((%EXPINTEGRAL_CI) ((MTIMES) B X)))
  :INTEGRAL2 ((MPLUS) ((MTIMES) -1 ((MEXPT) A -1) ((%COS) ((MTIMES) A X)) ((%EXPINTEGRAL_CI) ((MTIMES) B X))) ((MTIMES) ((RAT) 1 2) ((MEXPT) A -1) ((MPLUS) ((%EXPINTEGRAL_CI) ((MTIMES) ((MPLUS) A ((MTIMES) -1 B)) X)) ((%EXPINTEGRAL_CI) ((MTIMES) ((MPLUS) A B) X)))))
  :CONSTRAINT (ASK# A B)
  :M2-PATTERN ((MTIMES) ((%SIN) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%EXPINTEGRAL_CI) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1247
  :INTEGRAND "cos(a*x)*expintegral_si(b*x)"
  :COMMENT "a#b"
  :VAR X
  :PARAMETERS (A B)
  :SOURCE ("G&R 5.32.1")
  :INTEGRAL "sin(a*x)*expintegral_si(b*x)/a+(expintegral_ci((a+b)*x)-expintegral_ci((a-b)*x))/(2*a)"
  :INTEGRAND2 ((MTIMES) ((%COS) ((MTIMES) A X)) ((%EXPINTEGRAL_SI) ((MTIMES) B X)))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((MEXPT) A -1) ((%SIN) ((MTIMES) A X)) ((%EXPINTEGRAL_SI) ((MTIMES) B X))) ((MTIMES) ((RAT) 1 2) ((MEXPT) A -1) ((MPLUS) ((MTIMES) -1 ((%EXPINTEGRAL_CI) ((MTIMES) ((MPLUS) A ((MTIMES) -1 B)) X))) ((%EXPINTEGRAL_CI) ((MTIMES) ((MPLUS) A B) X)))))
  :CONSTRAINT (ASK# A B)
  :M2-PATTERN ((MTIMES) ((%COS) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%EXPINTEGRAL_SI) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1248
  :INTEGRAND "sin(a*x)*expintegral_si(b*x)"
  :VAR X
  :PARAMETERS (A B)
  :SOURCE ("G&R 5.32.1")
  :INTEGRAL "-cos(a*x)*expintegral_si(b*x)/a+(expintegral_si((a+b)*x)-expintegral_si((a-b)*x))/(2*a)"
  :INTEGRAND2 ((MTIMES) ((%SIN) ((MTIMES) A X)) ((%EXPINTEGRAL_SI) ((MTIMES) B X)))
  :INTEGRAL2 ((MPLUS) ((MTIMES) -1 ((MEXPT) A -1) ((%COS) ((MTIMES) A X)) ((%EXPINTEGRAL_SI) ((MTIMES) B X))) ((MTIMES) ((RAT) 1 2) ((MEXPT) A -1) ((MPLUS) ((MTIMES) -1 ((%EXPINTEGRAL_SI) ((MTIMES) ((MPLUS) A ((MTIMES) -1 B)) X))) ((%EXPINTEGRAL_SI) ((MTIMES) ((MPLUS) A B) X)))))
  :M2-PATTERN ((MTIMES) ((%SIN) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%EXPINTEGRAL_SI) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1249
  :INTEGRAND "expintegral_ci(a*x)*expintegral_ci(b*x)"
  :VAR X
  :PARAMETERS (A B)
  :SOURCE ("G&R 5.33.1")
  :INTEGRAL "x*expintegral_ci(a*x)*expintegral_ci(b*x)
    +(expintegral_si((a+b)*x)+expintegral_si((a-b)*x))/(2*a)
    +(expintegral_si((a+b)*x)+expintegral_si((b-a)*x))/(2*b)
    -sin(a*x)*expintegral_ci(b*x)/a-sin(b*x)*expintegral_ci(a*x)/b"
  :INTEGRAND2 ((MTIMES) ((%EXPINTEGRAL_CI) ((MTIMES) A X)) ((%EXPINTEGRAL_CI) ((MTIMES) B X)))
  :INTEGRAL2 ((MPLUS) ((MTIMES) X ((%EXPINTEGRAL_CI) ((MTIMES) A X)) ((%EXPINTEGRAL_CI) ((MTIMES) B X))) ((MTIMES) -1 ((MEXPT) A -1) ((%SIN) ((MTIMES) A X)) ((%EXPINTEGRAL_CI) ((MTIMES) B X))) ((MTIMES) -1 ((MEXPT) B -1) ((%EXPINTEGRAL_CI) ((MTIMES) A X)) ((%SIN) ((MTIMES) B X))) ((MTIMES) ((RAT) 1 2) ((MEXPT) A -1) ((MPLUS) ((%EXPINTEGRAL_SI) ((MTIMES) ((MPLUS) A ((MTIMES) -1 B)) X)) ((%EXPINTEGRAL_SI) ((MTIMES) ((MPLUS) A B) X)))) ((MTIMES) ((RAT) 1 2) ((MEXPT) B -1) ((MPLUS) ((%EXPINTEGRAL_SI) ((MTIMES) ((MPLUS) ((MTIMES) -1 A) B) X)) ((%EXPINTEGRAL_SI) ((MTIMES) ((MPLUS) A B) X)))))
  :M2-PATTERN ((MTIMES) ((%EXPINTEGRAL_CI) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%EXPINTEGRAL_CI) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1250
  :INTEGRAND "expintegral_ci(a*x)^2"
  :VAR X
  :PARAMETERS (A)
  :SOURCE ("G&R 5.33.1, special case a=b")
  :INTEGRAL "(a*x*expintegral_ci(a*x)^2-2*sin(a*x)*expintegral_ci(a*x)+expintegral_si(2*a*x))/a"
  :INTEGRAND2 ((MEXPT) ((%EXPINTEGRAL_CI) ((MTIMES) A X)) 2)
  :INTEGRAL2 ((MTIMES) ((MEXPT) A -1) ((MPLUS) ((MTIMES) A X ((MEXPT) ((%EXPINTEGRAL_CI) ((MTIMES) A X)) 2)) ((MTIMES) -2 ((%EXPINTEGRAL_CI) ((MTIMES) A X)) ((%SIN) ((MTIMES) A X))) ((%EXPINTEGRAL_SI) ((MTIMES) 2 A X))))
  :M2-PATTERN ((MEXPT) ((%EXPINTEGRAL_CI) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) 2)
)

#S(TOI-ENTRY
  :INDEX 1251
  :INTEGRAND "expintegral_si(a*x)*expintegral_si(b*x)"
  :VAR X
  :PARAMETERS (A B)
  :SOURCE ("G&R 5.33.2, 7th ed is incorrect")
  :INTEGRAL "x*expintegral_si(a*x)*expintegral_si(b*x)
    -((expintegral_si((a+b)*x)+expintegral_si((a-b)*x))/(2*b))
    -((expintegral_si((a+b)*x)+expintegral_si((b-a)*x))/(2*a))
    +cos(a*x)*expintegral_si(b*x)/a+cos(b*x)*expintegral_si(a*x)/b"
  :INTEGRAND2 ((MTIMES) ((%EXPINTEGRAL_SI) ((MTIMES) A X)) ((%EXPINTEGRAL_SI) ((MTIMES) B X)))
  :INTEGRAL2 ((MPLUS) ((MTIMES) ((MEXPT) B -1) ((%EXPINTEGRAL_SI) ((MTIMES) A X)) ((%COS) ((MTIMES) B X))) ((MTIMES) ((MEXPT) A -1) ((%COS) ((MTIMES) A X)) ((%EXPINTEGRAL_SI) ((MTIMES) B X))) ((MTIMES) X ((%EXPINTEGRAL_SI) ((MTIMES) A X)) ((%EXPINTEGRAL_SI) ((MTIMES) B X))) ((MTIMES) ((RAT) -1 2) ((MEXPT) B -1) ((MPLUS) ((%EXPINTEGRAL_SI) ((MTIMES) ((MPLUS) A ((MTIMES) -1 B)) X)) ((%EXPINTEGRAL_SI) ((MTIMES) ((MPLUS) A B) X)))) ((MTIMES) ((RAT) -1 2) ((MEXPT) A -1) ((MPLUS) ((%EXPINTEGRAL_SI) ((MTIMES) ((MPLUS) ((MTIMES) -1 A) B) X)) ((%EXPINTEGRAL_SI) ((MTIMES) ((MPLUS) A B) X)))))
  :M2-PATTERN ((MTIMES) ((%EXPINTEGRAL_SI) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%EXPINTEGRAL_SI) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1252
  :INTEGRAND "expintegral_si(a*x)^2"
  :VAR X
  :PARAMETERS (A)
  :SOURCE ("G&R 5.33.2, special case a=b")
  :INTEGRAL "(2*cos(a*x)*expintegral_si(a*x)+a*x*expintegral_si(a*x)^2-expintegral_si(2*a*x))/a"
  :INTEGRAND2 ((MEXPT) ((%EXPINTEGRAL_SI) ((MTIMES) A X)) 2)
  :INTEGRAL2 ((MTIMES) ((MEXPT) A -1) ((MPLUS) ((MTIMES) 2 ((%COS) ((MTIMES) A X)) ((%EXPINTEGRAL_SI) ((MTIMES) A X))) ((MTIMES) A X ((MEXPT) ((%EXPINTEGRAL_SI) ((MTIMES) A X)) 2)) ((MTIMES) -1 ((%EXPINTEGRAL_SI) ((MTIMES) 2 A X)))))
  :M2-PATTERN ((MEXPT) ((%EXPINTEGRAL_SI) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) 2)
)

#S(TOI-ENTRY
  :INDEX 1253
  :INTEGRAND "expintegral_si(a*x)*expintegral_ci(b*x)"
  :COMMENT "a#b"
  :VAR X
  :PARAMETERS (A B)
  :SOURCE ("G&R 5.33.3")
  :INTEGRAL "x*expintegral_si(a*x)*expintegral_ci(b*x)
    +(cos(a*x)*expintegral_ci(b*x)/a)-(sin(b*x)*expintegral_si(a*x)/b)
    -((1/(2*a)+1/(2*b))*expintegral_ci((a+b)*x))
    -((1/(2*a)-1/(2*b))*expintegral_ci((a-b)*x))"
  :INTEGRAND2 ((MTIMES) ((%EXPINTEGRAL_SI) ((MTIMES) A X)) ((%EXPINTEGRAL_CI) ((MTIMES) B X)))
  :INTEGRAL2 ((MPLUS) ((MTIMES) -1 ((MPLUS) ((MTIMES) ((RAT) 1 2) ((MEXPT) A -1)) ((MTIMES) ((RAT) -1 2) ((MEXPT) B -1))) ((%EXPINTEGRAL_CI) ((MTIMES) ((MPLUS) A ((MTIMES) -1 B)) X))) ((MTIMES) ((MEXPT) A -1) ((%COS) ((MTIMES) A X)) ((%EXPINTEGRAL_CI) ((MTIMES) B X))) ((MTIMES) X ((%EXPINTEGRAL_SI) ((MTIMES) A X)) ((%EXPINTEGRAL_CI) ((MTIMES) B X))) ((MTIMES) -1 ((MEXPT) B -1) ((%EXPINTEGRAL_SI) ((MTIMES) A X)) ((%SIN) ((MTIMES) B X))) ((MTIMES) -1 ((MPLUS) ((MTIMES) ((RAT) 1 2) ((MEXPT) A -1)) ((MTIMES) ((RAT) 1 2) ((MEXPT) B -1))) ((%EXPINTEGRAL_CI) ((MTIMES) ((MPLUS) A B) X))))
  :CONSTRAINT (ASK# A B)
  :M2-PATTERN ((MTIMES) ((%EXPINTEGRAL_SI) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%EXPINTEGRAL_CI) ((MTIMES) ((COEFFTT) (B FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1254
  :INTEGRAND "x*expintegral_si(a*x)"
  :VAR X
  :PARAMETERS (A)
  :SOURCE ("http://functions.wolfram.com/06.37.21.0006.01")
  :INTEGRAL "(a^2*expintegral_si(a*x)*x^2+a*cos(a*x)*x-sin(a*x))/(2*a^2)"
  :INTEGRAND2 ((MTIMES) X ((%EXPINTEGRAL_SI) ((MTIMES) A X)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) A -2) ((MPLUS) ((MTIMES) A X ((%COS) ((MTIMES) A X))) ((MTIMES) ((MEXPT) A 2) ((MEXPT) X 2) ((%EXPINTEGRAL_SI) ((MTIMES) A X))) ((MTIMES) -1 ((%SIN) ((MTIMES) A X)))))
  :M2-PATTERN ((MTIMES) (X VARP) ((%EXPINTEGRAL_SI) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1255
  :INTEGRAND "expintegral_si(a*x)/x^2"
  :VAR X
  :PARAMETERS (A)
  :SOURCE ("http://functions.wolfram.com/06.37.21.0008.01")
  :INTEGRAL "(a*x*expintegral_ci(a*x)-sin(a*x)-expintegral_si(a*x))/x"
  :INTEGRAND2 ((MTIMES) ((MEXPT) X -2) ((%EXPINTEGRAL_SI) ((MTIMES) A X)))
  :INTEGRAL2 ((MTIMES) ((MEXPT) X -1) ((MPLUS) ((MTIMES) A X ((%EXPINTEGRAL_CI) ((MTIMES) A X))) ((MTIMES) -1 ((%EXPINTEGRAL_SI) ((MTIMES) A X))) ((MTIMES) -1 ((%SIN) ((MTIMES) A X)))))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -2) ((%EXPINTEGRAL_SI) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1256
  :INTEGRAND "cos(a*x)*expintegral_si(a*x)"
  :VAR X
  :PARAMETERS (A)
  :SOURCE ("http://functions.wolfram.com/06.37.21.0023.01")
  :INTEGRAL "(expintegral_ci(2*a*x)-log(a*x)+2*sin(a*x)*expintegral_si(a*x))/(2*a)"
  :INTEGRAND2 ((MTIMES) ((%COS) ((MTIMES) A X)) ((%EXPINTEGRAL_SI) ((MTIMES) A X)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) A -1) ((MPLUS) ((MTIMES) -1 ((%LOG) ((MTIMES) A X))) ((MTIMES) 2 ((%EXPINTEGRAL_SI) ((MTIMES) A X)) ((%SIN) ((MTIMES) A X))) ((%EXPINTEGRAL_CI) ((MTIMES) 2 A X))))
  :M2-PATTERN ((MTIMES) ((%COS) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%EXPINTEGRAL_SI) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1257
  :INTEGRAND "x*expintegral_ci(a*x)"
  :VAR X
  :PARAMETERS (A)
  :SOURCE ("http://functions.wolfram.com/06.38.21.0006.01")
  :INTEGRAL "-((-a^2*expintegral_ci(a*x)*x^2+a*sin(a*x)*x+cos(a*x))/(2*a^2))"
  :INTEGRAND2 ((MTIMES) X ((%EXPINTEGRAL_CI) ((MTIMES) A X)))
  :INTEGRAL2 ((MTIMES) ((RAT) -1 2) ((MEXPT) A -2) ((MPLUS) ((%COS) ((MTIMES) A X)) ((MTIMES) -1 ((MEXPT) A 2) ((MEXPT) X 2) ((%EXPINTEGRAL_CI) ((MTIMES) A X))) ((MTIMES) A X ((%SIN) ((MTIMES) A X)))))
  :M2-PATTERN ((MTIMES) (X VARP) ((%EXPINTEGRAL_CI) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1258
  :INTEGRAND "expintegral_ci(a*x)/x^2"
  :VAR X
  :PARAMETERS (A)
  :SOURCE ("http://functions.wolfram.com/06.38.21.0008.01")
  :INTEGRAL "-(a*x*expintegral_si(a*x)+cos(a*x)+expintegral_ci(a*x))/x"
  :INTEGRAND2 ((MTIMES) ((MEXPT) X -2) ((%EXPINTEGRAL_CI) ((MTIMES) A X)))
  :INTEGRAL2 ((MTIMES) ((MEXPT) X -1) ((MPLUS) ((MTIMES) -1 ((%COS) ((MTIMES) A X))) ((MTIMES) -1 ((%EXPINTEGRAL_CI) ((MTIMES) A X))) ((MTIMES) -1 A X ((%EXPINTEGRAL_SI) ((MTIMES) A X)))))
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -2) ((%EXPINTEGRAL_CI) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1259
  :INTEGRAND "sin(a*x)*expintegral_ci(a*x)"
  :VAR X
  :PARAMETERS (A)
  :SOURCE ("http://functions.wolfram.com/06.38.21.0021.01")
  :INTEGRAL "(expintegral_ci(2*a*x)+log(a*x)-2*cos(a*x)*expintegral_ci(a*x))/(2*a)"
  :INTEGRAND2 ((MTIMES) ((%EXPINTEGRAL_CI) ((MTIMES) A X)) ((%SIN) ((MTIMES) A X)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) ((MEXPT) A -1) ((MPLUS) ((MTIMES) -2 ((%COS) ((MTIMES) A X)) ((%EXPINTEGRAL_CI) ((MTIMES) A X))) ((%LOG) ((MTIMES) A X)) ((%EXPINTEGRAL_CI) ((MTIMES) 2 A X))))
  :M2-PATTERN ((MTIMES) ((%EXPINTEGRAL_CI) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))) ((%SIN) ((MTIMES) ((COEFFTT) (A_ EQUAL A)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1
  :INTEGRAND "x"
  :COMMENT "trivial for testing"
  :VAR X
  :INTEGRAL "1/2"
  :INTEGRAND2 X
  :INTEGRAL2 ((RAT) 1 2)
  :LBOUND 0
  :UBOUND 1
  :M2-PATTERN (X VARP)
)

#S(TOI-ENTRY
  :INDEX 2
  :INTEGRAND "x"
  :COMMENT "trivial for testing"
  :VAR X
  :INTEGRAL "2"
  :INTEGRAND2 X
  :INTEGRAL2 2
  :LBOUND 0
  :UBOUND 2
  :M2-PATTERN (X VARP)
)

#S(TOI-ENTRY
  :INDEX 3
  :INTEGRAND "x^2"
  :COMMENT "trivial for testing"
  :VAR X
  :INTEGRAL "1/3"
  :INTEGRAND2 ((MEXPT) X 2)
  :INTEGRAL2 ((RAT) 1 3)
  :LBOUND 0
  :UBOUND 1
  :M2-PATTERN ((MEXPT) (X VARP) 2)
)

#S(TOI-ENTRY
  :INDEX 4
  :INTEGRAND "x^2"
  :COMMENT "trivial for testing"
  :VAR X
  :INTEGRAL "8/3"
  :INTEGRAND2 ((MEXPT) X 2)
  :INTEGRAL2 ((RAT) 8 3)
  :LBOUND 0
  :UBOUND 2
  :M2-PATTERN ((MEXPT) (X VARP) 2)
)

#S(TOI-ENTRY
  :INDEX 5
  :INTEGRAND "sin(x)^2"
  :COMMENT "trivial for testing"
  :VAR X
  :INTEGRAL "%pi/2"
  :INTEGRAND2 ((MEXPT) ((%SIN) X) 2)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) $%PI)
  :LBOUND 0
  :UBOUND $%PI
  :M2-PATTERN ((MEXPT) ((%SIN) (X VARP)) 2)
)

#S(TOI-ENTRY
  :INDEX 6
  :INTEGRAND "sin(x)^2"
  :COMMENT "trivial for testing"
  :VAR X
  :INTEGRAL "%pi/4"
  :INTEGRAND2 ((MEXPT) ((%SIN) X) 2)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 4) $%PI)
  :LBOUND 0
  :UBOUND ((MTIMES) ((RAT) 1 2) $%PI)
  :M2-PATTERN ((MEXPT) ((%SIN) (X VARP)) 2)
)

#S(TOI-ENTRY
  :INDEX 1400
  :INTEGRAND "tan(x)/x"
  :VAR X
  :SOURCE ("CRC 603")
  :INTEGRAL "%pi/2"
  :INTEGRAND2 ((MTIMES) ((MEXPT) X -1) ((%TAN) X))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) $%PI)
  :LBOUND 0
  :UBOUND $INF
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -1) ((%TAN) (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1401
  :INTEGRAND "tan(a*x)/x"
  :VAR X
  :PARAMETERS (A)
  :SOURCE ("CRC 604")
  :INTEGRAL "%pi/2"
  :INTEGRAND2 ((MTIMES) ((MEXPT) X -1) ((%TAN) ((MTIMES) A X)))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 2) $%PI)
  :LBOUND 0
  :UBOUND $INF
  :CONSTRAINT (ASK> A)
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -1) ((%TAN) ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP))))
)

#S(TOI-ENTRY
  :INDEX 1402
  :INTEGRAND "sin(x)^3/x^2"
  :VAR X
  :SOURCE ("CRC 622")
  :INTEGRAL "3*log(3)/4"
  :INTEGRAND2 ((MTIMES) ((MEXPT) X -2) ((MEXPT) ((%SIN) X) 3))
  :INTEGRAL2 ((MTIMES) ((RAT) 3 4) ((%LOG) 3))
  :LBOUND 0
  :UBOUND $INF
  :M2-PATTERN ((MTIMES) ((MEXPT) (X VARP) -2) ((MEXPT) ((%SIN) (X VARP)) 3))
)

#S(TOI-ENTRY
  :INDEX 1403
  :INTEGRAND "airy_ai(x)^3"
  :VAR X
  :SOURCE ("DLMF 9.11.16")
  :INTEGRAL "gamma(1/3)^2/(4*%pi^2)"
  :INTEGRAND2 ((MEXPT) ((%AIRY_AI) X) 3)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 4) ((MEXPT) $%PI -2) ((MEXPT) ((%GAMMA) ((RAT) 1 3)) 2))
  :LBOUND $MINF
  :UBOUND $INF
  :M2-PATTERN ((MEXPT) ((%AIRY_AI) (X VARP)) 3)
)

#S(TOI-ENTRY
  :INDEX 1404
  :INTEGRAND "airy_ai(x)^2*airy_bi(x)"
  :VAR X
  :SOURCE ("DLMF 9.11.17")
  :INTEGRAL "gamma(1/3)^2/(4*sqrt(3)*%pi^2)"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%AIRY_AI) X) 2) ((%AIRY_BI) X))
  :INTEGRAL2 ((MTIMES) ((RAT) 1 4) ((MEXPT) 3 ((RAT) -1 2)) ((MEXPT) $%PI -2) ((MEXPT) ((%GAMMA) ((RAT) 1 3)) 2))
  :LBOUND $MINF
  :UBOUND $INF
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%AIRY_AI) (X VARP)) 2) ((%AIRY_BI) (X VARP)))
)

#S(TOI-ENTRY
  :INDEX 1405
  :INTEGRAND "airy_ai(x)^4"
  :VAR X
  :SOURCE ("DLMF 9.11.18")
  :INTEGRAL "log(3)/(24*%pi^2)"
  :INTEGRAND2 ((MEXPT) ((%AIRY_AI) X) 4)
  :INTEGRAL2 ((MTIMES) ((RAT) 1 24) ((MEXPT) $%PI -2) ((%LOG) 3))
  :LBOUND 0
  :UBOUND $INF
  :M2-PATTERN ((MEXPT) ((%AIRY_AI) (X VARP)) 4)
)

#S(TOI-ENTRY
  :INDEX 1406
  :INTEGRAND "cos(z*sin(theta))"
  :VAR THETA
  :PARAMETERS (Z)
  :SOURCE ("DLMF 10.9.1")
  :INTEGRAL "%pi*bessel_j(0,z)"
  :INTEGRAND2 ((%COS) ((MTIMES) ((%SIN) THETA) Z))
  :INTEGRAL2 ((MTIMES) $%PI ((%BESSEL_J) 0 Z))
  :LBOUND 0
  :UBOUND $%PI
  :M2-PATTERN ((%COS) ((MTIMES) ((%SIN) (THETA VARP)) ((COEFFTT) (Z FREEVAR))))
)

#S(TOI-ENTRY
  :INDEX 1407
  :INTEGRAND "cos(z*sin(theta)-n*theta)"
  :COMMENT "n integer"
  :VAR THETA
  :PARAMETERS (N Z)
  :SOURCE ("DLMF 10.9.2i")
  :INTEGRAL "%pi*bessel_j(n,z)"
  :INTEGRAND2 ((%COS) ((MPLUS) ((MTIMES) -1 N THETA) ((MTIMES) ((%SIN) THETA) Z)))
  :INTEGRAL2 ((MTIMES) $%PI ((%BESSEL_J) N Z))
  :LBOUND 0
  :UBOUND $%PI
  :CONSTRAINT ($ASKINTEGER N)
  :M2-PATTERN ((%COS) ((MPLUS) ((MTIMES) -1 ((COEFFTT) (N FREEVAR)) (THETA VARP)) ((MTIMES) ((%SIN) (THETA VARP)) ((COEFFTT) (Z FREEVAR)))))
)

#S(TOI-ENTRY
  :INDEX 1408
  :COMMENT "placeholder for DLMF 10.9.2ii"
  :VAR X
)


