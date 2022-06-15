%{
   #include<stdio.h>
   #include<stdlib.h>
%}

%token A B NL

%% 
stmt: A A A A A A A A A A S B NL  {printf("valid string\n"); return 0;}
;
S: S A
|
;
%%

int yyerror(char *msg)
{
  printf("invalid string\n");
  exit(0);
}

int main()
{
  printf("enter the string: ");
  yyparse();
  return 0;
}
