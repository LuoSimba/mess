
# 如何判断系统是 32 位还是 64 位

getconf LONG_BIT
# 如果输出是 32 则是 32 位系统


uname -a
# 如果结果中包含有 x86_64 则是 64 位
# i386 ==> 32 位
# i686 ==> 32 位
# i686 是 i386 的一个子集


file /sbin/init
# ELF 32-bit LSB shared object ...


arch
# i686   ==> 32 位
# x86_64 ==> 64 位



