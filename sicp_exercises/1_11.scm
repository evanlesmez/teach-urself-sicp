; f(n) = n if n < 3
; f(n) = f(n-1) + 2f(n-2) + 3f(n-3) else

;recursive

(define (recur_f n)
	(if (< n 3) n
		(+ 
			(recur_f (- n 1)) 
			(* 2 (recur_f (- n 2))) 
			(* 3 (recur_f (- n 3)))
		)
	)
)

(recur_f 1)
(recur_f 2)
(recur_f 3)
(recur_f 4)
(recur_f 5)
(recur_f 10)

;iterative


(define (f n) 
	(f-iter 2 1 0 n)
)

(define (f-iter a b c count)
	(if (= count 0)
		c	
		(f-iter 
			(+ a (* 2 b) (* 3 c)) 
			a 
			b
			(- count 1)
		)
	) 
)

(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
(f 10)
