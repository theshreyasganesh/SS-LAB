#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<unistd.h>
int main()
{
    pid_t child_pid;
    child_pid = fork();
    if(child_pid > 0)
    {
        printf("this is the parent process: %d. Sleep for one minute.\n", getpid());
        sleep(60);
    }
    else
    {
       printf("this is the child process: %d. Exit immediately.\n", getpid());
        exit(0);
    } 
    system("ps -e -o pid,ppid,stat,comm");
    return 0;
}


/*The pid_t data type is a signed integer type which is capable of representing a process ID. In the GNU C Library, this is an int . Function: pid_t getpid (void).
	The getpid function returns the process ID of the current process.*/
