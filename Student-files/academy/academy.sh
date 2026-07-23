#!/bin/bash

############################################################
# Cyber Security Academy
# Main Application
############################################################


BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# Load utilities

source "$BASE_DIR/utils.sh"


# Load modules

source "$BASE_DIR/profile.sh"
source "$BASE_DIR/dashboard.sh"
source "$BASE_DIR/mission.sh"
source "$BASE_DIR/progress.sh"
source "$BASE_DIR/xp.sh"
source "$BASE_DIR/badge.sh"



############################################################
# Check Dependencies
############################################################


check_dependencies(){

    command -v openssl >/dev/null 2>&1


    if [ $? -ne 0 ]; then

        error "OpenSSL is missing"

        exit 1

    fi

}



############################################################
# Main Menu
############################################################


main_menu(){


while true

do


title


echo -e "${CYAN}${BOLD}"
echo "Cyber Security Academy"
echo -e "${RESET}"


print_line


echo

echo "1) Dashboard"

echo "2) My Profile"

echo "3) Missions"

echo "4) Progress"

echo "5) XP & Rank"

echo "6) Badges"

echo "0) Exit"


echo

read -p "Select option: " choice



case $choice in



1)

show_dashboard

;;



2)

show_profile

;;



3)

show_missions

;;



4)

show_progress

;;



5)

show_xp

;;



6)

show_badges

;;



0)

success "Exiting Academy"

exit 0

;;



*)

error "Invalid option"

sleep 1

;;


esac



done


}



############################################################
# Start Application
############################################################


check_dependencies


main_menu