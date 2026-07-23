#!/bin/bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$BASE_DIR/utils.sh"


title

load_student


echo "=============================="
echo "       STUDENT DASHBOARD"
echo "=============================="

echo

echo "Student : $NAME $SURNAME"
echo "Level   : $LEVEL"
echo "XP      : $XP"
echo "Rank    : $(student_rank)"

echo

echo "Missions:"
echo "Completed : $(completed_missions)"
echo "Total     : $(total_missions)"

echo

echo "Progress:"
echo "$(progress_percentage)% completed"

echo

pause