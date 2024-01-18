#lang sicp
(define (cubic-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubic-iter (improve guess x)
                  x)))

(define (good-enough? guess x)
  (< (/ (abs (- guess (improve guess x))) x) 0.0001))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* guess 2)) 3))

(define (cbrt x)
  (cubic-iter 1.0 x))