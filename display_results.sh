#!/bin/bash

line_count=$(cat temp_res | wc -l)
res_count=$((line_count / 8))

if [[ $res_count == 0 ]]; then
	rm temp_res
	echo "No matching results found"
	read -p "Search using different parameters(Y) or Quit(Q)?: " action
	if [ $action == "Y" ] || [ $action == "y"]
	then
		bash new_search.sh
	fi	

else
	echo "${res_count} matches found. Show results(R) or add further filters(F)?"
	read -p "" decision

	if [ $decision == "R" ] || [ $decision == "r" ] 
	then
		touch search_res
		mv temp_res search_res
		subl search_res         #open result file in text editor

		read -p "Continue with another search(Y) or Quit(Q)?: " response
		if [ $response == "Y" ] || [ $response == "y" ] 
		then
			bash new_search.sh
		else
			echo "Thanks for trying us out."
		fi

	else
		bash choose.sh 
	fi
fi



