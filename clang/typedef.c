/*!
 * typedef 的作用域
 */

#include <stdio.h>

void main(void)
{
    typedef char OBJ;                       // OBJ = char
                                            // OBJ = char
    {                                       // OBJ = char
        OBJ a = 'a';                        // OBJ = char
                                            // OBJ = char
        printf("a=%d OBJ=%d\n",             // OBJ = char
                sizeof(a), sizeof(OBJ));    // OBJ = char

        typedef float OBJ;                  // OBJ = float
                                            // OBJ = float
        OBJ b = 3.14;                       // OBJ = float
        printf("b=%d OBJ=%d\n",             // OBJ = float
                sizeof(b), sizeof(OBJ));    // OBJ = float
    }
}

