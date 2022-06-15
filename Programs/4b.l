%{
 #include<stdio.h>
%}

ws [ \t\n]

%%
{ws}"and"{ws} | {ws}"AND"{ws} | 
{ws}"or"{ws} | {ws}"OR"{ws} | 
{ws}"but"{ws} | {ws}"BUT"{ws} | 
{ws}"because"{ws} | 
{ws}"nevertheless"{ws} {printf("compound sentence\n"); exit(0);}
.     ;
\n    return 0;
%%

int yywrap() {}

int main()
{
	printf("enter a sentence:");
	yylex();
	printf("simple sentence");
	exit(0);
}
