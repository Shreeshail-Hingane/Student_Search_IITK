#!/bin/bash


hall=$1

if [[ $2 == "1" ]]; then
	touch temp_res
	if [[ $hall == "13" ]]; then
		egrep --no-group-separator -A 3 -B 4 "Hall : DAY" alldata > temp_res
	else
		egrep --no-group-separator -A 3 -B 4 "HALL${hall}," alldata > temp_res
	fi
else
	touch middle_file
	if [[ $hall == "13" ]]; then
		egrep --no-group-separator -A 3 -B 4 "Hall : DAY" temp_res > middle_file
	else
		egrep --no-group-separator -A 3 -B 4 "HALL${hall}," temp_res > middle_file
	fi
	mv middle_file temp_res
fi

bash display_results.sh