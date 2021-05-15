
# Windows 10 migration
# From: /dev/sda
#   To: /dev/nvme0n1
#
# 将 Windows 10 系统从机械硬盘迁移到固态硬盘
# 机械硬盘：西部数据 WDC WD10SPZX-22Z10T0 - 1T (SATA)
# 固态硬盘：Samsung 970 EVO Plus - 250G (NVME M.2)
#
# 由于固态硬盘比机械硬盘小的多，因此无法将整块硬盘
# 的数据全部迁移。只能将系统所在的 C 盘迁移过去。


# 0. 准备
# 0.1 将虚拟内存文件（pagefile.sys）重新放回 C 盘
#     保证虚拟内存文件和系统在一起
# 0.2 在磁盘管理中，对 C 盘执行 "压缩卷"
#     适当缩小 C 盘的容量
# -----------------------------


# 1. 得到旧硬盘的分区信息
#
#    我们需要迁移以下 4 个分区
#
#     > Windows recovery environment
#     > EFI System (启动系统用)
#     > Microsoft reverved (MSR)
#     > C 盘数据
# -----------------------------
fdisk -l /dev/sda

# ...
# Disklabel type: gpt
# Disk identifier: 1DFB19B5-1B5B-46DA-913F-074E2088AEF1
#
# Device       Start       End   Sectors  Size Type
# /dev/sda1     2048   1085439   1083392  529M Windows recovery environment
# /dev/sda2  1085440   1290239    204800  100M EFI System
# /dev/sda3  1290240   1323007     32768   16M Microsoft reserved
# /dev/sda4  1323008 185323519 184000512 87.8G Microsoft basic data
# ...



# 2. 对新硬盘划分同样的分区
# 
# 2.1 指定分区起始扇区，结束扇区
# 2.2 得到分区的扇区数，和空间大小
# 2.3 设置分区类型
# 2.4 指定分区的名称 (可选)
# 2.8 Attrs=?
# 2.9 GUID=?
# -----------------------------
fdisk /dev/nvme0n1


# 3. 更新固态硬盘里的 GUID
#
#    GUID(/dev/nvme0n1) = GUID(/dev/sda)
#
#    如果不更新的话，系统启动时就会报错，因为
#    硬盘实际的 disk identifier 与启动信息里
#    记录的不一样
#    error code: 0xc000000e
# -----------------------------


# 4. 更新分区的 UUID 信息
#    
#    UUID(/dev/nvme0n1p4) = UUID(/dev/sda4)
#
#    否则就会报错误 error code: 0xc0000225
# -----------------------------

# 注意
# ----
# 
# PMBR 无需复制;
# 
# EFI System 分区的 UUID 不需要保持一致。
# UEFI 有能力找到这个分区，不是通过 UUID 来辨别的
#
# 同样 Microsoft reserved 分区的 UUID 也无需保持一致。
#



