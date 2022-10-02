(define (pascal r c) 
    (if (or (= c 1) (= c r)) 
        1 
        (+ (pascal (- r 1) (- c 1)) (pascal (- r 1) c)))) 

(pascal 1 1)
(pascal 2 2)
(pascal 3 2)
(pascal 4 2)

; insight is to think in rows and cols  
;   1 
;  1 1   
; 1 2 1