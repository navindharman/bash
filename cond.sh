#!/bin/bash
con=$(cat /home/naveen/kvp/bash/menu.txt | head | cut -d '.' -f1) >> d
cat /home/naveen/kvp/bash/menu.txt | head | cut -d '.' -f1 > d
echo -n "Kindly add item in following format menuid.menuname:"
read word
echo $word > fff
#read
e=$( cat fff | head | cut -d '.' -f1)
echo $e > eee
wcnt=$(grep -w $e d | wc -l )
	if [ "$wcnt" -gt 0 ] ; then
		echo "menu found"
	else	
	sed "$ a\ $word" //home/naveen/kvp/bash/menu.txt > /home/naveen/kvp/bash/menu.txt.new
	mv /home/naveen/kvp/bash/menu.txt.new /home/naveen/kvp/bash/menu.txt
	echo -n "Add script to execute:"
	var=$(cat menu.txt | tail -n1 | cut -d '.' -f1)
	sh /home/naveen/kvp/bash/variable.sh > var
#	read
	cd /home/naveen/kvp/bash/name/
	vi $var.sh
	#!/bin/bash
	sed "$ i\ $script" /home/naveen/kvp/bash/name/$var.sh
	mv /home/naveen/kvp/bash/$var /home/naveen/kvp/bash/name/$var.sh
	chmod +x /home/naveen/kvp/bash/name/$var.sh
	echo "Menu list modified"
fi
