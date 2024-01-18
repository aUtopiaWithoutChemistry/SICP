#lang sicp
(define (sum-of-squares-of-two-larger x y z)
  (define smallest x)
  (if (< y smallest)
        (set! smallest y))
  (if (< z smallest)
        (set! smallest z))
  (+ (* x x) (* y y) (* z z) (- (* smallest smallest))))