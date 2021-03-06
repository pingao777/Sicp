#lang sicp

(define (make-rat n d)
  (let ((g (gcd n d)))
    (if (< (* n d) 0)
        (cons (- (abs (/ n g))) (abs (/ d g)))
        (cons (abs (/ n g)) (abs (/ d g))))))

;; 公共函数
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))
  

(print-rat (make-rat 1 -3))
(print-rat (make-rat -2 6))
(print-rat (make-rat -2 -6))
(print-rat (make-rat 2 6))



        
