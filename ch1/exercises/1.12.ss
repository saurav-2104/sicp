#lang sicp
;; Pascal's triangle
;;The numbers at the edge of the triangle are all 1, and each
;;number inside the triangle is the sum of the two numbers
;;above it.35 Write a procedure that computes elements of
;;Pascal’s triangle by means of a recursive process.

(define (pascal r c)
  (cond ((or (< r 0) (> c r)) 0)
        ((or (= c 1) (= r c)) 1)
        (else (+
               (pascal (- r 1) (- c 1))
               (pascal (- r 1) c)))))