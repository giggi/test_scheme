(define (sum-of-numbers numbers)
  (define (loop sum nums)
    (if (null? nums)
	sum
	(loop (+ sum (car nums)) (cdr nums))))
  (loop 0 numbers))

(print (sum-of-numbers '(1 2 3 4 5)))