(define (sqrt-iter guess x)
	(if (good-enough? guess x)
	guess
	(sqrt-iter (newton_improve guess x) x)))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) (* guess 0.001))

(define (square x) (* x x))


(define (avg x y) (/ (+ x y) 2))

(define (newton_improve guess x) (avg guess (/ x guess)))

(define (sqrt x) (sqrt-iter 1.0 x))

(sqrt 0.5)
;1 ]=> (sqrt 0.5)
;Value: .7071078431372548

(sqrt 1e-9)
;Value: .03125000106562499
;Actual: 3.16227766017e-05

(sqrt 1e25)
;Value; 3162277660168.3794
;actual 3.16227766017e+12

;The precision causes the good-enough clause to exit when the guess is within 1E+/-3 of magnitue of the previous guess which makes a huge difference at large numbers

; For example at 1e25 seen above the answer is off by 151. Although to me that does seem good enough.
; For even larger numbers, the answer is unable to be computed in a reasonable amount of time. 
; This must mean the answer is taking a long time to be considered good enough since being within 0.001 takes a while with a very large number
; For the small numbers, like 1E-9, the answer is off by many orders of magnitude


(define (good-enough-v2? guess prev-guess)
	(< 
		(/ 
			(abs (- prev-guess guess)) 
			guess) 
		1E-6))

(define (sqrt-iter-v2 guess prev-guess x)
	(if (good-enough-v2? guess prev-guess)
	guess
	(sqrt-iter-v2 (newton_improve guess x) guess x)))


(define (sqrt-v2 x) (sqrt-iter-v2 1.0 0.0 x))

(sqrt-v2 4.0)

(sqrt-v2 1E-9)
;Value: 3.1622776601684046e-5
;Actual: 3.16227766017e-05

(sqrt-v2 1e100)
;Value: 1.0000000000002003e50
(sqrt 1e100)
Times out taking over 20 seconds to compute

So yes, the answer is much closer for small numbers and the computation time for large numbers is reasonable
