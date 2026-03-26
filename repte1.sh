#!/bin/bash
if [ "$1" ]; then
    echo "Hola, $1!"
else
    echo "Aquest script requereix d'un argument. Exemple: ./say_hi.sh 'Paco'"
fi