%{
#include<fcntl.h>
	int count=0;
%}

%%
("int ")|("float ")|("double ")|("char ")
					{

						int ch;
						ch = input();
						for(;;)
						{
							if(ch==',')
					  		{
							       	count++;
							}
						else if(ch= =';')
						{
						       count++;
						       break;
						}
					       ch = input();
				           }
				}
%%
int main(int argc, char *argv[])
{
	yyin = fopen(argv[1],"r");
	yylex();
	printf("number of identifiers=%d\n",count);
}
