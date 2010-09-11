(define-module module-test-module
  (export addx))
(select-module module-test-module)

(define x 100)

(define (addx n)
  (+ n x))

(provide "module-test-module")
