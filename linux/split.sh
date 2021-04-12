# 
# split 可用于分割很大的文本文件
#
# split a file into pieces

# -a, --suffix-length=N
#  use suffixes of length N (default 2)
#
# -b, --bytes=SIZE
#  按照每份 SIZE 字节进行分割
#
# -l, --lines=NUMBER
#  按照每份 NUMBER 行进行分割
#
# --verbose
#  print a diagnostic just before each
#  output file is opened

split --verbose -a 3 -l 3000 server.log


# 每份1000字节
split -b 1000 DATA.log

