; o = (1+ sqrt5)/2
; hint t = (1- sqrt5)/2
; prove that Fib(n) is closest int to o^n/5

; use induction and fib def in section 1.2.2
; Prove Fib(n) = (o^n - t^n)/sqrt5

; Questions:
; What is induction?
; How to write a proof? 

; Proofs
; https://deopurkar.github.io/teaching/algebra1/cheng.pdf
; https://www.khanacademy.org/math/geometry-home/geometry-miscellaneous#geometry-worked-examples

; Induction
; https://www.khanacademy.org/math/algebra-home/alg-series-and-induction/alg-induction/v/proof-by-induction
; base case
; induction is to assume f(k) is true therefore f(k+1) is true

(define (fib n)
    (cond ((= n 0) 0)
        ((= n 1) 1)
        (else 
            (+ (fib (- n 1)) (fib (- n 2)))
        )
    )
)

(define trident 
  (/ (- 1 (sqrt 5)) 2) 
)

(define phi 
  (/ (+ 1 (sqrt 5)) 2) 
)
(define (fib_formula n)
  (/ (- 
       	(expt phi n) (expt trident n) 
     ) 
     (sqrt 5))
)

; base case fib(2) = fib(1) + fib(0)
(fib 2)
(fib_formula 2)
; true that fib 2 = fib_formula 2

; induction
; assume fib(k) = fib_formula(k)
; then fib(k+1) = fib_formula(k+1)
; think the strategy is to substitute fib_formula for the recursive calls like
; fib_form(k) + fib_form(k-1) = fib_form(k+1)
; got stuck there

; A few answers online don't use induction at all
; Seems like the idea was to first prove by induction 
; Then prove that the first part was within 1/2 of the fib(n)
; Poorly worded exercize for people new to proofs imo