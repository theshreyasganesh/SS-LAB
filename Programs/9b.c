#include<stdio.h>
int main()
{
   int ch, rv;
   char cmd[10];
   rv = fork();
   if(rv == 0)
   {
      do
      {
          printf("enter a command:\n");
          scanf("%s",cmd);
          system(cmd);
          printf("\n1: continue\n0: exit\n");
          scanf("%d", &ch);
      } while(ch!=0);
   }
   else
   {
      wait(0);
      printf("\nchild terminated\n");
   }
   return 0;
}
  /* Fork system call is used for creating a new process, which is called child process, which runs concurrently with the process that makes the fork() call (parent process). After a new child process is created, both processes will execute the next instruction following the fork() system call. A child process uses the same pc(program counter), same CPU registers, same open files which use in the parent process.
 It takes no parameters and returns an integer value. Below are different values returned by fork():
	Negative Value: creation of a child process was unsuccessful.
	Zero: Returned to the newly created child process.
	Positive value: Returned to parent or caller. The value contains process ID of newly created child process. */
