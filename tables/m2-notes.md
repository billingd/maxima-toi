
# m2 Notes

Working notes as I revisit the pattern matcher.  I stumbled through when I first developed the code here.  Time to review and consolidate. 

## Background

The Schatchen (Yiddish for matchmaker) pattern matcher m2 was developed by Moses(1967)(2012) as part of the SIN integration routines. The pattern matching code code remains at the core of the maxima integrate() function in file sin.lisp.

The other significant use within maxima is integration of special functions in file hypgeo.lisp.  This code was originally developed by Avgoustis (1977) under the supervision of Moses.

# Use within maxima

The pattern matching code is defined in schatc.lisp.

m2 is used in several parts of maxima

1. sin.lisp, for indefinite indefinite integration
2. hypgeo.lisp, for finding Laplace transforms of special functions
3. irinte.lisp (4 calls)
4. defint.lisp (4 calls)
4. hyp.lisp (4 calls)
4. trgred.lisp (3 calls)
5. risch.lisp
6. series.lisp (2 calls)

## How it works

### Simple example m2-b*x+a

Based on Moses (1967) Chapter 2 and some examples from sin.lisp

One of the simplest uses in sin.lisp is

<pre>
;; Pattern to match b*x + a
(defun m2-b*x+a (expr)
  (m2 expr
      `((mplus)
        ((coeffpt) (b freevar) (x varp))
        ((coeffpt) (a freevar)))))
</pre>

Usage notes:

1. The integration variable is special variable `var`
2. The indicator `mplus` matches the maxima `mplus` (+) operator
3. The indicator `coeffpt` (coefficient in PLUS and TIMES, Moses (1967) p30) specifies "to the match that a particular variable in the pattern is to be considered a coefficient in both a product and a sum."
4. The predicate functions `varp` and `freevar` are defined in sin.lisp 

<pre>
(declaim (inline varp))
(defun varp (x)
  (alike1 x var))

(defun freevar (a)
  (cond ((atom a) (not (eq a var)))
	((varp a) nil)
	((and (not (atom (car a)))
	      (member 'array (cdar a) :test #'eq))
	 (cond ((freevar (cdr a)) t)
	       (t (merror "~&FREEVAR: variable of integration appeared in subscript."))))
	(t (and (freevar (car a)) (freevar (cdr a))))))
</pre>

Try this on a few simple expressions

<pre>
(%i1) display2d:false$
(%i2) e1:b*x+a$
(%i3) e2:b*x$
(%i4) e3:x$
(%i5) to_lisp();
Type (to-maxima) to restart, ($quit) to quit Maxima.

MAXIMA> (setq var '$x)
$X
MAXIMA> (m2-b*x+a $e1)
((A . $A) (B . $B) (X . $X))
MAXIMA> (m2-b*x+a $e2)
((A . 0) (B . $B) (X . $X))
MAXIMA> (m2-b*x+a $e3)
((A . 0) (B . 1) (X . $X))
MAXIMA> (m2-b*x+a 0)
((A . 0) (B . 0))
MAXIMA> (m2-b*x+a '$y)
((A . $Y) (B . 0))
</pre>

The result is an [association list](http://www.lispworks.com/documentation/HyperSpec/Body/26_glo_a.htm#association_list) or a-list.   


The effect of `coeffpt` can be seen in

<pre>
(%i6) e4: 2*x+sqrt(2)*x+3$
(%i7) :lisp (m2-b*x+a $e4)
((A . 3) (B (MPLUS SIMP) 2 ((MEXPT SIMP) 2 ((RAT SIMP) 1 2))) (X . $X)
 (X . $X))
(%i7) e5:2*x+sin(y)+1$
(%i8) :lisp (m2-b*x+a $e5)
((A (MPLUS SIMP) 1 ((%SIN SIMP) $Y)) (B . 2) (X . $X))
</pre>

Note:

- Common Lisp has support for a-lists.  For example [ASSOC, ASSOC-IF, ASSOC-IF-NOT](http://www.lispworks.com/documentation/HyperSpec/Body/f_assocc.htm "ASSOC, ASSOC-IF, ASSOC-IF-NOT").  I didn't know this.

### Slightly more complex 

A slightly more complex example from sin.lisp is `m2-ratrootform`. This  uses `coefftt` when the operator is `mtimes`.

<pre>
;; This is matching the pattern e*(a*x+b)/(c*x+d), where
;; a, b, c, d, and e are free of x, and x is the variable of integration.
(defun m2-ratrootform (expr)
  (m2 expr
      `((mtimes)
        ((coefftt) (e freevar))
        ((mplus)
         ((coeffpt) (a freevar) (var varp))
         ((coeffpt) (b freevar)))
        ((mexpt)
         ((mplus)
          ((coeffpt) (c freevar) (var varp))
          ((coeffpt) (d freevar)))
         -1))))
