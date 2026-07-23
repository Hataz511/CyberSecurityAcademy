#!/bin/bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$BASE_DIR/utils.sh"


title

echo "=============================="
echo "        MISSIONS"
echo "=============================="

echo


if [ ! -f "$BASE_DIR/database/missions.csv" ]; then

    error "Mission database not found"
    pause
    exit

fi


echo "Available Missions:"
echo

cat "$BASE_DIR/database/missions.csv"


echo

pause