#!/usr/bin/env bash

# Demanem a l'usuari el fitxer o directori que vulgui
read -p "Introdueix la ruta del fitxer o directori: " FITXER

# Validem amb 'if' si:
# - El fitxer o directori existeix al sistema
# - Si es tracta d'un fitxer o d'un directori
# - Si l'usuari té permisos de lectura
if [ -z "$FITXER" ]; then
    # En cas que l'usuari no hagi introduït res, mostrem un missatge d'error i finalitzem script
    echo "No has introduït cap ruta."
    exit 1
else
    echo "Comprovant la validesa de la ruta..."
    # Comprovem si el fitxer o directori existeix
    if [ -e "$FITXER" ]; then
        echo "El fitxer o directori existeix. Comprovant tipus i permisos..."
        # Comprovem si és un fitxer o un directori
        if [ -f "$FITXER" ]; then
            echo "És un fitxer."
        elif [ -d "$FITXER" ]; then
            echo "És un directori."
        fi
        # Comprovem si l'usuari té permisos de lectura
        if [ -r "$FITXER" ]; then
            echo "Tens permisos per llegir aquest element."
        else
            echo "No tens permisos per llegir aquest element."
        fi
    else
        echo "Error: La ruta $FITXER no es troba al sistema."
    fi
fi