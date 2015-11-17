%token A B
%%
 exp:A
    |A B
%%
main()
   {
	printf("Enter a string with a's snd b's\n");
	yyparse();
	printf("Valid String\n");
   }
yyerror()
  {
	printf("Invalid String\n");
  	exit(0);
  }
