%{
	#include "y.tab.h"
	#include<stdlib.h>
%}

%%
[a-zA-Z]+	{ 	return LETTER;		}
[0-9]*          {       return DIGIT;   	}
.        	{       return yytext[0]; 	}
%%       
