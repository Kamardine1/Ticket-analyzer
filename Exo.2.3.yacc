%{
#include<stdio.h>
void yyerror(char *);
int yylex();
%}
%token dossier codeDossier RC prenomNom codeConcert nomConcert date heure IdPlace FinFichier espace
%start S
%%
S : dossier espace codeDossier RC prenomNom RC S1 FinFichier {printf("La commande est valide\n");YYACCEPT;}
;
S1 : codeConcert espace nomConcert espace date espace heure espace S2 RC| codeConcert espace nomConcert espace date espace heure espace S2 RC S1
;
S2 : IdPlace | IdPlace espace S2
%%
#include "lex.yy.c"
int main(){
yyparse();
}