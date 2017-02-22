(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (identity x) x)

(define (inc n) (+ n 1))

(define (cube x) (* x x x))

(define (sum-ints-iter a b)
  (sum identity a inc b))

(define (sum-cubes-iter a b)
  (sum cube a inc b))
