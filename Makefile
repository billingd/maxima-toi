check: toi-integral-table.lisp
	make -C tests check

check.log: toi-integral-table.lisp
	make -C tests check.log

clean:
	make -C tests clean
