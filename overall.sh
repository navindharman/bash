#!/bin/bash
LSB=/usr/bin/lsb_release
Author=NAVEEN_DHARMAN
function pause(){
echo -e "setf 4\nsetb 0" | tput -S
	local message="$@"
	         [ -z $message ] && message="Press [Enter] key to continue..."
		 read -p "$message" readEnterKey
		 }
function write_header(){
echo -e "setf 3\nsetb 0" | tput -S
	local h="$@"
         echo "---------------------------------------------------------------"
         echo "     ${h}"
         echo "---------------------------------------------------------------"
					 }

function show_menu(){
menu="/home/naveen/kvp/bash/menu.txt"
echo "-----------------Control Menu-----------------"
echo -e "setf 2\nsetb 0" | tput -S 
while read line
do
	echo $line 
	done < $menu | sort -nu   
echo "-----------------------------------------------"
echo "  0.Option                      x.Exit         "  
echo "-----------------------------------------------"
}
function read_input(){
echo -e "setf 5\nsetb 0" | tput -S
	f=$(cat /home/naveen/kvp/bash/menu.txt | head | cut -d '.' -f1 )
	read -p "Enter your choice:" c
	case $c in
		x) echo "Thanks for using the script $Author "; exit 0 ;;
		0) sh /home/naveen/kvp/bash/option.sh; pause ;;
		*) if grep -Fwq $c <<< $f;
		then
			sh /home/naveen/kvp/bash/name/$c.sh; pause		
		else
			echo "Kindly enter a valid menu number"; pause
		fi
       esac      
}

while true
do
	clear	
	show_menu
	read_input
done	
 
