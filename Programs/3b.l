
%{
  #include<stdio.h>
  int count = 0;
%}

%x cmnt

%%
"/*" {BEGIN cmnt;}
<cmnt>. ;
<cmnt>"*/" {BEGIN 0; count++;}
%%

int yywrap() {}
int main(int argc, char *argv[])
{
	if(argc != 3)
	{
		printf("Usage: %s,  <src_file>,  <dest_file>\n", argv[0]);
		return 0;
	}
	yyin = fopen(argv[1], "r");
	yyout = fopen(argv[1], "w");
	yylex();
	printf("The number of multiline comments are: %d\n", count);
	return 0;
}
