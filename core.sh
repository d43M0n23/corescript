#!/bin/bash
# corescript v.1
# create folder and subs
# include scanner and katanaframework
#
###################
# ToDo:
# generate ssh.pub key
# add key do source 4 sync script
# create folder
# install scripts & frameworks
#
##################

####################
# CONFIG THIS PART #
####################

main="73sTing"		#Hauptordner - echo ${maindir} or echo $maindir 4 edit
frame="01-frame"		# framework ordner für diverse Scripte /Scanner Aux etc.
space="02-workspace"	# Arbeitsplatz
bot="03-botnet"		# Botnetze
sync="04-h4cK3D"		# h4cK3R-stuff
crack="05-cracker"		# crack-engines
script="06-0wnsRipt"	# eigene Scripte
wifi="07-wiF1"		# Wifi-Attacken
##################
clear
#################
echo '+-------------------------------------------------+'
echo '   ________                             _____   __ '
echo '   ___  __ \_____ ____________ ____________  | / / '
echo '   __  / / /  __ `/  _ \_  __ `__ \  __ \_   |/ /  '
echo '   _  /_/ // /_/ //  __/  / / / / / /_/ /  /|  /   '
echo '    _____/ \__,_/ \___//_/ /_/ /_/\____//_/ |_/    '
echo '+-------------------------------------------------+'
echo '| to continue press Return       Date 2017.05.19  |'
echo '+-------------------------------------------------+'
read -e TASTE
clear
echo '+-------------------------------------------------+'
echo '|   (c)opyright 2017 by                           |'
echo '|   DaemoN daemon@coremedia.la                    |'
echo '+-------------------------------------------------+'
echo '|   This Script is subject to the GPL License!    |'
echo '|   You can copy and change it!                   |'
echo '+-------------------------------------------------+'
echo '| to continue press Return       Date 2017.05.19  |'
echo '+-------------------------------------------------+'
read -e TASTE
clear
echo '+-------------------------------------------------+'
echo '| Own-Scripts and anonymous                       |'
echo '+-------------------------------------------------+'
echo '| 1.Inurlbr - Dork. 		                |'
echo '| 2.katana Frame.    		                |'
echo '| 3.trity. 					|'
echo '| 3.trity. 					|'
echo '| 3.trity. 					|'
echo '| 3.trity. 					|'
echo '| 3.trity. 					|'
echo '| 3.trity. 					|'
echo '| 4.all.  					|'
echo '+-------------------------------------------------+'
echo 'Make a source deb-Update (y/n)'
read -e debupdate
##
## Schleife
##
if [ '$debupdate' == y ]; then

apt-get update && apt-get upgrade -y
apt-get dist-upgrade -y
apt autoremove -y
apt-get clean
fi
#exit
clear
echo "Ordner werden angelegt falls nicht vorhanden"
##
##
if [ ! -d /root/${main}/ ]; then
	mkdir /root/${main}/;
	echo "${main} wurde angelegt"
fi

cd /root/${main}/

if [ ! -d 01-frame ]; then
	mkdir 01-frame;
	echo "01-frame wurde angelegt"
fi

if [ ! -d 02-workspace ]; then
       # mkdir 02-workspace
        echo "02-workspace wurde angelegt"
fi

if [ ! -d 03-botnet ]; then
        mkdir 03-botnet
        echo "03-botnet wurde angelegt"
fi

if [ ! -d 04-h43D ]; then
        mkdir 04-h43D
        echo "04-h43D wurde angelegt"
fi

if [ ! -d 05-crack ]; then
        mkdir 05-crack
        echo "05-crack wurde angelegt"
fi

#cd /root/c0r3/01-frame/
echo "fehlende Ordner wurden erstellt."
#clear
#Script 1
# Inurl
cd 01-frame
git clone 'https://github.com/googleinurl/SCANNER-INURLBR.git'
cd SCANNER-INURLBR
apt-get install php-curl -y
#ls
cd ..
sleep 5
#echo 'Scanner-Inurl installed'
clear
echo '+-------------------------------------------------+'
echo '| inurlbr geladen und installiert			|'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
# Script 2 - Katana
git clone 'https://github.com/PowerScript/KatanaFramework.git'
clear
echo '+-------------------------------------------------+'
echo '| Katana geladen und installiert                  |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
echo "a11 d43M0n23 s0urc3s geladen - cyA"
exit
