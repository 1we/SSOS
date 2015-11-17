%{
       #include "y.tab.h"
%}
%%
a{10,1879}  { return A; }
[b]      { return B; }
.        { return yytext[0]; }
%%
