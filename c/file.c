
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

/**
 * open a file
 */
// 必选项：
// O_RDONLY - 只读
// O_WRONLY - 只写
// O_RDWR   - 读写。The result is undefined if this
//            flag is applied to a FIFO.
// 可选项：
// O_APPEND
// O_CREAT
// O_DSYNC
// O_EXL
// O_NOCTTY
// O_NONBLOCK
// O_RSYNC
// O_SYNC
// O_TRUNC
int open(const char * path, int oflag, ... );

/**
 * close a file descriptor
 */
int close(int fd);




// 打开文件
int fd = open("data", O_RDONLY);

// 关闭文件
close(fd);


