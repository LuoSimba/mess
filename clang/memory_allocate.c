/*!
 * Allocate and free dynamic memory
 *
 * allocate: to decide officially that a particular
 *  amount of money, time etc or something such as
 *  a house or job etc should be used for a particular
 *  purpose. 分配
 *
 * free: to make something available so that it can be
 *  used. 释放, 腾出(先前被占用的空间)
 */

#include <stdlib.h>
//void * malloc(size_t size);
//void free(void * ptr);

// 注意：通过 malloc 分配的内存是未初始化的，
//       可能存在陈旧的数据


/**
 * WARNING: 这是一个错误的示范
 */
void main()
{
    // 1. 得到一块内存作为数值使用
    //
    // 分配的单位是字节
    int * pa = malloc(sizeof(int));

    // 2. 立马释放该内存
    //
    // 但是 pa 的地址仍然指向被收回的内存区域
    free(pa);

    // 3. 这里应该让 pa 忘记那个地址
    // 因为 pa 已经承诺不再使用了
    //pa = NULL;

    // 4. 紧接着再次申请同样大小的内存给 pb 使用
    //
    // 这里 pb 得到的内存刚好是从 pa 收回的那一块
    // 区域，也就是此时 pa == pb
    int * pb = malloc(sizeof(int));

    // 5. 向新的地址写入数值
    *pb = 100;

    // 6. 向旧的地址写入数值
    *pa = 60;

    // 照理说, pa 的地址已经被回收了，不能再操作 pa
    // 但是 pa 仍然记得那个地址，而且系统不会主动阻止
    // 通过 pa 去操作

    // 结果就是，pa 的操作把向 pb 写入的数值覆盖了
    // 因为它们本身就是同一片区域

    // 问题出在第 6 步
    // pa 承诺放弃了这块内存，却又主动往里写入数据，
    // 导致了 pb 的数据被破坏
}

