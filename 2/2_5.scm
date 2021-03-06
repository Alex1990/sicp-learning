(define (cons a b)
  (* (expt 2 a)
     (expt 3 b)))

(define (car n)
  (define (try-mod m k)
    (if (= (remainder m 2) 0)
        (try-mod (/ m 2) (+ k 1))
        k))
  (try-mod n 0))

(define (cdr n)
  (define (try-mod m k)
    (if (= (remainder m 3) 0)
        (try-mod (/ m 3) (+ k 1))
        k))
  (try-mod n 0))

(define pair1 (cons 0 2))
(display (car pair1))
(newline)
(display (cdr pair1))
(newline)

(define pair2 (cons 3 0))
(display (car pair2))
(newline)
(display (cdr pair2))
(newline)

(define pair3 (cons 2 3))
(display (car pair3))
(newline)
(display (cdr pair3))
(newline)
