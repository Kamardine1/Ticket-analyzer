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
(P[0-9]{1,3})+ {return(IdPlace);}
<<EOF>> {return(FinFichier);return 0;}
