#!/bin/bash
#ed=$(cat /home/naveen/kvp/bash/menu.txt | head | cut -d '.' -f1) > g
cat /home/naveen/kvp/bash/menu.txt | head | cut -d '.' -f1 > g
echo -n "Enter the menu nos(eg:3.dir=3):"
read nos
echo $nos > iii
#read
h=$(cat iii | head | cut -d '.' -f1) > jjj
wcnt1=$(grep -Fw $h g | wc -l )
      if [ "$wcnt1" -gt 0 ] ; then
awk -v d=$nos '($1 != d) && ($2 != d)' /home/naveen/kvp/bash/menu.txt > /home/naveen/kvp/bash/menu.txt.new
#	sed  $nos "d"  /home/naveen/kvp/bash/menu.txt > /home/naveen/kvp/bash/menu.txt.new
#grep -F vf $nos  /home/naveen/kvp/bash/menu.txt > /home/naveen/kvp/bash/menu.txt.new 
	mv /home/naveen/kvp/bash/menu.txt.new /home/naveen/kvp/bash/menu.txt
        rm /home/naveen/kvp/bash/name/$nos.sh
        
      else
	      echo "Menu id not found"
fi
exit
