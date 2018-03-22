#!/bin/bash

dept_list=("    " "AEROSPACE ENGG" "BIOL.SCI. AND BIO.ENGG" "CHEMICAL ENGG" "CHEMISTRY" "COMPUTER SCIENCE & ENGG" 
	"CIVIL ENGG" "EARTH SCIENCES" "ECONOMICS" "ELECTRICAL ENGG" "MATERIALS SCIENCE & ENGG" 
	"MATHEMATICS" "MECHANICAL ENGINEERING" "PHYSICS" )

dept_index=$1
dept=${dept_list[dept_index]}

if [[ $2 == "1" ]]; then
	touch temp_res
	grep --no-group-separator -A 5 -B 2 "${dept}" alldata > temp_res
else
	touch middle_file
	grep --no-group-separator -A 5 -B 2 "${dept}" temp_res > middle_file
	mv middle_file temp_res
fi

bash display_results.sh