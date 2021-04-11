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
    // 在函数调用时，以下两种方法是等价的。但是
    // 可能在其他使用时是有区别的。
    pf();
    (*pf)();
}


// n3797
// 5.2.2p1 Function call [expr.call]
//
//  A function call is a postfix expression followed by parentheses
//  containing a possible empty, comma-separated list of
//  initializer-clauses which constitude the arguments to the function.
//  The postfix expression shall have function type or 
//  pointer to function type.
//

// n1570
// 6.3.2.1p4 Lvalues, arrays, and function designators
//
//  A function designator is an expression that has function
//  type. Except when it is the operand of the sizeof operator,
//  the _Alignof operator, or the unary & operator, a function 
//  designator with type "function returning type" is converted
//  to an expression that has type "pointer to function returning
//  type".
//
// 6.5.2.2p1 Function calls
//
//  The expression that denotes the called function shall have 
//  type pointer to function returning void or returning a 
//  complete object type other than an array type.
//
