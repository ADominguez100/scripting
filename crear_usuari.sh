#!/usr/bin/env bash
clear # Netejem terminal abans de demanar res
# La comanda read ens permet deixar a l'usuari introduir variables mentre s'executa l'script
# L'ordre -p permet alhora establir la variable a la mateixa línia que s'escriu la sentència (com si es fes un echo i després el read)
# En aquest cas fem una cosa molt similar per a les tres variables, demanant en cadascuna el necessari
read -p "Introdueix el teu nom d'usuari: " nom_usuari
read -p "Introdueix un comentari adicional, o el teu nom complet: " nom_complet
read -p "Introdueix el nom del grup on es vol afegir aquest usuari: " grup

# Condicionem que qualsevol de les tres variables no estiguin buides, si alguna ho està s'enviarà un missatge d'error i finalitzarà l'script
if [ "$nom_usuari" = ""  ] || [ "$nom_complet" = "" ] || [ "$grup" = "" ]; then
    echo "Les variables no poden quedar buides. Siusplau torna a executar l'script"
    exit 1
fi

# Creem el grup (si no existeix, si existeix almenys no enviarà missatge d'error amb -f)
sudo groupadd -f "$grup"
# Afegim l'usuari amb les variables introduides prèviament
sudo useradd -c "$nom_complet" -G "$grup" "$nom_usuari"
# Enviem un missatge final d'èxit
echo "L'usuari $nom_usuari s'ha creat correctament dins del grup $grup."