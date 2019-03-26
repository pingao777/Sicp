#lang sicp

(#%require "text.scm")

(define (tree->list-1 tree)
  (if (null? tree)
      '()
      (append (tree->list-1 (left-branch tree))
              (cons (entry tree)
                    (tree->list-1 (right-branch tree))))))

(define (tree->list-2 tree)
  (define (copy-to-list tree result-list)
    (if (null? tree)
        result-list
        (copy-to-list (left-branch tree)
                      (cons (entry tree)
                            (copy-to-list (right-branch tree)
                                          result-list)))))
  (copy-to-list tree '()))


(display (tree->list-1 (make-tree 2 (make-tree 1 '() '()) (make-tree 5 '() '()))))
(newline)
;; 注意这里是'(2 (1 () ()) (5 () ()))不是'(2 '(1 '() '()) '(5 '() '()))
(display (tree->list-2 '(2 (1 () ()) (5 () ()))))

;; a)两个函数结果是一样的 