
// Recursive function calls shall be permitted,
// both directly and indirectly through any chain
// of other functions.


/**
 * 函数可以递归调用
 */
void foo(void)
{
    // 自己调用自己
    foo();
}

void bar(void)
{
    // 被他人调用
    foo();
}

// foo 函数体的汇编如下
// push %ebp
// mov %esp, %ebp
// sub $0x8, %esp
// --------------------
// call 0x80483b4 <foo>
// --------------------
// leave
// ret

// foo 与 bar 的汇编代码应该是一模一样的
// 在 bar 里如何调用 foo, 在 foo 自己里
// 也按照同样的方式调用即可，不需要特殊
// 的处理。同样是：
// --------------------
// call 0x80483b4 <foo>
// --------------------
// 这一句指令。


