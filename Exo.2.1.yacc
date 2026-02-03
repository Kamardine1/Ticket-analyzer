%{
#include<stdio.h>
void yyerror(char *);
int yylex();
%}
%token dossier codeDossier RC prenomNom codeConcert nomConcert date heure nb places FinFichier espace
%start S
%%
S : dossier espace codeDossier RC prenomNom RC S1 FinFichier {printf("La commande est valide\n");YYACCEPT;}
;
S1 : codeConcert espace nomConcert espace date espace heure espace nb espace places RC | codeConcert espace nomConcert espace date espace heure espace nb espace places RC S1
%%
#include "lex.yy.c"
int main(){
yyparse();
}