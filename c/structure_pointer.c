



// --------------------------
// 本段可以通过编译
//
// 虽然代码没有说明 'struct ANIMAL' 是什么
// 但是指向 'struct ANIMAL' 的指针大小是确定的
//
// 任何指针的大小总是确定的。因为指针里存储的
// 是地址。一台机器地址总线的宽度是与硬件相关
// 的一个固定值。

int main(void)
{
    return sizeof(struct ANIMAL *);
}




// --------------------------
// 本段可以通过编译
//
// 虽然结构体并不存在。但是可以事先定义好指向该
// 结构体类型的指针。

void main(void)
{
    // 这里定义了 pCat 是一种 (struct ANIMAL *)
    // 同时也声明了 ANIMAL 是一种 (struct ANIMAL),
    // 虽然这时它还是一个不完全类型
    struct ANIMAL * pCat;

    // 这句是错的，因为 ANIMAL 的类型已经被声明为结构体
    union ANIMAL;
}

