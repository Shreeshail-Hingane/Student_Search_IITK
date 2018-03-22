#!/bin/bash
        
width=$(tput cols)
height=$(tput lines)
msg="---   IITK STUDENT SEARCH   ---"
length=${#msg}
clear
tput cup $((height / 16)) 30
echo "---------------------------------------------------------------------------"
tput cup $((height / 8)) $(((width / 2) - (length / 2)))
echo "$msg"
tput cup $(((height / 16) + (height / 8))) 30
echo "---------------------------------------------------------------------------"
tput cup $((height / 4)) 1
echo "Select any search attribute"
echo "1]NAME    2]HALL    3]BATCH    4]USERNAME    5]DEPARTMENT    6]DEGREE    7]ROLL NO    8]GENDER"
read -p "" code
		
if [[ $code == "1" ]]; then
echo "Type in the name"
read -p "" name
bash name.sh "$name" 1
		
elif [[ $code == "2" ]]; then 
	echo "Choose Hall"
	echo " 1]Hall1    2]Hall2    3]Hall3     4]Hall4      5]Hall5      6]Hall6"
	echo " 1]Hall7    8]Hall8    9]Hall9    10]Hall10    11]Hall11    12]Hall12    13]Day Scholar"
	read -p "" hall
	bash hall.sh "$hall" 1
		
elif [[ $code == "3" ]]; then
	echo "Choose Batch"
	echo "1]Y17    2]Y16    3]Y15    4]Y14    5]Y13    6]Y12    7]Y11"
	read -p "" batch
	bash batch.sh "$batch" 1	

elif [[ $code == "4" ]]; then 
	echo "Type in the username"
	read -p "" username	
	bash username.sh "$username" 1
		
elif [[ $code == "5" ]]; then
	echo "Choose Department"
	echo "1]AEROSPACE ENGG      2]BIOL.SCI. AND BIO.ENGG        3]CHEMICAL ENGG      4[CHEMISTRY" 
	echo "5]COMPUTER SCIENCE    6]CIVIL ENGG                    7]EARTH SCIENCES     8]ECONOMICS" 
	echo "9]ELECTRICAL ENGG    10]MATERIALS SCIENCE & ENGG     11]MATHEMATICS       12]MECHANICAL ENGINEERING" 
	echo "13]PHYSICS"
	read -p "" dept
	bash dept.sh "$dept" 1
		
elif [[ $code == "6" ]]; then
	echo "Choose Degree"
	echo "1]BTech           2]BS      3]MTech      4]MT(Dual)" 
	echo "5]MS-Research     6]MSc     7]PhD        8]PhD(Dual)" 
	echo "9]MBA            10]BS-MS  11]MDes      12]SURGE"
	read -p "" degree
	bash program.sh "$degree" 1
		
elif [[ $code == "7" ]]; then
 	echo "Type in the roll no"
	read -p "" input_roll
	bash roll_no.sh "$input_roll" 1
		
else
	echo "Choose Gender(M/F)"
	read -p "" gender
	bash gender.sh "$gender" 1	
fi