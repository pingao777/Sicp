## 计算机程序的构造与解释(Structure and Interpretation of Computer Programs)

### 环境搭建

编程环境为DrRacket，版本7.1，现在已经有了专门给本书编写的包[配置方法](https://docs.racket-lang.org/sicp-manual/)，没有选择mit-scheme，是因为

- 编辑和调试不好用
- 没有sicp图形语言
- emacs操作方式不习惯

如果你喜欢使用Vim，那么下面的配置还可以一键运行，特别的方便。

```vim
augroup scheme
    autocmd!
    " 加上<esc>可以避免弹出命令行必须按两次enter才能回到代码
    autocmd filetype scheme nnoremap <F9> :w<cr>:! racket %<cr><esc>
augroup end
```
这样直接按下`F9`就能运行了

### 遇到问题

#### Win10安装sicp包

7.1版本ui界面安装pkg报错cadr: contract violation，可以使用命令行安装，命令如下：

```shell
raco pkg install --auto sicp
```

#### 图形语言

sicp-pict包实现的图形语言有些习题不能做，可以使用`chapter2/pict.scm`代替。

#### 惰性求值

和mit-scheme不同，书本上的`delay`函数在racket中并不能延迟求值，可以用下面的代码实现：

```scheme
(define-syntax delay
  (syntax-rules ()
    ((delay expr)
     (memo-proc
      (lambda ()
        expr)))))
```

在流与延时求值那一节，课本上的solve函数不能运行，可以作如下修改：

```scheme
(define (solve f y0 dt)
  (define y (integral (delay (force dy)) y0 dt))
  (define dy (delay (stream-map f y)))
  y)
```


### 习题进度

#### 第1章：|=====================================================|89% (41/46)

|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|--|1.02|1.03|--|1.05|1.06|1.07|1.08|1.09|1.10|1.11|1.12|--|--|1.15|
|1.16|1.17|1.18|1.19|1.20|1.21|1.22|1.23|1.24|--|1.26|1.27|1.28|1.29|1.30|
|1.31|1.32|1.33|1.34|1.35|1.36|1.37|1.38|1.39|1.40|1.41|1.42|1.43|1.44|1.45|
|1.46|


#### 第2章：|==========================================|71% (69/97)

|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|2.01|2.02|2.03|2.04|2.05|2.06|2.07|2.08|--|2.10|2.11|2.12|2.13|2.14|2.15|
|--|2.17|2.18|--|2.20|2.21|2.22|2.23|2.24|2.25|2.26|2.27|2.28|2.29|2.30|
|2.31|2.32|2.33|2.34|2.35|2.36|2.37|2.38|2.39|2.40|2.41|2.42|--|2.44|2.45|
|2.46|2.47|2.48|2.49|2.50|2.51|2.52|2.53|2.54|2.55|2.56|2.57|2.58|2.59|2.60|
|2.61|2.62|2.63|2.64|--|2.66|2.67|2.68|2.69|2.70|2.71|2.72|2.73|--|2.75|
|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|
|--|--|--|--|--|--|--|


#### 第3章：|======================================================|90% (74/82)

|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|3.01|3.02|3.03|3.04|3.05|3.06|3.07|3.08|3.09|3.10|3.11|3.12|3.13|3.14|--|
|3.16|3.17|3.18|3.19|--|3.21|3.22|3.23|3.24|--|--|3.27|3.28|3.29|3.30|
|3.31|3.32|3.33|3.34|3.35|--|3.37|3.38|3.39|3.40|3.41|--|3.43|3.44|3.45|
|3.46|3.47|3.48|--|3.50|3.51|3.52|3.53|3.54|3.55|3.56|--|3.58|3.59|3.60|
|3.61|3.62|3.63|3.64|3.65|3.66|3.67|3.68|3.69|3.70|3.71|3.72|3.73|3.74|3.75|
|3.76|3.77|3.78|3.79|3.80|3.81|3.82|


#### 第4章：|================================================|81% (64/79)

|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|4.01|4.02|--|4.04|4.05|4.06|4.07|4.08|--|--|4.11|4.12|4.13|4.14|4.15|
|4.16|--|4.18|4.19|4.20|4.21|4.22|4.23|4.24|4.25|4.26|4.27|4.28|4.29|4.30|
|--|--|4.33|4.34|4.35|4.36|4.37|4.38|4.39|4.40|4.41|4.42|4.43|4.44|4.45|
|4.46|4.47|4.48|4.49|4.50|4.51|4.52|4.53|4.54|4.55|4.56|4.57|4.58|4.59|4.60|
|4.61|4.62|4.63|4.64|4.65|4.66|--|4.68|4.69|4.70|--|4.72|--|--|--|
|--|--|--|--|