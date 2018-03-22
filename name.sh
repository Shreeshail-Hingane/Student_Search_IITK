#!/bin/bash

name=$1

count=$(echo $name | wc -w)
split_name=( $name )

name=$( echo ${split_name[0]} | tr '[:lower:]' '[:upper:]' ) #conversion to UPPERCASE

surname=""
if [[ $count == "2" ]]; then
	surname=$( echo ${split_name[1]} | tr '[:lower:]' '[:upper:]' )
fi

if [[ $2 == "1" ]]; then
	touch temp_res
	grep --no-group-separator -A 6 -B 1 "$name" alldata > temp_res
	
	if [[ $count == "2" ]]; then
		touch middle_file
		grep --no-group-separator -A 6 -B 1 "$surname" temp_res > middle_file
		mv middle_file temp_res
	fi

else
	touch middle_file
	grep --no-group-separator -A 6 -B 1 "$name" temp_res > middle_file
	mv middle_file temp_res
	
	if [[ $count == "2" ]]; then
		touch middle_file
		grep --no-group-separator -A 6 -B 1 "$surname" temp_res > middle_file
		mv middle_file temp_res
	fi
fi

bash display_results.sh