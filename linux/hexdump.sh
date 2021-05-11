

# hexdump, hd - ASCII, decimal, hexadecinal, octal dump
#
# The hexdump utility is a filter which displays the
# specified files, or the standard input, if no files
# are specified, in a user specified format.


# -C
# Canonical hex+ASCII display.
# Display the input offset in hexadecimal, followed by 
# sixteen space-separated, two column, hexadecimal 
# bytes, followed by the same sixteen bytes in %_p
# format enclosed in '|' characters.


# 以下每个单元由两个字节组成，因此不是很常用：
# -x 十六进制
# -d 无符号十进制
# -o 八进制


# 以下每个单元仅由一个字节组成，也不是很常用：
# -b 单字节，八进制.
# -c 单字节，当作字符显示.




# 显示文件的 16 进制表示
hexdump -C abc.txt




