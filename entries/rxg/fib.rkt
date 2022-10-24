#lang racket

;; fib.rkt - A variety of iterative implementations of the Fibonacci Sequence
;; All are based on accumulators

;; Natural -> Natural
;; produce the n'th Fibonacci number
(define (fib-iter n)
  (cond
    [(= n 0) 1]
    [(= n 1) 1]
    [else   
     (let-values ([(n-2 n-1)
                   ;; i-2 = fib (i-2)
                   ;; i-1 = fib (i-1)
                   (for/fold ([i-2 1] [i-1 1])
                             ([i (in-range 2 n)])
                     (values i-1 (+ i-2 i-1)))])
       (+ n-2 n-1))]))


(define (fib-iter2 n)
  (cond
    [(= n 0) 1]
    [(= n 1) 1]
    [else   
     ;; i-2 = fib (i-2)
     ;; i-1 = fib (i-1)
     (let loop ([i-2 1] [i-1 1] [i 2])
       (if (= i n)
           (+ i-2 i-1)
           (loop i-1 (+ i-2 i-1) (add1 i))))]))

(define (fib-iter3 n)
  (cond
    [(= n 0) 1]
    [(= n 1) 1]
    [else   
     ;; i-2 = fib (i-2)
     ;; i-1 = fib (i-1)
     (do ([i-2 1 i-1]
          [i-1 1 (+ i-2 i-1)]
          [i 2 (add1 i)])
       [(= i n)
        (+ i-2 i-1)])]))

;; New variant of for with accumulators and a final expression in terms of
;; the accumulators
(define-syntax (for/acc stx)
  (syntax-case stx ()
    [(_ ([id* init*] ...)
        (clauses ...)
        body
        result)
     (with-syntax ([original stx])
     #'(let-values ([(id* ...)
                   (for/fold/derived original
                                     ([id* init*] ...)
                                     (clauses ...)
                                     body)])
         result))]))

(define (fib-iter4 n)
  (cond
    [(= n 0) 1]
    [(= n 1) 1]
    [else   
     ;; i-2 = fib (i-2)
     ;; i-1 = fib (i-1)
     (for/acc ([i-2 1] [i-1 1])
              ([i (in-range 2 n)])
              (values i-1 (+ i-2 i-1))
              (+ i-2 i-1))]))

;; New variant of for with accumulators and a final expression in terms of
;; the accumulators
(define-syntax (for/do stx)
  (syntax-case stx ()
    [(_ ([id* init* step*] ...)
        (clauses ...)
        result)
     (with-syntax ([original stx])
     #'(let-values ([(id* ...)
                   (for/fold/derived original
                                     ([id* init*] ...)
                                     (clauses ...)
                                     (values step* ...))])
         result))]))

(define (fib-iter5 n)
  (cond
    [(= n 0) 1]
    [(= n 1) 1]
    [else   
     ;; i-2 = fib (i-2)
     ;; i-1 = fib (i-1)
     (for/do ([i-2 1 i-1] [i-1 1 (+ i-2 i-1)])
             ([i (in-range 2 n)])
             (+ i-2 i-1))]))


;; Fibonacci's problem, as described by Greg Rawlins in "Compared to What":
;;   Suppose you have a pair of rabbits and suppose every month each pair
;;   bears a new pair that from the second month on becomes productive.
;;   how many pairs of rabbits will you have in a year?

;; Analysis:  
;; - At time 0 you have 1 unproductive pair: 1 pair, 0 productive pairs
;; - Each month, each productive pair produces an unproductive pair
;; - Each month, last months unproductive pairs transition to productive
;; - how many pairs are there at time step 12?

;; The following function solves the problem *directly* as a
;; structural recursion over natural numbers with two
;; accumulators (for lost context (fertile) and result-so-far (total))

;; Natural -> Natural
;; produce the solution to Fibonacci's problem after n months
(define (fib-rabbit n0)
  ;; Accumulator: total is Natural
  ;; Invariant: total pairs of rabbits after (- n0 n) months
  ;; Accumulator: fertile is Natural
  ;; Invariant: productive pairs of rabbits after (- n0 n) months
  (local [(define (fib-acc fertile total n)
            (cond [(zero? n) total]
                  [else 
                   (fib-acc total      ;; next month, all will be productive
                            (+         ;; next months pairs include:
                             total     ;; - this months pairs plus
                             fertile)  ;; - offspring from productive pairs
                            (sub1 n))]))] 
    (fib-acc 0 1 n0)))
