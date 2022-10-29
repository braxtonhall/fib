#lang racket
;; Requires Algebraic Racket https://docs.racket-lang.org/algebraic/index.html

;; When I learned how to program, we kind of had to learn by osmosis.
;; They would show us good code, and bad code, and say
;; "write a fibonacci function which relies on how bad your code is"


;; Generates a syntax object which comutes the nth fibonacci 
;; number with fib(n) linter warnings
(define (generate-fib n)
    (cond
        [(zero? n) (syntax 0)]
        [(equal? n 1) (datum->syntax #'lex (quote ((lambda (x) 1) "gregor")))]
        [else (datum->syntax #'lex 
                             (quasiquote (+ (unquote (generate-fib (- n 1))) 
                                            (unquote (generate-fib (- n 2))))))]))

(eval (generate-fib 0))
(eval (generate-fib 1))
(eval (generate-fib 2))
(eval (generate-fib 3))
(eval (generate-fib 4))


;; Compiles a racket program that computes the fibonacci numbers
;; Reports the number of linter warnings
;; Leaves the compiled fibonacci-n binary, which computes fib(n)
(define (fibonacci n)
  (begin
    (define outfile (string-append "fibonacci-" (number->string n) ".rkt"))
    (define out (open-output-file outfile #:exists 'replace))
    (displayln "#lang algebraic/racket/base/linted" out)
    (writeln (syntax->datum (generate-fib n)) out)
    (close-output-port out)
    (define err-out (let ([str-port (open-output-string)])
         (parameterize ([current-error-port str-port])
            (system (string-append "raco exe " outfile))
            )
         (get-output-string str-port)))
    (delete-file outfile)
    (println (/ (length (string-split err-out "\n")) 4))))

(fibonacci 0)
(fibonacci 1)
(fibonacci 2)
(fibonacci 3)
(fibonacci 4)


