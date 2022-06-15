%{
#include "y.tab.h"
%}
%%
[0-9]+(\.[0-9]+)?       {return NUM;}      /*incase of decimals too*/
[a-zA-Z][_a-zA-Z0-9]*   {return ID;}
[\t]			;
\n			return 0;
.                       return yytext[0];
%%

int yywrap() { }

