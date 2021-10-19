
#
# sysctl - configure kernel parameters at runtime
# 
# sysctl is used to modify kernel parameters at runtime.
# The parameters available are those listed under /proc/sys/.
#
# You can use sysctl to both read and write sysctl data.


# ===============
# READ parameters
# ===============

# file: /proc/sys/kernel/ostype

sysctl kernel.ostype
#: kernel.ostype = Linux
#
# same as:
sysctl kernel/ostype



sysctl -n kernel.ostype
#: Linux


# 读取 CPU 核心数?
sysctl -n hw.ncpu
