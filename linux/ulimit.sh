# ulimit is a shell builtin
#
# Modify shell resource limits
#
# Provides control over the resources available 
# to the shell and processes it creates, on systems
# that allow such control.

# 查看帮助
help ulimit

# all current limits are reported
ulimit -a

# 设置栈大小
# (GUESS: 普通用户只能设置一个比当前值更小的值--越调越小)
ulimit -s 32768

