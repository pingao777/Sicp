;; 最频繁的检测符号表增长速度O(1)，获取编码也是O(1)，所以整体上是O(1)
;; 最不频繁检测符号表应该为n n-1 ...1即O(n^2)，获取编码上应该是n-1即O(n)，所以整体上是O(n^2)