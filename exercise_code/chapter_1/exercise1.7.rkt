#lang sicp
(define (sqrt-iter guess x)
  (if (new-good-enough? guess (improve guess x) x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (avarage guess (/ x guess)))

(define (avarage x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (new-good-enough? guess improved x)
  (< (/ (abs (- guess improved)) x) 0.0001))