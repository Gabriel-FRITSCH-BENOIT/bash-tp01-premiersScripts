# Réponses aux questions du TP01 - Premiers scripts Bash

**Nom :** [FRITSCH BENOIT Gabriel]
**Classe :** [2Ciel-IR]
**Date :** [25/09/26]

---

## Exo 1 : Table de multiplication

### Question 1 : Validation d'entrée
**Comment vérifier que l'utilisateur a bien entré un nombre ?**

Votre réponse : Nous pouvons utiliser un if pour valider l'entréée d'un nombre par l'utilisateur.
```
[Expliquez ici votre méthode de validation]
```

### Question 2 : Boucle
**Quelle structure de boucle est la plus appropriée (for, while) ? Pourquoi ?**

Votre réponse : La structure de boucle la plus appropriée est la boucle for car elle permet de faire fonctionner le programme car on connaît à l'avance le nombre de tour (1 à 10).
```
[Expliquez votre choix de boucle]
```

### Question 3 : Extension
**Comment pourriez-vous permettre à l'utilisateur de choisir jusqu'à quel multiplicateur aller ?**

Votre réponse : Grâce à la valeur de i dans la boucle for. Mais on ne peut dépasser la taille de i.
```
[Décrivez votre approche]
```

---

## Exo 2 : Jeu de devinette

### Question 1 : Gestion des paramètres
**Que se passe-t-il si l'utilisateur ne fournit pas exactement 2 paramètres ? Comment gérer ce cas ?**

Votre réponse :
```
if [ $# -lt 2 ]; then
    echo "usage: $0 param1 param2"
    exit 1
fi

On effectue une condition qui vérifie la présence des deux paramètres.
```

### Question 2 : Validation
**Comment vérifier que le premier paramètre est bien inférieur au second ?**

Votre réponse :
```
if [[ $min -ge $max ]]; then
    echo "Erreur : la valeur min doit être strictement inférieure à la valeur max"
    exit 1
fi

On effectue une condition pour vérifier si le premier paramètre est strictement inférieur au second.
```

### Question 3 : Compteur
**Expliquez comment vous gérez le décompte des essais restants.**

Votre réponse :
```
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

if [[ $essai -eq 0 ]]; then
    echo "Dommage, vous avez perdu ! Le nombre était : $nombre"
fi

On effectue des conditions pour retirer 1 à chaque mauvaise réponse, puis dès que le paramètre essai est égal à zéro, on effectue un break qui arrête le programme.
```

### Question 4 : Comparaisons
**Quelle syntaxe utilisez-vous pour comparer des nombres en Bash ?**

Votre réponse :
```
if [ $# -lt 2 ]; then
    echo "usage: $0 param1 param2"
    exit 1
fi
```

---

## Exo 3 : Traitement de fichiers

### Question 1 : Paramètres
**Comment vérifier que le dossier passé en paramètre existe et est bien un répertoire ?**

Votre réponse :
```
[Expliquez vos tests de validation]
```

### Question 2 : Sécurité
**Que se passe-t-il si deux fichiers ont le même nom après transformation ? Comment gérer ce cas ?**

Votre réponse :
```
[Décrivez le problème et votre solution]
```

### Question 3 : Extension
**Comment pourriez-vous permettre à l'utilisateur de choisir l'extension à traiter ?**

Votre réponse :
```
[Proposez une solution]
```

### Question 4 : Variables
**Expliquez l'intérêt d'utiliser des variables pour stocker les compteurs.**

Votre réponse :
```
[Argumentez l'utilisation de variables]
```

---

## Notes et remarques

[Ajoutez ici vos remarques personnelles, difficultés rencontrées, améliorations possibles, etc.]
