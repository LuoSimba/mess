

# 磁盘分区工具

fdisk
parted


# 文件系统容量使用情况
# 
# df - report file system disk space usage
#
# -h print sizes in human readable format.
df -h


# Disk Usage
# 估计文件夹的大小
du

# -h 结果显示 100M, 32K 等便于阅读的值
# -s 仅显示一项统计结果
du -h -s .


# 调整一个文件系统的大小 (不能在挂载中)
resize2fs /dev/sdb1 20G


# 分区的备份，还原，迁移
dd 




# 文件系统
# 
# centos8.x  xfs
# opensuse   btrfs
