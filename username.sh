#!/bin/bash

username=$1

if [[ $2 == "1" ]]; then
	touch temp_res
	egrep --no-group-separator -A 2 -B 5 "\b$username" alldata > temp_res
else
	touch middle_file
	egrep --no-group-separator -A 2 -B 5 "\b$username" temp_res > middle_file
	mv middle_file temp_res
fi

bash display_results.sh