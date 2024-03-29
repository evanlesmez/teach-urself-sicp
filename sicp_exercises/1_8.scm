(define (cubert x) (cubert-iter 1.0 x x))

(define (cubert-iter guess prev-guess x) 
	(if (good-enough? guess prev-guess) 
		guess
		(cubert-iter (nimprov guess x) guess x)
	)
)

(define (good-enough? guess prev-guess) 
	(<
		(/ 
			(abs (- prev-guess guess))
			guess)
		1E-6
	)
)

(define (nimprov guess x)
	(/ 
		(+ (/ x (sq guess)) (* 2 guess))
		3
	)
)

(define (sq x) (* x x))


(good-enough? 8.0 4.0)
(nimprov 4.0 8.0)
(cubert-iter 8.0 4.0 8.0)
(cubert 8.0)
(cubert 1E25)
(cubert 1E-9)
(cubert 1) 
(cubert -8) 
(cubert 27) 
(cubert -1000) 
(cubert 1e-30) 
(cubert 1e60) 
