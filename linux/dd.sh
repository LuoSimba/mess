

# dd - convert and copy a file
#
# Copy a file, converting and formatting according to
# the operands.
#


# if=FILE
# 从文件 FILE 中读取数据，而不是从 stdin

# of=FILE
# 写入到文件 FILE 中，而不是输出到 stdout


# bs=BYTES
# 每次读取和写入 BYTES 字节

# ibs=BYTES
# 每次读取 BYTES 字节（默认：512）

# obs=BYTES
# 每次写入 BYTES 字节（默认：512）

# count=BLOCKS
# 只复制 BLOCKS 次
# 复制的总字节数 = ibs * count



# cbs=BYTES
# convert BYTES bytes at a time

# conv=CONVS
# convert the file as per the comma separated symbol list

# iflag=FLAGS
# read as per the comma separrated symbol list



# oflag=FLAGS
# write as per the comma separated symbol list

# seek=BLOCKS
# skip BLOCKS obs-sized blocks at start of output

# skip=BLOCKS
# skip BLOCKS ibs-sized blocks at start of input

# status=noxfer
# suppress transfer statistics




# 从标准输入中读取，输出到标准输出
echo "hello" | dd

# 从文件中读取，输出到标准输出
dd if=FILE

# 从标准输入中读取，写入到文件中
echo "hello" | dd of=FILE

# 只从输入数据中取一次，每次取两个字节
echo "aabbccdd" | dd bs=2 count=1
# 结果为 "aa"


# 复制磁盘的 MBR，到一个文件
dd if=/dev/sda bs=512 count=1 > mbr.bin
# or
dd if=/dev/sda of=mbr.bin bs=512 count=1 



