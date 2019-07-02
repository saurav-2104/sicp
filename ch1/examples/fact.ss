#lang sicp

(define (fact n)
  (if (= n 1)
      1
      (* n (fact (- n 1)))))

(define (fact-iter n)
(define (iter product counter)
  (if (> counter n)
      product
      (iter (* counter product) (+ counter 1))))
  (iter 1 1))
