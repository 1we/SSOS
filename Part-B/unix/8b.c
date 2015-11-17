#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<unistd.h>
#include<stdlib.h>

main()
{
int fd;
char buf1[]="department of is";
char buf2[]="department of cs";
fd=creat("ise",0622);

if(fd<0)
{
printf("file is not created\n");
exit(0);
}

write(fd,buf1,16);
lseek(fd,48,SEEK_SET);
write(fd,buf2,16);
}
