#!/bin/sh	

choice=$(echo -e "Cancel\nDjezzy\nsecondMail\nofficialMail\nDjezzyMail\nOTA" | dmenu -i -p "Choose Action: " )

if [ $choice = "Djezzy" ]; then 
echo 	0799395915 | xclip -selection clipboard
elif [ $choice = "secondMail" ]; then 
echo 	mohamed.brahimi.0101@gmail.com | xclip -selection clipboard
elif [ $choice = "officialMail" ]; then 
echo 	browrectum8m@gmail.com | xclip -selection clipboard
elif [ $choice = "DjezzyMail" ]; then 
echo 	mohamed.brahimi@djezzy.dz | xclip -selection clipboard
elif [ "$choice" = "OTA" ]; then 
echo "qwerqwer2026++" | xclip -selection clipboard
fi

