

// Types:
// 1. object types
// 2. function types
// 3. incomplete types

// signed integer types:
//  (a) five standard signed integer types:
//    1. signed char
//    2. short int
//    3. int
//    4. long int
//    5. long long int
//  (b) extended signed integer types
// 
// unsigned integer types:
//  (a) standard signed integer types
//  (b) extended unsigned integer types
//
// ---
// standard integer types
// extended integer types
//
// ---
// floating types:
//  (a) real floating types:
//    1. float
//    2. double
//    3. long double
//  (b) complex types:
//    1. float _Complex
//    2. double _Complex
//    3. long double _Complex
//
// ---
// basic types: char, signed integer, unsigned integer, floating types
//
// ---
// enumerated type
//
// ---
// the void type: it is an incomplete type that cannot be completed.
//
// ---
// derived types:
//  (a) array type, derived from its element type.
//  (b) structure type
//  (c) union type
//  (d) function type, derived from its return type.
//  (e) pointer type, called the referenced type.
//
// ---
// scalar types: arithmetic types and pointer types.
// aggregate types: array and structure types.
//
// ---
// incomplete types:
//  (a) a structure or union type whose members have not yet
//      been specified.
//  (b) an array type whose dimension has not yet been specified.
//  (c) the void type.
// incomplete type may not be instantiated (its size is not known),
// nor may its members be accessed (they, too, are unknown).
//
//
// ---
// Type qualifiers (类型限定符):
//   const      只读
//   volatile   与 const 相反。目的是告诉 C 实现，对象的值会改变，并且
//              是以不受控制的方式改变。该类型所定义的对象，它的值不单
//              单会被当前程序的代码修改，还可能潜在地被其他程序或代码
//              修改。因此，编译器不能在编译时对访问该对象地代码做优化
//              处理，对这种对象的处理不能依赖于缓存特性。
//              例如，它可能对应一个硬件的端口，或者几个程序或线程公用
//              的存储位置等等。
//   restrict   仅适用于指针类型。
//              restrict 类型的指针与它所指向的对象有一种特殊的联系：
//              在一个代码块内（函数体或者复合语句），所有到这个对象的
//              引用必须直接或者间接通过这个指针进行。
//              基于上述保证的条件，编译器就可以在代码块的开始处安全地
//              缓存"该指针所指向的对象"的值，读取和更新操作只针对这个
//              缓存值进行。在退出代码块之前，再将缓存的值写回到指针所
//              指向的对象。
//
// qualify: to add to something that has already been said, in order
// to limit its effect or meaning; modify 限定，修饰
//
// qualifier: technical a word or phrase that limits or adds to the
// meaning of another word or phrase （语法中的）限定语，修饰语
//
// unqualified type
// qualified type
//

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



