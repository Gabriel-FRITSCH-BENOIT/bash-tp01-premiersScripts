#!/bin/bash

################################################################################
# Script : devine_nombre.sh
# Description : Jeu de devinette - trouver un nombre aléatoire
# Usage : ./devine_nombre.sh <min> <max> [difficile]
# Auteur : [Votre nom]
# Date : [Date]
################################################################################

# TODO: Vérifier que 2 paramètres sont fournis

if [ $# -lt 2 ]; then
    echo "usage: $0 param1 param2"
    exit 1
fi

min=$1
max=$2
niveau=$3


echo "premier parametre : $1"
echo "deuxieme parametre : $2"

# TODO: Valider que les paramètres sont des nombres

if ! [[ "$1" =~ ^-?[0-9]+$ ]]; then
    echo "Erreur : le premier paramètre doit être un nombre."
    exit 1
fi

if ! [[ "$2" =~ ^-?[0-9]+$ ]]; then
    echo "Erreur : le deuxième paramètre doit être un nombre."
    exit 1
fi

# TODO: Valider que min < max


if [[ $min -ge $max ]]; then
    echo "Erreur : la valeur min doit être strictement inférieure à la valeur max"
    exit 1
fi

# TODO: Générer un nombre aléatoire entre min et max
nombre=$(( $RANDOM % (max - min + 1) + min ))

# TODO: Initialiser le nombre d'essais (5 par défaut, 3 en mode difficile)

essai=5
echo "Jeu : Devinez le nombre entre $min et $max"
echo "Nombre d'essais : $essai"

# TODO: Boucle de jeu avec 5 essais maximum

i=0

while [ $i -lt $essai ]; do
    echo "Nombre d'essai restants : $essai"
    read nombrejoueur
    if [[ $nombrejoueur -lt $nombre ]]; then
	    echo "trop petit"
        essai=$((essai - 1))
    elif [[ $nombrejoueur -gt $nombre ]]; then
	    echo "trop grand"
        essai=$((essai - 1))
    elif [[ $nombrejoueur -eq $nombre ]]; then
        echo " Bravo vous avez trouve !!!"
        break
    fi
done

# TODO: Afficher le message de fin (victoire ou défaite)

if [[ $essai -eq 0 ]]; then
    echo "Dommage, vous avez perdu ! Le nombre était : $nombre"
fi

