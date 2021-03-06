/*!
 * Definition and declaration
 *
 */
// 1. 声明只表明变量的类型，不会分配存储空间
// 2. 定义为变量分配存储空间
// 3. 只能定义一次，但是可以声明多次
// 4. 定义同时也是声明，但声明不是定义

// forward declaration
// 前向声明：声明一个类型而不定义它

// 数组的声明
// 
// 此时尚未为该数组分配内存空间。
// 符号 'list' 是一个未知的地址。
//
// 但是可以使用 sizeof(list) 来得到
// 该数组的大小。
//
//  sizeof(list) = sizeof(int) * 20 = 4 * 20 = 80
//
// type(list) = int [20]
//
extern int list[20];

// 声明可以出现多次，但是每处声明的类型必须相同
// 
// 比如以下声明与上一句冲突，就是错误的
extern int list[18];


// ===================
// type = int [12]
int score[12];

// 数组指针
//
// type = int (*) [12]
int (*pscore)[12] = &score;


