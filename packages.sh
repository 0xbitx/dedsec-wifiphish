#!/bin/bash

echo -e "\n Installing required packages..."

if [[ `command -v hostapd` && `command -v dnsmasq` ]]; then
	echo -e "\nPackages already installed." 
	sleep 1
	
else	
			echo -e "\n Installing package : $pkg"
			
			if [[ `command -v apt` ]]; then
				apt install hostapd dnsmasq -y
					
			elif [[ `command -v apt-get` ]]; then
				apt-get install hostapd dnsmasq -y
					
			elif [[ `command -v pacman` ]]; then
				sudo pacman -S hostapd dnsmasq --noconfirm
					
			elif [[ `command -v dnf` ]]; then
				sudo dnf -y install hostapd dnsmasq
					
			else
				echo -e "\n Unsupported package manager, Install packages manually."
				{ sleep 2; exit 1; }
			fi
			
fi
