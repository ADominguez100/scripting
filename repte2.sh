#!/bin/bash
if [ "$#" -ne 3 ]; then
    echo "Aquest script necessita tres arguments per funcionar correctament."
    # Quan es vol que l'script finalitzi i deixi de realitzar comprovacions s'ha d'afegir la següent línia:
    exit 1
fi

if [ "$2" = "/" ] && [ "$3" = 0 ]; then
    echo "El divisor no pot ser 0, no és una operació vàlida."
    exit 1
fi

if [ "$2" = "+" ]; then
    echo $(( "$1" + "$3" ))
elif [ "$2" = "-" ]; then
    echo $(( "$1" - "$3" ))
elif [ "$2" = "*" ]; then
    echo $(( "$1" * "$3" ))
elif [ "$2" = "/" ]; then
    echo $(( "$1" / "$3" ))
else
    echo "La operació no s'ha pogut realitzar. Revisa que els paràmetres [$1] i [$3] siguin números i que l'operador sigui un de vàlid (+,-,*,/): [$2]"
fi