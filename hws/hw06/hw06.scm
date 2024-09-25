(define (cddr s) (cdr (cdr s)))

(define (cadr s) 
'YOUR-CODE-HERE
    (car (cdr s))
)

(define (caddr s) 
'YOUR-CODE-HERE
    (car (cddr s))
)

(define (ascending? lst) 
'YOUR-CODE-HERE
    (cond
    ((null? (cdr lst)) #t)
    ((<= (car lst) (car (cdr lst))) (ascending? (cdr lst)))
    ((> (car lst) (car (cdr lst))) #f)
    )
)

(define (interleave lst1 lst2) 
'YOUR-CODE-HERE
    (if (null? lst1) lst2
        (if (null? lst2) lst1
            (cons (car lst1)
                    (cons (car lst2)
                            (interleave (cdr lst1) (cdr lst2))))))
)

(define (my-filter func lst) 
'YOUR-CODE-HERE
    (if (null? lst) nil
        (if (func (car lst)) (cons (car lst)
                                    (my-filter func (cdr lst)))
                                    (my-filter func (cdr lst))))
)

(define (no-repeats lst) 
'YOUR-CODE-HERE
    (cond   ((null? lst) lst)
            (else (cons (car lst) (no-repeats (filter (lambda (x) (not (= x (car lst)))) (cdr lst)))))
    )
)
