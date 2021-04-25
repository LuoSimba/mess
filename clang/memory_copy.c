#include <string.h>

/**
 * copy memory area
 * the memory areas should not overlap.
 */
void * memcpy(
        void *dest,
        const void *src,
        size_t n);


void main(void)
{
    const char * str = "HELLO";

    void * dest = malloc(6);

    memcpy(dest, str, 6);

    // 注意：有些内存是只读，不可修改的
}

