

# 将 MySQL 注册成为一个服务
mysqld --install MySQL --defaults-file="C:\\Windows\\my.ini"


# 导出存储过程
mysqldump --routines

# 导出数据时，将多个 insert 合并成一条语句
# 合并后的 insert 在导入时块10倍以上，但是
# SQL 语句太长不利于阅读
mysqldump --extended-insert=TRUE

