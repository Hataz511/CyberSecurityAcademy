#!/bin/bash

source ./utils.sh

title

banner

loading "Initializing Academy"

ID=$(random_student_id)
FLAG=$(random_flag)

success "Student ID : $ID"

success "Mission Flag : $FLAG"

echo "Academy Folder : $(academy_folder)"
echo "Lab Folder     : $(lab_folder)"
echo "Current Date   : $(current_date)"
echo "Current Time   : $(current_time)"

pause