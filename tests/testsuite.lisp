;;; The Maxima test suite is defined to be the sum of all the tests
;;; in the files listed in *testsuite-files*.
;;; Each entry can either be a plain file name (minus extension), e.g.,
;;; "testfile.mac", or a list containing a file name followed by the numbers
;;; of the test problems that are expected to fail, e.g.
;;; ("testfile.mac" 7 9 13).

(setf $testsuite_files
      '( (mlist simp)
         ((mlist) "test_toi.mac" 12)
	 ((mlist) "test_toi_2.mac" )
	 "test_toi_3.mac"
	 "test_toi_4.mac"
	 "test_toi_5.mac"
	)
)
