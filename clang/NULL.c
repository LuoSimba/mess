/*!
 *
 * NULL 所指向的内存地址 0x0
 * 是即不可读取，也不可写入的
 *
 * 因为它并不是分配给程序的合法地址
 *
 * 程序可用的地址都有明确的范围：
 *
 *  VM Start --> VM End (VM Size)
 *
 * 还有相应的标识(Flags)来说明：
 *
 *  - read    是否可读
 *  - write   是否可写
 *  - execute 是否可当作指令执行
 */

void main(void)
{
    unsigned char * pChar = NULL;

    // 读取（失败）
    unsigned char ch = *pChar;

    // 写入（失败）
    *pChar = 'a';
}

