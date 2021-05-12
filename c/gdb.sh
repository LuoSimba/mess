
# 打印帮助信息
gdb --help


# 启动的时候，不再显示一大堆信息
gdb --quiet



# ========
# 常用命令
# ========

# 开始调试，并停止在 main 函数入口处
start

run
next
step
shell

# 查看函数的汇编代码
disassemble foo

# 查看宏定义
info macro O_RDONLY

info functions

# 退出 gdb
quit


# ========
# 其他命令
# ========

# 设置 Intel 汇编风格
set disassembly-flavor intel

# 打印易读的结构体内容
set print pretty


