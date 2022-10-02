(define ( A x y)
	(cond 
		((= y 0) 0)
		((= x 0) (* 2 y))
		((= y 1) 2)
		(else (A (- x 1)
			(A x (- y 1))))))

(A 1 10)
;Value: 1024

(A 2 4)
;Value: 65536

(A 3 3)
;Value: 65536


(define (f n) (A 0 n))
(f 1)
(f 3)
(f 4)
(f 10)

;procedure f is the function f(x) = 2x


(define (g n) (A 1 n))
(g 1)
(g 3)
(g 4)

;procedure g is the function:
;x >= 0, g(x) = 2^x 

(define (h n) (A 2 n))
(h 1)
(h 2)
(h 3)
(h 4)

;procedure h is the function h(x) = x^(h(x)-1)

(define (k n) (* 5 n n))

;procedure k is the function k(x) = 5*x^2

(k 1)
(k 2)
(k 3)
(k 4)

