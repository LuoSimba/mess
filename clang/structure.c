// Structure 结构体


// 结构体也区分声明和定义

// 声明
struct User;
// 这时候如果将 User 又声明为其他类型就是错的
union User; // 这句是错的。它已经是结构体(虽然是不完全类型)

// 定义(同时也是一种声明)
struct User {
};




/**
 * 一个空的结构体
 *
 * sizeof(a) == sizeof(b) == sizeof(c) == 0
 *
 * &a == &b == &c
 */
struct {
} a, b, c;


void main(void)
{

    // 这样的写法可以通过编译??
    // size == 0
    int size = sizeof(struct {});

    // size2 == 4
    int size2 = sizeof(struct { int x; });
}

// ------------------------

// sizeof(struct DATA) == 0
struct DATA {
};

void main(void)
{
    // sizeof(a) == 0
    struct DATA a;
    struct DATA b;
    struct DATA c;
}


// ------------------------

/**
 * 结构体内部并不能像函数声明一样省略参数名
 *
 * void foo(int);
 * void foo(int age);
 *
 */
struct DATA {
    int; /* 此行无效 */
};

// 以上结构体等价于
struct DATA {
};

