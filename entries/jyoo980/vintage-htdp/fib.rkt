;; Natural -> Natural
;; given n, produce the nth fibonacci number
(check-expect (fib 0) 0)
(check-expect (fib 1) 1)
(check-expect (fib 2) 1)
(check-expect (fib 7) 13)

; (define (fib n) 0) ; stub

;<template from Natural>
(define (fib n)
  (cond
    [(zero? n) 0]
    [else
    (if (= n 1)
        1
        (+ (fib (sub1 n)) (fib (- n 2))))]))
