%{
      #include<stdio.h>
      #include<stdlib.h>
%}
%token LETTER DIGIT

%%
      S:LETTER
       |S DIGIT
       |S LETTER;
%%

main()
{
	printf("Enter a variable\n");
  	yyparse();
  	printf("Valid Variable\n");
}

yyerror()
{
 	  printf("Invalid Variable\n");
          exit(0);
}                 
/*
lex then

root@kali:~/Desktop/5ss/ssos/lexandyacc/yacc# yacc -d 4b.y
root@kali:~/Desktop/5ss/ssos/lexandyacc/yacc# cc lex.yy.c y.tab.c -ll
root@kali:~/Desktop/5ss/ssos/lexandyacc/yacc# ./a.out 

*/
