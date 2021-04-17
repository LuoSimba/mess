
// n1256
// 6.5.3.4 The sizeof operator
//
// The sizeof operator shall not be applied to:
// 1. an expression that has function type
// 2. an expression that has an incomplete type
// 3. the parenthesized name of such a type
// 4. an expression that designates a bit-field member.

void foo(void)
{
}

void main(void)
{
    int s;
   
    // 以下是不正确的用法(尽管 GCC 不会报错)：

    // incomplete type
    s = sizeof(void);

    // function type
    s = sizeof(foo);

    // function type
    s = sizeof(void (void));
    s = sizeof(int (void));
    s = sizeof(int (int));
    s = sizeof(int (int, int));


    // 以下是正确的用法：
    s = sizeof(s);

    // integer type
    s = sizeof(int);

    // pointer type
    s = sizeof(int *);
    s = sizeof(int (*)(int, int));
}

