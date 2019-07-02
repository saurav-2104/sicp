#lang sicp
(define (recur n)
  (cond ((< n 3) n)
      (else (+
       (recur (- n 1))
       (* 2 (recur (- n 2)))
       (* 3 (recur (- n 3))))
      )))

(define (iter n)
  (define (_iter a b c counter)
    (if (= counter 0) a
        (_iter b c (+ c (* 2 b) (* 3 a)) (- counter 1))))
  (_iter 0 1 2 n))