#!/bin/bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$BASE_DIR/utils.sh"


add_xp(){

    AMOUNT=$1


    load_student


    NEW_XP=$((XP + AMOUNT))


    sed -i "s/$XP/$NEW_XP/" "$BASE_DIR/database/students.csv"


    success "Added $AMOUNT XP"

}


show_xp(){

    load_student


    echo
    echo "Current XP: $XP"
    echo

}


case "$1" in


add)

add_xp "$2"

;;


show)

show_xp

;;


*)

echo "Usage:"
echo "./xp.sh add 50"
echo "./xp.sh show"

;;

esac