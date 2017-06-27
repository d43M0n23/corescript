#!/bin/bash
# corescript v.1
# create folder and subs
# include Frames,Aux;Attack
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
echo '| Own-Scripts, Aux & Attacker-Frames              |'
echo '+-------------------------------------------------+'
echo '| 1.Arachni.	 		                |'
echo '| 2.Getsploit.    		                |'
echo '| 3.Katana-Framework 				|'
echo '| 4.MITMf. 					|'
echo '| 5.Pybelt. 					|'
echo '| 6.Scanner-Inurl-BR. 				|'
echo '| 7.Sn1per. 					|'
echo '| 8.TheFatRat.                                    |'
echo '| 9.TheFatRat. 					|'
echo '| 10.Webpwn3r.  					|'
echo '| 11.WPSeku.                                      |'
echo '| 12.Xerosploit.                                  |'
echo '| 13.Xsscrapy.                                    |'
echo '| 14.all.                                         |'
echo '+-------------------------------------------------+'
read -p "Make a source deb-update (y/n)? " debupdate
##
## Schleife
##
if [ $debupdate = y ]; then
	apt-get update && apt-get upgrade -y
	apt-get dist-upgrade -y
	apt autoremove -y
	apt-get clean
	echo "thx 4 update"
else
	echo "
install without update!
"
fi
#exit
#clear
echo "Ordner werden angelegt falls nicht vorhanden"
##
##
if [ ! -d /root/${main}/ ]; then
	mkdir /root/${main}/;
	echo "${main} wurde angelegt"
fi

cd /root/${main}/

if [ ! -d ${frame} ]; then
	mkdir ${frame};
	echo "${frame} wurde angelegt"
fi

if [ ! -d ${space} ]; then
        mkdir ${space}
        echo "${space} wurde angelegt"
fi

if [ ! -d ${bot} ]; then
        mkdir ${bot}
        echo "${bot} wurde angelegt"
fi

if [ ! -d ${sync} ]; then
        mkdir ${sync}
        echo "${sync} wurde angelegt"
fi

if [ ! -d ${crack} ]; then
        mkdir ${crack}
        echo "${crack} wurde angelegt"
fi

if [ ! -d ${script} ]; then
        mkdir ${script}
        echo "${script} wurde angelegt"
fi

if [ ! -d ${wifi} ]; then
        mkdir ${wifi}
        echo "${wifi} wurde angelegt"
fi



echo "fehlende Ordner wurden erstellt."
###
# INSTALL SCRIPTS,AUX,FRAMES
# 
cd ${main}
####
#1.Arachni.
#2.Getsploit.
#3.Katana-Framework.
git clone 'https://github.com/PowerScript/KatanaFramework.git'
sleep 5
echo '+-------------------------------------------------+'
echo '| Katana geladen und installiert                  |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE

#4.MITMf.
#5.Pybelt.
#6.Scanner-Inurl-BR.
git clone 'https://github.com/googleinurl/SCANNER-INURLBR.git'
cd SCANNER-INURLBR
apt-get install php-curl -y
cd ..
sleep 5
echo '+-------------------------------------------------+'
echo '| inurlbr geladen und installiert                 |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE

#7.Sn1per.
#8.TheFatRat.
#9.TheFatRat.
#10.Webpwn3r.
#11.WPSeku.
#12.Xerosploit.
#13.Xsscrapy.


#Final MSG
echo "a11 d43M0n23 s0urc3s geladen - cyA"
exit
