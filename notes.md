# Implementation notes

Some implementation notes.

## Hash tables

Most of the complexity in the Table of Integrals code
is in the hash tables used to index the integrands and
limits of integration.

The full horror can be seen by displaying *table-of-integrand-hash-tables*

<pre>
:lisp *table-of-integrand-hash-tables*
</pre>

Each integral has a lower limit lbound and an upper limit ubound.
Each pair of limits (lbound ubound) has its own index of integrands.
These are stored in a hash table *table-of-integrand-hash-tables*
and accessed using the key (lbound ubound).

<pre>
:lisp (maphash (lambda (k v) (print k)) *table-of-integrand-hash-tables*)

(0 $%PI)
($MINF $INF)
(0 $INF)
(0 1)
(NIL NIL)
NIL
</pre>

Indefinite integrals are keyed using (NIL NIL).

Non-constant bounds for definite integrals identified with t.  For example,
integrate(f(u),u,0,x) has ulimit t, which will match any expression
subject to any constraints.


