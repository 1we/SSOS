%token NUM
%left '+' '-'
%left '*' '/'
%%
S:E		{ 	printf("%d",$$); 	}
  E:E'+'E  	{ 	$$=$1+$3; 		}
   |E'-'E  	{ 	$$=$1-$3; 		}
   |E'*'E  	{ 	$$=$1*$3; 		}
   |E'/'E  	{ 
               		if($3==0)
               		{ 
                  		printf("Divide by zero erroe\n");
                  		exit(0);
                	}
                	$$=$1/$3;
            	}
   |'('E')' 	{ 	$$=$2; 			}
   |NUM     	{ 	$$=$1; 			}
   ;
%%

main()
{
	printf("Enter an arthimetic expreesion to be evaluated:\n");
	yyparse();
}
yyerror() 
{
	printf("Invalid Expression\n");
	exit(0);
} 

                
/*./a.out 
Enter an arthimetic expreesion to be evaluated:
10+100

110root@kali:~/Desktop/5ss/ssos/lexandyacc/yacc# 
*/
