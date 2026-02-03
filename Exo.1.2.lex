%{
#include <string.h>
int nbLigne;
char * prenomNom;
%}
%%
"Dossier"
[0-9]{8}
[ \t]+
[\n]
[A-Z]+"-"*[A-Z]+"/"[A-Z]+"-"*[A-Z]+ {prenomNom=(char *)malloc(strlen(yytext)*sizeof(char));strcpy(prenomNom,yytext);}
"T"[0-9]{2,6} {nbLigne++;}
[A-Z]+"-"*([0-9]+|[A-Z]+)"-"*[A-Z]+
[0-3][0-9]"/"[0-9]*("/"[0-9]*)*
[0-9]{2}":"[0-9]{2}
[1-9][0-9]{0,1}
"places"
%%
int main(){
    nbLigne=0;
    yylex();
    printf("%s a acheté des places de %d concerts.\n",prenomNom,nbLigne);
}
