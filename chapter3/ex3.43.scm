;; 如果串行执行，总的金额是守恒的，无论怎么样的顺序
;; 都是账户两两金额互换，所以不管执行多少次最终都是
;; 原来的金额；而如果是并发执行的话就有了竞态条件，
;; 比如20同时和10、30交换，可能10->20,30->20,20->30
;; 根源就是20->10还没完成的时候，和30的交换穿插过来了