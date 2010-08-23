(define (pow2list list)
	(if (null? list)
		'()
		(cons (* (car list) 2) (pow2list (cdr list)))))

(define (proclist list func)
	(if (null? list)
		'()
		(cons (func (car list)) (proclist (cdr list) func))))

(display (pow2list '(1 2 3 4 5 6))) (newline)
(display (proclist '(1 2 3 4 5 6) (lambda (x) (* x 2)))) (newline)
(display (map (lambda (x) (* x 2)) '(1 2 3 4 5 6))) (newline)
