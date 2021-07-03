

rem MySQL8 在命令行直接启动


cd %MYSQL_HOME%

rem --defaults-file=#
rem Only read default options from the given file #.
rem
rem --console
rem Write error output on screen.
rem 信息会打印在命令行窗口
rem
rem --skip-grant-tables
rem Start without grant tables.
rem 不用验证用户名密码
rem
rem --shared-memory
rem Enable the shared memory
rem 如果没有此项会启动失败
rem
mysqld.exe --defaults-file="C:\ProgramData\MySQL\MySQL Server 8.0\my.ini" --console --skip-grant-tables --shared-memory


rem 不小心将 mysql.user 表里 root 的 host 字段从 'localhost' 改成 '*'
rem 本意是想从远程登录.
rem
rem 但是 mysql 使用 '%' 作为通配符, 而不是 '*'.
rem
rem 这样，重启之后，我在本地也无法登录了.
rem
rem 而我想到的是启动时加 --skip-grant-tables.
rem
rem 没想到的是，这么一个小小的改动导致了 MySQL 无法启动.
rem
rem 先是没有指定 --console 选项，看不到任何报错。而且网上很多
rem 博客写的是 '-console' 我照着抄了。
rem
rem 然后还得加 --shared-memory 不然启动到一半 MySQL 就罢工了.
rem
rem 当我想通过阅读官网文档获取帮助的时候，官网文档内容太多，
rem 一时之间也不知如何下手。
