#lang racket

(provide (all-defined-out))

;; 第一种
(define (make-frame origin edge1 edge2)
  (list origin edge1 edge2))

(define (origin-frame frame)
  (car frame))

(define (edge1-frame frame)
  (cadr frame))

(define (edge2-frame frame)
  (caddr frame))

;; 第二种
;(define (make-frame origin edge1 edge2)
;  (cons origin (cons edge1 edge2)))
;
;(define (origin-frame frame)
;  (car frame))
;
;(define (edge1-frame frame)
;  (cadr frame))
;
;(define (edge2-frame frame)
;  (cddr frame))