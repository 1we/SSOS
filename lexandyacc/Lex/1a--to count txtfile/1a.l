%{
	int chars=0,spaces=0,words=0,lines=0;
%}

%%
[\n]    	{	lines++;	}
[^\t\n ]+ 	{	chars+=yyleng,	words++;	}
[ ] 		{ 	spaces++;	}
%%

int main(int argc,char *argv[])
{
	yyin=fopen(argv[1], "r");
	yylex();
	printf("number of characters:%d\n",chars);
	printf("number of spaces:%d\n",spaces);
 	printf("number of words:%d\n",words);
	printf("number of lines:%d\n",lines);

/* root@kali:~/Desktop/5ss/ssos/lexandyacc# lex 1a.l 
root@kali:~/Desktop/5ss/ssos/lexandyacc# cc lex.yy.c -ll
root@kali:~/Desktop/5ss/ssos/lexandyacc# ./a.out sampletxt.txt
number of characters:30
number of spaces:7
number of words:8
number of lines:2
*/
}
