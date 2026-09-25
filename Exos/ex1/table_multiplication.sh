#!/bin/bash

################################################################################
# Script : table_multiplication.sh
# Description : Affiche la table de multiplication d'un nombre
# Auteur : [Votre nom]
# Date : [Date]
################################################################################

# TODO: Demander un nombre à l'utilisateur

echo "Choisissez un nombre :" 
read nombre

# TODO: Valider que l'entrée est bien un nombre

if [[ "$nombre" =~ ^-?[0-9]+$ ]]; then
    echo "c'est un nombre entier"
else
    echo "Ce n'est pas un nombre"
fi

# TODO: Afficher la table de multiplication de 1 à 10

echo "Table de multiplication de" $nombre ":"
for ((i=1; i<=10; i++))
do 
    echo "$nombre x $i = $((nombre * i))"
done