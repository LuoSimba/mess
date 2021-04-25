# 使用 kill 发送信号
# 
# (SEE signal.c)

# kill is a shell builtin

# 如果不知道有哪些信号，可以
kill -l 
# 来列出信号列表


# 如果要向进程 6688 发送 SIGUSR1 信号，可以
kill -s SIGUSR1 6688


# 信号有一个名称和对应数值
#
# sigspec: signal name
# signum:  signal number

