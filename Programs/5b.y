%{#include <stdio.h>%}

%token NUM
%left '+''-'  /*operator precedence in case of same precedence*/
%left '/''*'

%%
expr:e  {printf("Valid expression\n"); printf("Result : %d\n",$1); return 0;}
e:e'+'e {$$=$1+$3;}
| e'-'e {$$=$1-$3;}
| e'*'e {$$=$1*$3;}
| e'/'e {$$=$1/$3;}
| '('e')' {$$=$2;}
| NUM {$$=$1;}
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

/* yacc --> y.tab.h; y.tab.c

3+3-1

input to yacc --> token; grammar
3+3=6

S->E   {Valid Expression; value=$1
E->E+E {$$=$1+$3;
E->E-E {$$=$1-$3;
E->E*E {$$=$1*$3;
E->E/E {$$=$1/$3;
E->(E) {$$=$2;
E->e   {$$=$1;

expr:e {valid, $1
e:e'+'e {$$=$1+$3;
|e'-'e  {$$=$1-$3;
|e'*'e {$$=$1*$3;
|e'/'e {$$=$1/$3;
|'('e')' {$$=$2;
|NUM {$$=$1;
3+3=6*/
