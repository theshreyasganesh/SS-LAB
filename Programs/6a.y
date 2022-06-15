%{#include <stdio.h>%}

%token NUM ID
%left '+''-'
%left '/''*'

%%
expr:e {printf("Valid expression\n"); return 0;}
e:e'+'e 
| e'-'e 
| e'*'e 
| e'/'e 
| '('e')' 
| NUM 
| ID
%%
int main()
{
	printf("\nEnter an arithmetic expression\n");
	yyparse();
	return 0;
}

int yyerror()
{
	printf("\nInvalid expression\n");
	return 0;
}

