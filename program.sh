#!/bin/bash

program_list=( " " "BTech" "BS" "MTech" "MT(Dual)" "MS-Research" "MSc" "PhD" "PhD(Dual)" "MBA" "BS-MS" "MDes" "SURGE" )
program_index=$1

program=${program_list[program_index]}


if [[ $2 == "1" ]]; then
	touch temp_res
	grep --no-group-separator -A 4 -B 3 "${program}" alldata > temp_res
else
	touch middle_file
	grep --no-group-separator -A 4 -B 3 "${program}" temp_res > middle_file
	mv middle_file temp_res
fi

bash display_results.sh