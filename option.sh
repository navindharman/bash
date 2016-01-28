#!/bin/bash
 
while true; do
	read -p "Do you want to modify the menu list(y/n)?:" yn
	case $yn in
		[Yy]* ) 
	sh /home/naveen/kvp/bash/on1.sh; exit  ;;

	 [Nn]* ) exit;;
	* ) echo "Please kindly answer yes or no." ;;
esac
done
