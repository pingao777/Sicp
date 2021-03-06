#lang sicp

(#%require rackunit)

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      nil
      ;; 齐头并进
      (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs)))))

;; common
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))


(check-equal? (accumulate-n + 0 '((1 2 3) (4 5 6) (7 8 9) (10 11 12))) '(22 26 30))
