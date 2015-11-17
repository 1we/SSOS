%{
#include<stdio.h>
int comment1=0,comment2=0;
%}
%%
"//".*     {    comment1++;    }
"/*".*[\n]*.*"*/"  {   comment2++;    }
.          {   fprintf(yyout,yytext);   }
%%
main(int argc,char *argv[])
{
FILE *f1,*f2;
f1=fopen(argv[1],"r");
f2=fopen(argv[2],"w");
yyin=f1;
yyout=f2;
yylex();
printf("number of comment lines 1(//)=%d \nnumber of comment lines 2 (/*)=%d",comment1,comment2);
/* OUTPUT : base on samplec.c 
number of comment lines 1(//)=3 
number of comment lines 2 (/*)=1 */
}
