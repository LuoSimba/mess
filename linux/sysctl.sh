
#
# sysctl - configure kernel parameters at runtime
# 
# sysctl is used to modify kernel parameters at runtime.
# The parameters available are those listed under /proc/sys/.
#
# You can use sysctl to both read and write sysctl data.


# Parameters <-> file mapping:

kernel.ostype           /proc/sys/kernel/ostype
vm.swappiness           /proc/sys/vm/swappiness





# ===============
# READ parameters
# ===============

sysctl kernel.ostype
sysctl kernel/ostype
#: kernel.ostype = Linux



# Print only value
sysctl -n kernel.ostype
#: Linux


# How many cores in a CPU?
sysctl -n hw.ncpu

# ===============
# SET parameters
# ===============

# Use more memory, less swap partition.
sysctl vm.swappiness=0


# Read and execute commands from a file.
# from default file: /etc/sysctl.conf
sysctl -p 



