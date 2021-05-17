
# see also: fdisk

# parted - a partition manipulation program

# 显示所有的分区信息
parted --list
# 等价于
fdisk -l
# 但是 parted 显示的信息更加友好、易读


# 仅显示版本信息
parted --version


# 列出设备
(parted) print devices
/dev/sda (32.1GB)
/dev/sdb (32.2GB)
/dev/sdc (32.2GB)

# 选中某个设备，用于接下来的操作目标
(parted) select /dev/sdc

# 列出设备的分区表
(parted) print

# 结束
(parted) quit

