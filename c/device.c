#include <sys/ioctl.h>


/**
 * control device
 *
 * 通过指定的命令来实现对硬件的操作
 *
 * d       - an open file descriptor
 * request - a device-dependent request code
 * ...     - an untyped pointer to memory
 */
// BLKSSZGET: get block device sector size
int ioctl(int d, int request, ...);



/*!
 * 获取设备的扇区大小
 */
int sector_size;

// 打开硬盘设备
int fd = open("/dev/sda", O_RDONLY);

// if fd is not block device:
//     "Inappropriate ioctl for device"
int ret = ioctl(fd, BLKSSZGET, &sector_size);

close(fd);

if (ret == 0)
{
    // success ...
    printf("sector size = %d\n", sector_size);
}
else
{
    // fail ...
    char * error_string = strerror(errno);
}


