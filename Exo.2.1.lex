%%
"Dossier" {return(dossier);}
[0-9]{8} {return(codeDossier);}
[ \t]+ {return(espace);}
[\n] {return(RC);}
[A-Z]+"-"*[A-Z]+"/"[A-Z]+"-"*[A-Z]+ {return(prenomNom);}
"T"[0-9]{2,6} {return(codeConcert);}
[A-Z]+"-"*([0-9]+|[A-Z]+)"-"*[A-Z]+ {return(nomConcert);}
[0-3][0-9]"/"[0-9]*("/"[0-9]*)* {return(date);}
[0-9]{2}":"[0-9]{2} {return(heure);}
[1-9][0-9]{0,1} {return(nb);}
"places" {return(places);}
<<EOF>> {return(FinFichier);return 0;}
