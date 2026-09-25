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

echo "premier parametre : $1"
echo "deuxieme parametre : $2"

# TODO: Valider que les paramètres sont des nombres

if [[ "$1" =~ ^-?[0-9]+$ ]]; then

else
    exit 1
fi

if [[ "$2" =~ ^-?[0-9]+$ ]]; then

else

    exit 1
fi

# TODO: Valider que min < max
min=$1
max=$2

if [[ $min -gt $max ]]; then
    echo "Erreur : la valeur min doit être inférieure à la valeur max"
    exit 1
fi

# TODO: Générer un nombre aléatoire entre min et max
nombre=$(( $RANDOM % (max - min + 1) + min ))

# TODO: Initialiser le nombre d'essais (5 par défaut, 3 en mode difficile)
echo "Jeu : Devinez le nombre entre $min et $max <br>"

# TODO: Boucle de jeu avec 5 essais maximum


# TODO: Afficher le message de fin (victoire ou défaite)

