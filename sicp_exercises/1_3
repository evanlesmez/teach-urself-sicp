(define (sq x) (* x x))

(define (sos_bigs x y z) 
	(cond 
		((and (< z x) (< z y)) (+ (sq x) (sq y)))
		((and (< x y) (< x z)) (+ (sq y) (sq z)))
		(else (+ (sq x) (sq z)))
	)
)	

; 13 
(sos_bigs 3 2 1) 

; 25
(sos_bigs 1 3 4)

; 40
(sos_bigs 6 1 2)

; 17
(sos_bigs 4 1 1)

