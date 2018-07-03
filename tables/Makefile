
MAXIMA = maxima

INTEGRALS = \
  toi-bessel-integrals.lisp \
  toi-integrals-1.lisp \
  toi-jacobi-integrals.lisp

all: toi-integral-table.lisp

toi-integral-table.tmp: $(INTEGRALS)
	cat $+ > $@

toi-bessel-integrals.lisp: ../toi.lisp toi-util.lisp \
	bessel_c-integral-table.lisp bessel-integral-template.lisp
	(echo "to_lisp();";\
	echo '(load "../toi.lisp")';\
	echo '(load "toi-util.lisp")';\
	echo '(load "bessel_c-integral-table.lisp")';\
	echo '(load "bessel-integral-template.lisp")';\
	echo '(toi-write-file "$@" (toi-generate-bessel))';\
	echo '($$quit)')  | $(MAXIMA)

toi-integral-table.lisp: toi-integral-table.tmp ../toi.lisp toi-util.lisp
	(echo "to_lisp();";\
	echo '(load "../toi.lisp")';\
	echo '(load "toi-util.lisp")';\
	echo '(toi-filter-file "$<" "$@" 1099)';\
	echo '($$quit)') | $(MAXIMA)

clean:
	-rm *~ *.log toi-integral-table.tmp

realclean: clean
	-rm *.bak toi-bessel-integrals.lisp toi-integral-table.lisp
