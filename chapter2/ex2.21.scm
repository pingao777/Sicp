#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (square-list1 items)
  (if (null? items)
      nil
      (cons (square (car items)) (square-list1 (cdr items)))))

(define (square-list2 items)
  (map square items))

(check-equal? (square-list1 '(1 2 3)) (square-list2 '(1 2 3)))
