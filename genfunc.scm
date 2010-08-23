(define (genfunc op val)
	(lambda (x) (op x val)))

(display ((genfunc + 2) 3)) (newline)

