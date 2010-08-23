(do ((x 1 (inc! x)))
    ((>= x 100) x)
  (cond ((= (modulo x 15) 0)
	 (print "Fizz Buzz"))
	((= (modulo x 3) 0)
	 (print "Fizz"))
	((= (modulo x 5) 0)
	 (print "Buzz"))
	(else
	 (print (x->string x)))))

