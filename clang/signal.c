/*!
 * 接收外界的信号
 *
 * (SEE signal_send.sh)
 */

#include <signal.h> /* ANSI C signal handling */
//typedef void (* sighandler_t)(int);
//sighandler_t signal(int signum, sighandler_t handler);
//
// 内置的信号处理：SIG_IGN SIG_DFL

#include <unistd.h>
//int pause(void);


void foo(int sig);

void main()
{
    // 关联信号与处理函数
    signal(SIGUSR1, foo);

    // wait for signal
    pause();
}

/**
 * 负责接收信号的函数
 */
void foo(int sig)
{
    // TODO
}

