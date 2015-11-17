%{
/* to check wheather simple or compound sentence*/
%}
ws[ \n\t]+
%%
{ws}"and"{ws} |
{ws}"AND"{ws} |
{ws}"or"{ws} |
{ws}"OR"{ws} |
{ws}"but"{ws} |
{ws}"BUT"{ws} |
{ws}"because"{ws} |
{ws}"nevertheless"{ws}   { printf("compund sentence\n");exit(0);}
. ;
\n return 0;
%%
main()
{
printf("enter the sentence\n");
yylex();
printf("simple sentence\n");
}

/*

root@kali:~/Desktop/5ss/ssos/lexandyacc# cc lex.yy.c -ll
root@kali:~/Desktop/5ss/ssos/lexandyacc# ./a.out 
enter the sentence
ashok and akshay are brothers but not close friends
compund sentence
root@kali:~/Desktop/5ss/ssos/lexandyacc# ./a.out 
enter the sentence
ashok and akshay are bro's
compund sentence
root@kali:~/Desktop/5ss/ssos/lexandyacc# ./a.out 
enter the sentence
ashok is the elder bro
simple sentence
root@kali:~/Desktop/5ss/ssos/lexandyacc# 

*/
