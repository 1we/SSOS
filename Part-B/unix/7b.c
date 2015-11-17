#include<stdio.h>
#include<sys/types.h>
main()
{
char cmd [10];
int ch;
pid_t pid;
pid=fork();
if(pid==0)
{
do
{
printf("enter the command to be executed :\n");
scanf("%s",cmd);
system(cmd);
printf("enter 1 to enter more commands,0 to exit\n");
scanf("%d",&ch);
}
while ( ch!=0 );
}
wait();
}
