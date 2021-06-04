
在 chrome 中打开 a.html,

1. 如果点击 mailto 的链接，浏览器会询问使用哪个程序打开:

   Launched external handler for 'mailto:a@com'.

2. 如果点击 zzz 的链接，因为操作系统并不知道如何处理相关的
   协议，所以会报错：

   Failed to launch 'zzz:a@com' because the scheme does not have a registered handler.