</pre>

Examples include:

<pre>
(%i1) display2d:false$
(%i2) e1:e*(a*x+b)/(c*x+d)$
(%i3) :lisp (m2-ratrootform $e1)
((D . $D) (C . $C) (VAR . $X) (B . $B) (A . $A) (VAR . $X) (E . $E))
(%i3) e2:x/3;
(%o3) x/3
(%i4) :lisp (m2-ratrootform $e2)
((D . 1) (C . 0) (B . 0) (A . 1) (VAR . $X) (E (RAT SIMP) 1 3))
</pre>

###  m2-chebyform

Another example is `m2-chebyform`.

<pre>
;; This is for matching the pattern a*x^r1*(c1+c2*x^q)^r2.
(defun m2-chebyform (expr)
  (m2 expr
      `((mtimes)
        ((mexpt) (var varp) (r1 numberp))
        ((mexpt)
         ((mplus)
          ((mtimes)
           ((coefftt) (c2 freevar))
           ((mexpt) (var varp) (q free1)))
          ((coeffpp) (c1 freevar)))
         (r2 numberp))
        ((coefftt) (a freevar)))))
</pre>

This introduces new predicates

- `numberp` - lisp [numberp](http://www.lispworks.com/documentation/HyperSpec/Body/f_nump.htm) predicate
- `free1` - non-zero and freevar

and indicators

- `coeffpp`
- `coefftt`

Let's see this in action

<pre>
(%i4) e3:x^2*(1+x^c)^3$
(%i5) :lisp (m2-chebyform $e3)
((A . 1) (R2 . 3) (C1 . 1) (Q . $C) (VAR . $X) (C2 . 1) (R1 . 2) (VAR . $X))

(%i5) e4:x^2*(x^c)^3$
(%i6) :lisp (m2-chebyform $e4)
((A . 1) (R2 . 1) (C1 . 0) (Q (MPLUS SIMP) 2 ((MTIMES SIMP) 3 $C)) (VAR . $X)
 (C2 . 1) (C1 . 0) (Q . 1) (VAR . $X) (C2 . 1) (R1 . 0))
(%i6) e4;
(%o6) x^(3*c+2)
</pre>

Expression e4 is interesting.  The match is `1*x^0*(0+x^(3*c+2))^1 = x^(3*c+2)`.

### m2-exp-type-1a

<pre>
;;; Recognize (a^(c*(z^r)^p+d)^v
(defun m2-exp-type-1a (expr)
  (m2 expr
      '((mexpt)
        ((mexpt)
         (a freevar0)
         ((mplus)
          ;; The order of the pattern is critical. If we change it,
          ;; we do not get the expected match.
          ((coeffpp) (d freevar))
          ((coefft) (c freevar0)
           ((mexpt)
            ((mexpt) (z varp) (r freevar0))
            (p freevar)))))
        (v freevar))))
 </pre>

Note:

- predicate `freevar0`
- order is important somehow.

### Simple examples from hypgeo.lisp

m2 usage in hypgeo.lisp is different to that in sin.lisp

<pre>
;; Recognize asin(w)
(defun m2-asin (expr var)
  (m2 expr
      `((mplus)
        ((coeffpt) (u nonzerp)
         ((%asin) (w has ,var)))
        ((coeffpp) (a equal 0)))))
</pre>

