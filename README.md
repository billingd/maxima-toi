#TOI for maxima#

This code extends the symbolic integration routines of the <a href="">Maxima</a> computer algebra package using table lookup.  It is at an early stage of development.

The routine is inspired by the TILU (Table of Integration Look Up) program by Ted Einwohner, Richard Fateman and students at UC Berkeley.

TILU has a sophisticated expression hash algorithm and is self-contained.  This code has a simpler hash routine which is adequate for the functions in the present lookup table, which is dominated by special functions.  It uses existing 

#Quick start#

You need three files in the current working directory:

1. toi.lisp
2. toi-integral-table.lisp
3. toi-support.lisp

Run maxima and initialize with the commands

<pre>
load("toi.lisp");
load("toi-support.lisp");
:lisp (toi-read-add-table "./toi-integral-table.lisp")
</pre>

Use `table_integrate()` function.  The existing table of integrals has approximately 150 entries - mainly products of Bessel functions and Jacobi elliptic functions.  See `toi-integral-table.lisp` or the testsuite.

<pre>
(%i4) table_integrate(x*bessel_j(p,a*x)^2,x);
               2                                                       2
      (bessel_j (p, a x) - bessel_j(p - 1, a x) bessel_j(p + 1, a x)) x
(%o4) ------------------------------------------------------------------
                                      2
(%i5) table_integrate(z^(n+1)*struve_h(n,z),z);
                                               n + 1
(%o5)                      struve_h(n + 1, z) z
(%i6) table_integrate(jacobi_sn(u,m)*jacobi_dn(u,m)/jacobi_cn(u,m),u);
(%o6)                       - log(jacobi_cn(u, m))
</pre>

##Method##

There are four components to the package:

1. a table of integrals
2. maxima routines in lisp to read the table of integrals and look up integrands
3. a testsuite
3. support code to assist maintainers prepare the table of integrals 

###Table of integrals##

Each entry in the table of integrals is encoded as a lisp structure of the form 

<pre>
(defstruct toi-entry
  index       ; Number from source.  Used as index into lookup table
  integrand   ; integrand as string in maxima syntax
              ; not used if integrand2 defined
  comment     ; Optional comment
  var         ; variable of integration
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
  constraint  ; predicate for constraint on parameters
  m2-pattern  ; m2 pattern matching expression for integrand
              ; Can be generated from integrand in simple cases
)
</pre>

Simple integrals can be defined concisely.  For example: 

<pre>
#S(TOI-ENTRY
   INTEGRAND "x*airy_ai(x)"
   SOURCE ("DLMF 9.10.8")
   INTEGRAL "airy_dai(x)")
</pre>

The preprocessing tools expand this to the complete entry

<pre>
#S(TOI-ENTRY
  :INDEX 1208
  :INTEGRAND "x*airy_ai(x)"
  :VAR X
  :SOURCE ("DLMF 9.10.8")
  :INTEGRAL "airy_dai(x)"
  :INTEGRAND2 ((MTIMES) X ((%AIRY_AI) X))
  :INTEGRAL2   ((%AIRY_DAI) X)
  :M2-PATTERN ((MTIMES) (X VARP) ((%AIRY_AI) (X VARP))))
</pre>

A more complex example is given below.  

<pre>
#S(TOI-ENTRY
  :INDEX 1124
  :INTEGRAND "x^(2*u+1)*bessel_j(u,a*x)^2"
  :COMMENT "u # -1/2"
  :VAR X
  :PARAMETERS (A U)
  :SOURCE ("DLMF 10.22.7 with same Bessel function twice and u=v")
  :INTEGRAL "((bessel_j(u+1,a*x)^2+bessel_j(u,a*x)^2)*x^(2*u+2))/(2*(2*u+1))"
  :INTEGRAND2 ((MTIMES) ((MEXPT) ((%BESSEL_J) U ((MTIMES) A X)) 2) ((MEXPT) X ((MPLUS) 1 ((MTIMES) 2 U))))
  :INTEGRAL2   
((MTIMES) ((RAT) 1 2) ((MEXPT) ((MPLUS) 1 ((MTIMES) 2 U)) -1)
 ((MPLUS) ((MEXPT) ((%BESSEL_J) U ((MTIMES) A X)) 2) ((MEXPT) ((%BESSEL_J) ((MPLUS) 1 U) ((MTIMES) A X)) 2))
 ((MEXPT) X ((MPLUS) 2 ((MTIMES) 2 U))))
  :CONSTRAINT (EQUAL ($ASKEQUAL U '((RAT) -1 2)) '$NO)
  :M2-PATTERN ((MTIMES) ((MEXPT) ((%BESSEL_J) (U FREEVAR) ((MTIMES) (A FREEVAR) (X VARP))) 2) ((MEXPT) (X VARP) (2*U+1 SAMESAME U U 1))))
</pre>

###maxima routines###

The table of integrals is stored as a hash table keyed by entry number.  A hash function - derived from the integrand - is used to map from the integrand into the table of integrals.

To integrate an expression E we:

1. calculate the hash H(E)
2. use H(E) to identify a (hopefully short) list L(E) of matching integrands I
3. For each I in L(E) we use the m2 pattern matcher to see if I->M2-PATTERN matches E.  
4. If E matches I->M2-PATTERN we confirm that the predicate I->CONSTRAINT is true
5. If we found a match that satisfies the constraint, substitute the variable and parameters into the I->INTEGRAL2 and return

###testsuite###

There is a maxima testsuite in the tests directory.

It can be run with the commands `make check` at the top level or in tests directory.  The command `make check.log` runs the testsuite with display_all=true and saves the output to file check.log.

###support code###

A number of support routines have been written to generate and check the table of integrals.  These are not ready for a wider audience.

##Further work##

1. Use maxima file search functions to load table of integrals 
2. Tidy up and share support functions for table generation.
3. Call routine from maxima integrate() function
4. Extend code to definite integrals.  TILU contains definite integrals over a small number of ranges including (0,1), (0,inf), (minf,0), (minf,inf), (0, pi), (0,2*pi).  It maintains a separate hash table for each range.
5. Extend table of integrals.  I have a copy of the TILU tables and have translated some of it.  My entry numbers do not clash with TILU usage.
6. Investigate performance of hash function.

##References##

1. Einwohner, T. H., Fateman, Richard J., Searching techniques for integral tables, ISSAC '95, Proceedings of the 1995 international symposium on symbolic and algebraic computation, ISBN:0-89791-699-9, <a href="doi:10.1145/220346.220364">doi:10.1145/220346.220364</a>,
<a href="http://www.cs.berkeley.edu/~fateman/papers/integrate.ps">Postscript</a>, <a href="http://www.cs.berkeley.edu/~fateman/tilu/">code (2018-07-03)

