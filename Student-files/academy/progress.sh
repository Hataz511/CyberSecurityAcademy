#!/bin/bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$BASE_DIR/utils.sh"


title


echo "=============================="
echo "        PROGRESS"
echo "=============================="

echo


load_student


PROGRESS=$(progress_percentage)


echo "Student : $NAME $SURNAME"
echo

echo "Current Level:"
echo "$LEVEL"

echo

echo "XP:"
echo "$XP"

echo

echo "Rank:"
student_rank

echo

echo "Mission Progress:"
echo "$PROGRESS%"

echo


if [ "$PROGRESS" -ge 80 ]; then

    echo "[##########] Almost Complete"

elif [ "$PROGRESS" -ge 50 ]; then

    echo "[######----] Half Way"

else

    echo "[##--------] Starting"

fi


echo

pause