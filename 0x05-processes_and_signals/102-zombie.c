#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

/**
 * infinite_while - Creates an infinite loop.
 *
 * Return: Always returns 0.
 */
int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}

/**
 * main - Creates 5 zombie processes.
 *
 * Return: 0 on success.
 */
int main(void)
{
    pid_t zombie_pid;
    int i;

    for (i = 0; i < 5; i++)
    {
        zombie_pid = fork();

        if (zombie_pid > 0)
        {
            printf("Zombie process created, PID: %d\n", zombie_pid);
        }
        else
        {
            exit(0);  /* Child process exits immediately */
        }
    }

    infinite_while();  /* Infinite loop to keep the program running */

    return (0);
}
