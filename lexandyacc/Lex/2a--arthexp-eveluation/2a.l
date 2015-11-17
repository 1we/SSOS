%{
         int flag=0,i=0,j=0,temp;
         char *a1[10],*a2[10];
%}
opr   [ ]*[\+\-\*\/][ ]*
opnd  [a-zA-Z0-9]+
%x    P Q R S
%%
^{opr}     { BEGIN R; }
<R>.*\n    { flag=1; }
{opnd}     { a1[i++]=(char*)strdup(yytext); BEGIN P; }
<P>{opr}   { a2[j++]=(char*)strdup(yytext); BEGIN Q;}
<P>{opr}+  { BEGIN R; }
<P>{opr}+$ { BEGIN R; }
<Q>{opnd}  {a1[i++]=(char*)strdup(yytext); BEGIN P; }
%%
main()
{
   printf("Enter an Arithematic Expression:");
   yylex();
   if(flag==1)
    {
        printf("Invalid Expression");
        exit(0);
    }
   printf("Valid Expression\n");
   printf("Operands are\n");
   for(temp=0;temp<i;temp++)
      printf("%s\t",a1[temp]);
   printf("\noperations are\n");
   for(temp=0;temp<j;temp++)
      printf("%s\t",a2[temp]);
}


/*root@kali:~/Desktop/5ss/ssos/lexandyacc# ./a.out 
Enter an Arithematic Expression:aa-+
Invalid Expression root@kali:~/Desktop/5ss/ssos/lexandyacc# ./a.out 
Enter an Arithematic Expression:a+b*c

Valid Expression
Operands are
a	b	c	
operations are
+	*	root@kali:~/Desktop/5ss/ssos/lexandyacc# 

*/
