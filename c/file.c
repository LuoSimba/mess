
#include <stdio.h>
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


// stream open function
//
// The fopen() function opens the file whose name is the
// string pointed to by path and associates a stream with
// it.
//
// The argument mode points to a string beginning with one
// of the following sequences (Additional characters may
// follow these sequences.):
//
// r    - Open text file for reading.
//        The stream is positioned at the beginning of the
//        file.
//
// r+   - Open for reading and writing.
//        The stream is positioned at the beginning of the
//        file.
//
// w    - Truncate file to zero length or create text file
//        for writing.
//        The stream is positioned at the beginning of the
//        file.
//
// w+   - Open for reading and writing.
//        The file is created if it does not exist. otherwise
//        it is truncated. The stream is positioned at the
//        beginning of the file.
//
// a    - Open for appending (writing at end of file).
//        The file is created if it does not exist.
//        The stream is positioned at the end of the file.
//
// a+   - Open for reading and appending (writing at end of
//        file). 
//        The file is created if it does not exist.
//        The initial file position for reading is at the 
//        beginning of the file, but output is always appended
//        to the end of the file.
//
// b    - ignored.
//
// the 'b' is ignored on all POSIX conforming system, including Linux.
// (Other systems may treat text files and binary files differently,
// and adding the 'b' may be a good idea if you do I/O to a binary 
// file and expect that your program may be ported to non-Unix
// environments.
//
FILE * fopen(const char * path, const char * mode);


