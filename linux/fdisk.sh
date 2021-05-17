# see also: parted

# fdisk - Partition table manipulator for Linux
# 硬盘分区工具


# -l
# List the partition tables for the specified devices
# and then exit.
#


# 查看硬盘和分区
fdisk -l 

fdisk -l /dev/sda

# 编辑某一块硬盘
fdisk /dev/sda

# 编辑某一个文件（将文件当作磁盘来对待）
dd if=/dev/zero of=floppy.img bs=512 count=2880
fdisk floppy.img


# fdisk works not well in VMware Virtual Machine Environment.
# It usually recognizes Sector Unit more larger then 512.
# and the value of 'Start', 'End' and 'Sectors' are wrong.
