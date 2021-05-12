
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>

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

/**
 * control device
 *
 * d       - an open file descriptor
 * request - a device-dependent request code
 * ...     - an untyped pointer to memory
 */
int ioctl(int d, int request, ...);



// 打开文件
int fd = open("data", O_RDONLY);

// 关闭文件
close(fd);





/*!
 * 获取设备的扇区大小
 */
int sector_size;

// get block device sector size
// if fd is not block device:
//     "Inappropriate ioctl for device"
int ret = ioctl(fd, BLKSSZGET, &sector_size);

if (ret == 0)
{
    // success...
    printf("sector size = %d\n", sector_size);
}
else
{
    // fail
    char * error_string = strerror(errno);
}


