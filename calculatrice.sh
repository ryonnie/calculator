#!/bin/bash
echo "*******Ryonnie's Calculator *******"
while true; do

    echo -e "
    1) Addition
    2) Soustraction
    3) Division
    4) Puissance
    5) Multiplication
    6) Reste de la division\n"

    read -p '*)Veuillez saisir le 1er Nombre : ' nb1
    sleep 1
    read -p '*)Veuillez saisir le 2eme Nombre : ' nb2
    sleep 1
    read -p '*)Choisir option correspondante (1-6) ? : ' op
    if [[ -z "$nb1" || -z "$nb2" ]]; then
        echo "Veuillez saisir 2 nombres valides !"
        continue
    fi

    case $op in
        1)
            resultat=$(($nb1 + $nb2))
            ;;
        2)
            resultat=$(($nb1 - $nb2))
            ;;
        3)
            if [[ $nb2 -eq 0 ]]; then
                echo "Erreur : Division par zéro !"
                continue
            fi
            resultat=$(($nb1 / $nb2))
            ;;
        4)
            resultat=$(($nb1 ** $nb2))
            ;;
        5)
            resultat=$(($nb1 * $nb2))
            ;;
        6)
            if [[ $nb2 -eq 0 ]]; then
                echo "Erreur : Division par zéro !"
                continue
            fi
            resultat=$(($nb1 % $nb2))
            ;;
        *)
            echo "Option invalide, veuillez choisir une option entre 1 et 6."
            continue
            ;;
    esac

    sleep 2
    echo "Loading 1%..."
    sleep 3
    echo "Loading 30%..."
    sleep 3
    echo "Loading 60%..."
    sleep 3
    echo "Loading 94%..."
    sleep 3
    echo "Loading 100%..."
    sleep 3
	echo "Loading Complete !"
    echo "Le Résultat : $resultat"
    sleep 1
    read -p 'Voulez-vous continuer ? (y/n) : ' choix
    if [[ "$choix" == "y" ]]; then
        continue
    else
        echo "Merci d'avoir utilisé mon programme, à bientôt !"
        break
    fi
done