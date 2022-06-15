%{
    #include<stdio.h>
%}

%token L D  NL

%%
var: L   E NL   {printf("Valid Variable\n"); return 0;}
E: E L
| E D
| ;
%%

int yyerror()
{
	printf("\nInvalid Variable\n");
	return 0;
}

int main()
{
	printf("\nEnter a variable: ");
	yyparse();
}

/* 
var-> L E NL   --> L  E L --> L E L L --> L E D L L --> a E a --> a E b a --> a E 1 b a --> aa; aba ; a1ba
E-> E L 
E-> E D
| ;
var-> L E NL
E-> E L  --> L E D L L --> L E L D L
E->E D
LLLDDLLDD
aaaaa/345667 */
