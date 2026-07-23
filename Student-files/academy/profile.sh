#!/bin/bash

############################################################
# Cyber Security Academy
# Student Profile Module
############################################################


# Load utilities

source "$BASE_DIR/utils.sh"



show_profile(){


load_student


title


echo -e "${CYAN}${BOLD}"
echo "              STUDENT PROFILE"
echo -e "${RESET}"


print_line


echo


echo -e "${YELLOW}Student ID:${RESET}        $ID"

echo -e "${YELLOW}Name:${RESET}              $NAME"

echo -e "${YELLOW}Surname:${RESET}           $SURNAME"

echo -e "${YELLOW}Username:${RESET}          $USER"

echo -e "${YELLOW}Level:${RESET}             $LEVEL"

echo -e "${YELLOW}Experience XP:${RESET}     $XP"

echo -e "${YELLOW}Current Stage:${RESET}     $STAGE"


echo


echo -e "${GREEN}Rank:${RESET} $(student_rank)"


echo


pause


}