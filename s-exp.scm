(use slib)
(require 'trace)

;;(define (atom? x)
;;	(if (or (eq? x '()) (eq? (cdr x) '())) #t #f))
(define (atom? x) (not (pair? x)))

;;(display (atom? '(1))) (newline)
;;(display (atom? 'a)) (newline)
;;(display (atom? '(a b))) (newline)
;;(display (atom? '(1 2 3 4 5 6))) (newline)

(define (s-exp? s)
	(cond ((atom? s) #t)
	      ((and (s-exp? (car s)) (s-exp? (cdr s))) #t)
	      (else #f)))

(trace s-exp?)
;;(display (s-exp? '(a))) (newline)
(display (s-exp? '(a b))) (newline)
;;(display (s-exp? '(1 2 3 4 5 6))) (newline)


