/*!
 * 最基础的类型与宏定义
 */


// size_t = unsigned int
size_t size;

// 空指针
//
// NULL = (void *) 0x0
#define NULL ((void *)0)


// 关于 short int long 的长度
// 必须遵守以下规定：
//
// 1. sizeof(short int) <= sizeof(int)
// 2. sizeof(int) <= sizeof(long int)
// 3. short int 至少应为 16 位(2 bytes)
// 4. long int 至少应为 32 位(4 bytes)
//



