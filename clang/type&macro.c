

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



