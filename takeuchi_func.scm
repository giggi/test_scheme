(define cnt 0)

(define (tak x y z)
	(set! cnt (+ cnt 1))
	(if (> x y)
		(tak
			(tak (- x 1) y z)
			(tak (- y 1) z x)
			(tak (- z 1) x y))
		y))

(define (tak_with_counter x y z)
	(set! cnt 0)
	(tak x y z)
	cnt)

(time (tak 12 6 0))
(display (tak_with_counter 12 6 0)) (newline)

