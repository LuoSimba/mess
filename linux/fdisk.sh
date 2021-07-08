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

# 查看硬盘和分区各占用多少块 (block size)
fdisk -s /dev/sda
fdisk -s /dev/sda1
# 这里的 block size = 1024 bytes
# block size 有很多不同的含义，这里固定是 1024 字节


# 关于 block size
info coreutils 
# Common options -> Block size
# block size 是 coreutils 里的一个概念，很多的命令
# 在显示的时候，都是以 block size 为单位的。



# 在 VMware 虚拟机环境中, fdisk 获取到 U 盘的扇区
# 信息是错误的, 往往比 512 大很多。因此列出的分区
# 起始位置, 和结束位置都是很奇怪的数值。（可能和
# 虚拟机里的系统有关）

