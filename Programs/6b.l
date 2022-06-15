%{
#include "y.tab.h"
%}

%%
[a-z] return L;
[0-9] return D;
\n {return NL;}
%%

int yywrap() { }


/*
Program to recognize a valid variable, which starts with a letter, followed by
any number of letters or digits. 
aa; a11; a22; a2a; 2a;
*/
