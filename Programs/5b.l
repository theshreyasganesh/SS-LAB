%{
#include "y.tab.h"
%}

%%
[0-9]+ {yylval = atoi(yytext); return NUM;}
[\t]   ;
\n     return 0;
.      return yytext[0];  /*return first character*/
%%

int yywrap() { }


/* Generate the tokens --> input to the yacc file
a+b; 3+3=6
Recognized as character only. 
3+3 --> '3''+''3'
3+3
yytext--> contains the input entered
abc -->'a'*/
