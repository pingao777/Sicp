#lang sicp

;; 1.5
;; 测试程序是正则序,还是应用序,运行(test 0 (p))卡死
;; 如果是应用序,p将会不停的递归运算,将会陷入死循环,
;; 如果是正则序,将会得到0
(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))