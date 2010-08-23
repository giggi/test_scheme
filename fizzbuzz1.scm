(use srfi-1)

(for-each print
	  (map
	   (lambda (x) (cond ((= (modulo x 15) 0) "FizzBuzz")
			     ((= (modulo x  3) 0) "Fizz")
			     ((= (modulo x  5) 0) "Buzz")
			     (else x)))
	   (iota 100 1))
)

