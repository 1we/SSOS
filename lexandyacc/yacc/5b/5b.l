%{
#include"y.tab.h"
#include<stdio.h>
%}
%%
[a]+  { return A; }
[b]*  { return B; }
.     { return yytext[0]; }
[ ]+  { return A;  }
%%
