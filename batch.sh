#!/bin/bash

batch_list=( " " "17" "16" "15" "14" "13" "12" "11" )
batch_index=$1
batch=${batch_list[batch_index]}

if [[ $2 == "1" ]]; then
	touch temp_res
	grep --no-group-separator -A 7  "Roll : ${batch}" alldata > temp_res
else
	touch middle_file
	grep --no-group-separator -A 7  "Roll : ${batch}" temp_res > middle_file
	mv middle_file temp_res
fi

bash display_results.sh