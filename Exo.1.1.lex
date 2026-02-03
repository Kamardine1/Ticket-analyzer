%%
"Dossier" {printf("dossier");}
[0-9]{8} {printf("codeDossier");}
[ \t]+ {printf(" ");}
[\n] {printf(" RC%s",yytext);}
[A-Z]+"-"*[A-Z]+"/"[A-Z]+"-"*[A-Z]+ {printf("prenomNom");}
"T"[0-9]{2,6} {printf("codeConcert");}
[A-Z]+"-"*([0-9]+|[A-Z]+)"-"*[A-Z]+ {printf("nomConcert");}
[0-3][0-9]"/"[0-9]*("/"[0-9]*)* {printf("date");}
[0-9]{2}":"[0-9]{2} {printf("heure");}
[1-9][0-9]{0,1} {printf("nb");}
"places" {printf("places");}
<<EOF>> {printf("FinFichier\n");return 0;}
