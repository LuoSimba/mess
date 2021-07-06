APPENDIX A - 参考实现

   This appendix contains the following files taken from RSAREF: A
   Cryptographic Toolkit for Privacy-Enhanced Mail:

     global.h -- global header file
     md2.h -- header file for MD2
     md2c.c -- source code for MD2

The appendix also includes the following file:

     mddriver.c -- test driver for MD2, MD4 and MD5

The driver compiles for MD5 by default but can compile for MD2 or MD4 if
the symbol MD is defined on the C compiler command line as 2 or 4.

A.5 Test suite

   The MD2 test suite (driver option "-x") should print the following
   results:

MD2 test suite:
MD2 ("") = 8350e5a3e24c153df2275c9f80692773
MD2 ("a") = 32ec01ec4a6dac72c0ab96fb34c0b5d1
MD2 ("abc") = da853b0d3f88d99b30283a69e6ded6bb
MD2 ("message digest") = ab4f496bfb2a530b219ff33031fe06b0
MD2 ("abcdefghijklmnopqrstuvwxyz") = 4e8ddff3650292ab5a4108c3aa47940b
MD2 ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789") = da33def2a42df13975352846c30338cd
MD2 ("12345678901234567890123456789012345678901234567890123456789012345678901234567890") = d5976f79d83d3a0dc9806c3c66f3efd8

