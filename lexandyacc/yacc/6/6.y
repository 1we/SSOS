%token A B
%%
 exp:A B;
%%
main()
{ 
 printf("Enter a string with a and b\n");
 yyparse();
 printf("Valid\n");
}
yyerror()
{
 printf("Invalid\n");
 exit(0);
}  
