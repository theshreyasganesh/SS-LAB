%{
   #include<stdio.h>
   int wc=0, cc=0, bc=0, lc=0;
   char infile[25];
%}

word [a-zA-Z0-9]+
eol  [\n]

%%
{word} {wc++; cc+=yyleng;}
{eol}  {cc++; lc++;}
[" "]  {cc++; bc++;}
[\t]   {bc+=8; cc++;}
.      {cc++;}
%%

int yywrap() {}
int main()
{
	printf("Enter the name of the input file:");
	scanf("%s", infile);
	yyin = fopen(infile, "r");
	yylex();
	printf("In the input file,\nthe number of words are: %d,\nthe number of characters are: %d,\nthe number of lines are: %d,\nthe number of spaces are: %d", wc, cc, lc, bc);
	return 0;
	fclose(yyin);
}
