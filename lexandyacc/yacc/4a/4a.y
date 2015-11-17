%token ID
%left '+''-''*''/'
%%
      E:E'+'E
       |E'-'E
       |E'*'E
       |E'/'E
       |ID;
%%

main()
{
 	 printf("Enter an Arthimetic Expression:\n");
       	 yyparse();
 	 printf("Valid Expression\n");
} 
       
yyerror()
{
  printf("Invalid Expression\n");
  exit(0);
}  
