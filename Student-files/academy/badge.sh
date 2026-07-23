#!/bin/bash


BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


source "$BASE_DIR/utils.sh"


title


echo "=============================="
echo "          BADGES"
echo "=============================="

echo


if [ ! -f "$BASE_DIR/database/badges.csv" ]; then

error "Badge database missing"

pause
exit

fi


cat "$BASE_DIR/database/badges.csv"


echo

pause