#lang sicp
(define size 2)
(* 5 size)

(define (square x) (* x x))
(square 20)

(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares 3 4)

(define (abs x)
  (cond ((> x 0) x)
        ((< x 0) (- x))
        ((= x 0) 0)))

(abs (- 4))

(define (>= x y)
  (or (> x y) (= x y)))

(>= 5 6)
(>= 5 5)