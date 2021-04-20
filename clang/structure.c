// Structure 结构体

/**
 * 结构体的声明
 */
struct User;   // 声明 'User' 是一个结构体

// (接上句)
union User;    // 错误
// 如果又将 'User' 声明为其他类型就是错的。
// 因为 'User' 已经被声明为结构体。虽然是不完全
// 类型。

// (接上句)
int User;      // 对的
// 一个是结构体类型
// 一个是整型变量




/**
 * 结构体的定义(同时也是声明)
 */

// 定义一个空的结构体
// sizeof(struct User) == 0
struct User {
};

/**
 * 结构体内部并不能像函数声明一样省略参数名
 *
 * void foo(int);
 * void foo(int age);
 *
 * 因此，这仍然是一个空结构体
 */
struct User {
    int; /* 此行无效 */
};


/**
 * 定义两个空的结构体变量，则
 *
 * 它们的大小为 0
 *
 * 它们可能占用同一个内存地址
 * &a == &b
 */
struct {
} a, b;

