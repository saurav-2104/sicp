#lang sicp
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (sqrt x)
  (sqrt-iter 1.0 x))


(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (new-sqrt-iter guess x)
  (define next-guess (improve guess x))
  (if (new-good-enough? next-guess guess)
      guess
      (new-sqrt-iter next-guess x)))

(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))

(define (new-good-enough? new-guess old-guess)
  (< (abs (/ (- new-guess old-guess) old-guess)) 0.001))