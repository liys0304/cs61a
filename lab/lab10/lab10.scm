(define (over-or-under num1 num2) 
    'YOUR-CODE-HERE
  (if (< num1 num2) -1
  (if (= num1 num2) 0
  (if (> num1 num2) 1)))
)

(define (make-adder num) 
'YOUR-CODE-HERE
  (lambda (x) (+ x num))
)

(define (composed f g) 
'YOUR-CODE-HERE
  (lambda (x) (f (g x)))
)

(define (square n) (* n n))

(define (pow base exp) 
'YOUR-CODE-HERE
    (cond
        ((zero? exp) 1)
        ((even? exp) (square (pow base (/ exp 2))))
        ((odd? exp) (* base (pow base (- exp 1))))
    )
)
