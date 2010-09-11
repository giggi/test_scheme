(add-load-path ".")
(require "module-test-module")
(import module-test-module)

(define x 1)

(print (addx 10))
