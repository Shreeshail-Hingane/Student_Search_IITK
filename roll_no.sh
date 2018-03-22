roll=$1

check_roll(){
	if [[ $1 == "0" ]]; then
		rm temp_res
		read -p "Invalid roll no. Please enter a valid roll no: " new_roll
		bash roll_no.sh "$new_roll" 1
	else
		echo "Match found. Show results(R)?"
		read -p "" decision
		if [[ $decision == "R" ]]; then
			touch search_res
			mv temp_res search_res
			subl search_res         #open result file in text editor
		fi
		
		read -p "Continue with another search(Y) or Quit(Q)?: " response
		if [ $response == "Y" ] || [ $response == "y" ] 
		then
			bash new_search.sh
		else
			echo "Thanks for trying us out."
		fi
	fi

}

if [[ $2 == "1" ]]; then 
	touch temp_res
	egrep --no-group-separator -A 7 "\b$roll\b" alldata > temp_res
else
	touch middle_file
	egrep --no-group-separator -A 7 "\b$roll\b" temp_res > middle_file
	mv middle_file temp_res
fi

line_count=$(cat temp_res | wc -l)
res_count=$((line_count / 9))
check_roll $line_count