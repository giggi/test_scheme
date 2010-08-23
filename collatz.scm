(define (collatz-all2 x) 
	(define (even? x) (if (eq? (remainder x 2) 0) #t #f))
	(define (collatz x) (if (even? x) (/ x 2) (+ (* 3 x) 1)))
	(let ((a (collatz x)))
		(display a)
		(newline)
		(if (= a 1)
			'end
			(collatz-all2 a))))

(collatz-all2 7)

