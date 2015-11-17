#include<stdio.h>
int main()
{
int pid=fork();
if(pid==0)
{
printf("\n child process\n");
printf("process id=%d\n",getpid());
printf("parent process id=%id\n",getppid());
}
else
{
wait(0);
printf("\n parents process\n");
printf("process id=%d\n",getpid());
printf("child's process id=%d\n",pid);
}
return 0;
}
