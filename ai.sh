#!/usr/bin/env bash

# El llenguatge Bash utilitza operadors especials en cas de ser comparacions numèriques per exemple
# -le indica la condicio 'menor o igual que'.
if [ "$#" -eq 0 ]; then
    echo "No s'ha especificat cap paquet a instal·lar. Siusplau afegeix almenys 1 argument"
    echo "Ús habitual: ./ai.sh paquet1 paquet2..."
    exit 1 # exit 1 s'utilitza per finalitzar de cop l'script i que no segueixi executant.
fi

sudo apt update
sudo apt upgrade -y
sudo apt install $* -y # Segons la documentació passada l'ordre $* concatena tots els arguments en una sola cadena de text.