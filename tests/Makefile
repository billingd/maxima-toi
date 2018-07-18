MAXIMA = maxima

TOI_FILES = ../toi.lisp ../toi-integral-table.lisp ../toi-support.lisp

TEST_FILES = test_toi.mac test_toi_2.mac test_toi_3.mac test_toi_4.mac

check: $(TEST_FILES) $(TOI_FILES) testsuite.lisp
	(echo ':lisp (setq *maxima-testsdir* ".")';\
	echo 'run_testsuite();') | $(MAXIMA) 

# Verbose output
check.log: $(TEST_FILES) $(TOI_FILES) testsuite.lisp
	(echo ':lisp (setq *maxima-testsdir* ".")';\
	echo 'run_testsuite(display_all=true);') | $(MAXIMA) > $@ 2>&1

clean:
	-rm check.log *~
