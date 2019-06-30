#lang sicp
(define (abs x)
  (if (< x 0)
      (- x)
      x))
(define (square x) (* x x))

(define (good-enough? new-guess old-guess)
  (< (abs (/ (- new-guess old-guess) old-guess)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  

(define (cbrt-iter guess x)
  (define next-guess (improve guess x))
  (if (good-enough? next-guess guess)
      guess
      (cbrt-iter next-guess x)))

(define (cbrt x)
  (cbrt-iter 1.0 x))






