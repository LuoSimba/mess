/*！
 *
 *
 * 函数指针的使用
 *
 */

#include <stdio.h>

void foo(void)
{
    puts("hello world!");
}

void main(void)
{
    // 定义一个函数指针
    void (*pf)(void);

    // 给指针赋值，以下两者是等效的
    pf = foo;
    pf = &foo;

    // 函数指针的调用，以下两者是等效的
    pf();
    (*pf)();
}

