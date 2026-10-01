#!/bin/bash

################################################################################
# Script : renommer_fichiers.sh
# Description : Renomme les fichiers .txt d'un dossier
#               - Remplace les espaces par des underscores
#               - Convertit en minuscules
#               - Ajoute un préfixe avec la date
# Usage : ./renommer_fichiers.sh <dossier> [--dry-run]
# Auteur : [Votre nom]
# Date : [Date]
################################################################################

# TODO: Vérifier qu'un dossier est fourni en paramètre
if [ $# -lt 1 ]; then
	echo "c'est pas bon"
	exit 1
fi
# TODO: Vérifier que le dossier existe
if [ -d "$1" ]; then
	echo "le dossier existe"
else
	echo "le dossier existe pas"
	exit 1
fi

# TODO: Récupérer la date du jour au format AAAAMMJJ
Date=$(date "+%Y%m%d")

# TODO: Initialiser les compteurs
COMPTEUR=0

# TODO: Boucler sur tous les fichiers .txt du dossier
for FICHIER in "$1"/*.txt; do
	NOM=$(basename "$FICHIER" .txt)

done

# TODO: Pour chaque fichier :
#       - Extraire le nom sans extension
#       - Remplacer les espaces par des underscores
#       - Convertir en minuscules
#       - Créer le nouveau nom avec le préfixe


# TODO: Afficher le résumé des opérations

