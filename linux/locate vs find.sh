
# locate 与 find 的不同点
# 
# find 在硬盘（文件系统）里搜索；
# locate 在一个事先准备好的数据库中搜索；
# 因此 locate 更快；
#


# 建立数据库
# 默认的数据库文件在 /var/lib/mlocate/mlocate.db
updatedb
# cron 会每天执行 updatedb 以更新数据库信息
# 配置文件在 /etc/updatedb.conf

# 搜索数据库
locate /etho
locate eth0
locate /eth0
locate passwd
locate /etc/sh  # 以 'sh' 开头的
locate -i ~/r   # 忽略大小写；搜索 HOME 目录；以 'r' 开头的



