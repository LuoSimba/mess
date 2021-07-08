

# 磁盘分区工具

fdisk
parted


# 文件系统容量使用情况
# 
# df - report file system disk space usage
#
# -h print sizes in human readable format.
df -h


# 调整一个文件系统的大小 (不能在挂载中)
resize2fs /dev/sdb1 20G


# 分区的备份，还原，迁移
dd 

