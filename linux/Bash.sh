#! /bin/bash



# for ... in ...
type for
#: for is a shell keyword

set a b c

for i  do echo "$i"; done

for i; do echo "$i"; done

for i do echo "$i"
done

# for 可以省略 in words
# do 之前的分号是可选的，以上两种形式都是对的
# 但是 done 之前的分号是必须的。或者 done 单独一行


# -----------------------------------
# 关于 for 的语法
help for
man bash
# help 和 man 给出的语法（细节）都是不对的，是简化版
# gnu.org 官网文档才是对的