<pre>
(%i1) display2d:false$
(%i2) :lisp (setq var '$x)
$X
(%i2) e1:3*asin(2*x)$
(%i3) :lisp (m2-asin $e1 '$x)
((A . 0) (U . 3) (W (MTIMES SIMP) 2 $X))
(%i3) e2:z*asin(x*y)$
(%i4) :lisp (m2-asin $e2 '$x)
((A . 0) (U . $Z) (W (MTIMES SIMP) $X $Y))
(%i4) :lisp (m2-asin $e2 '$y)
((A . 0) (U . $Z) (W (MTIMES SIMP) $X $Y))
(%i4) e3:z*asin(x*y)+1$
(%i5) :lisp (m2-asin $e3 '$y)
NIL
</pre>

Notes:

- predicates can have multiple args, the remainder after pred.
- m2 returns nil for no match
- predicate `has` 
- predicate nonzerp
- `coeffpp` requires `a` equal to 0

<pre>
;; Case 1: c * u^-1 * (%e^(-a*u) - %e^(-b*u))
(defun m2-sum-with-exp-case1 (expr var)
  (m2 expr
      `((mplus)
        ((coefft)
         (c free ,var)
         ((mexpt) (u alike1 ,var) -1)
            ((mexpt) $%e
             ((mplus)
              ((coeffpt) (a nonzerp) (u alike1 ,var))
              ((coeffpp) (z1 zerp)))))
        ((coefft)
         (c2 equal-times-minus-one c)
         ((mexpt) (u alike1 ,var) -1)
            ((mexpt) $%e
             ((mplus)
              ((coeffpt) (b  nonzerp) (u alike1 ,var))
              ((coeffpp) (z2 zerp)))))
        ((coeffpp) (d true)))))

(defun equal-times-minus-one (a b) 
  (equal a (mul -1 b)))
</pre>

Notes:

- expr is analysed as a sum
- predictate `equal-times-minus-one` to relate `c` and `-c`

## Lessons learned

A few notes on lessons learned.

### Matching pattern for c\*x to expression a\*x+x

This is (2018-07-24) an expected failure in the testsuite.

* The table entry is `"x*bessel_c(p,a*x)^2"` ("GR 5.54.1").
* The failing case is `x*bessel_j(b+4,a*x+x)^2`

The automatically generated m2 pattern that fails in this case is 
<pre>
((MTIMES) 
  ((MEXPT) 
    ((%BESSEL_J) 
      (P FREEVAR) 
      ((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP)))
    2) 
  (X VARP))
</pre>

Playing around with the various terms I found that there was a failure to match `a*x+x` using `((MTIMES) ((COEFFTT) (A FREEVAR)) (X VARP)))`.

Blindly changing `COEFFTT` to `COEFFTP`, `COEFFPT` or `COEFFPP` didn't help.  Inspired by m2-asin in hypgeo.lisp (above) we find the following  matches the sub-expression `a*x+x`.

<pre>
((mplus) ((coeffpt) (a nonzerp) (x varp)) ((coeffpp) (zz equal 0)))
</pre>

Test it.

<pre>
(%i1) e:a*x+x$
(%i2) to_lisp()$

MAXIMA> (m2 $e '((mplus) ((coeffpt) (a nonzerp) (x varp)) ((coeffpp) (zz zerp))))
((ZZ . 0) (A (MPLUS SIMP) 1 $A) (X . $X) (X . $X))
</pre>

The failing pattern is generated.  I will fix the pattern generator rather work around this specific case.  

## References

1. Moses, Joel. 1967. ["Symbolic Integration"](http://www.softwarepreservation.org/projects/LISP/MIT/MIT-LCS-TR-047-corrected-ocr.pdf), MIT-LCS-TR-047, MIT

2. Moses, Joel. 2012. [“Macsyma: A Personal History”](https://doi.org/10.1016/j.jsc.2010.08.018), Journal of Symbolic Computation 47 (2): 123–30.

3. Avgoustis, Ioannis Dimitrios. 1977. [“Definite Integration Using the Generalized Hypergeometric Functions”](http://hdl.handle.net/1721.1/16269), MSc thesis, EE&CS, MIT.

4. Avgoustis, Ioannis Dimitrios, 1977. [Symbolic Laplace Transforms of Special Functions](http://udspace.udel.edu/handle/19716/1398), [Proceedings of the 1977 MACSYMA Users' Conference](http://udspace.udel.edu/handle/19716/1398), pp 21-41.
