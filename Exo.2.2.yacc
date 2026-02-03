%{
#include<stdio.h>
void yyerror(char *);
int yylex();
int totalPlaces=0;   
%}
%token dossier codeDossier tabulation RC prenomNom codeConcert nomConcert date heure nb places FinFichier espace
%start S
%%
S : dossier espace codeDossier RC prenomNom RC S1 FinFichier {printf("Le dossier %d concerne %d places\n",$3,totalPlaces);YYACCEPT;}
;
S1 : codeConcert espace nomConcert espace date espace heure espace nb espace places RC {totalPlaces = $9 + totalPlaces;}
| codeConcert espace nomConcert espace date espace heure espace nb espace places RC S1 {totalPlaces = $9 + totalPlaces;}
%%
#include "lex.yy.c"
int main(){
    yyparse();
}