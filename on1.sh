while true; do
	read -p "To change content press 'a' to add 'r'to remove 'x' to exit:" k
	case $k in 
	a)		sh /home/naveen/kvp/bash/cond.sh; break ;;

	r)              sh /home/naveen/kvp/bash/on2.sh; break ;;

	x) exit;;
	* ) echo "Kindly select either a or r or x" ;;
esac	
done
