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

main="c0r3"		#Hauptordner - echo ${maindir} or echo $maindir 4 edit
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
echo '| 1.Arachni.                                      |'
echo '| 2.Getsploit.                                    |'
echo '| 3.Katana-Framework.                             |'
echo '| 4.MITMf.                                        |'
echo '| 5.Pybelt.                                       |'
echo '| 6.Scanner-Inurl-BR.                             |'
echo '| 7.Sn1per.                                       |'
echo '| 8.TheFatRat.                                    |'
echo '| 9.Trity.                                        |'
echo '| 10.Webpwn3r.                                    |'
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
cd ${frame}
#####
#01-FRAME
#1.Arachni.

if [ ! -d arachni-1.5.1-0.5.12 ]; then

wget https://github.com/Arachni/arachni/releases/download/v1.5.1/arachni-1.5.1-0.5.12-linux-x86_64.tar.gz
tar xfz arachni-1.5.1-0.5.12-linux-x86_64.tar.gz
rm arachni-1.5.1-0.5.12-linux-x86_64.tar.gz
sleep 3
echo '+-------------------------------------------------+'
echo '| Arachni geladen und installiert                 |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi
#2.Getsploit.

if [ ! -d getsploit ]; then
git clone https://github.com/vulnersCom/getsploit.git
cd getsploit
python getsploit.py
cd ..
sleep 3
echo '+-------------------------------------------------+'
echo '| Getsploit geladen und installiert               |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#3.Katana-Framework.

if [ ! -d KatanaFramework ]; then
git clone 'https://github.com/PowerScript/KatanaFramework.git'
sleep 3
echo '+-------------------------------------------------+'
echo '| Katana geladen und installiert                  |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#4.MITMf.

if [ ! -d MITMf ]; then
apt-get install python-dev python-setuptools libpcap0.8-dev libnetfilter-queue-dev libssl-dev libjpeg-dev libxml2-dev libxslt1-dev libcapstone3 libcapstone-dev libffi-dev file -y
git clone https://github.com/byt3bl33d3r/MITMf
cd MITMf
git submodule init && git submodule update --recursive
cd ..
sleep 3
echo '+-------------------------------------------------+'
echo '| MITMf geladen und installiert                   |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#5.Pybelt.

if [ ! -d pybelt ]; then
git clone https://github.com/ekultek/pybelt.git
cd pybelt
pip install -r requirements.txt
cd ..
sleep 3
echo '+-------------------------------------------------+'
echo '| Pybelt geladen und installiert                  |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#6.Scanner-Inurl-BR.

if [ ! -d SCANNER-INURLBR ]; then
git clone 'https://github.com/googleinurl/SCANNER-INURLBR.git'
cd SCANNER-INURLBR
apt-get install php-curl -y
cd ..
sleep 3
echo '+-------------------------------------------------+'
echo '| inurlbr geladen und installiert                 |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#7.Sn1per.
if [ ! -d Sn1per ]; then
git clone https://github.com/1N3/Sn1per.git
cd Sn1per
chmod +x install.sh
./install.sh
cd ..
sleep 3
echo '+-------------------------------------------------+'
echo '| Sn1per geladen und installiert                  |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#8.TheFatRat.
if [ ! -d TheFatRat ]; then
git clone https://github.com/Screetsec/TheFatRat.git
cd TheFatRat
chmod +x setup.sh && ./setup.sh
cd ..
sleep 3
echo '+-------------------------------------------------+'
echo '| TheFatRat geladen und installiert               |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#9.Trity.
if [ ! -d Trity ]; then
git clone https://github.com/toxic-ig/Trity.git
cd Trity
python install.py
cd ..

sleep 3
echo '+-------------------------------------------------+'
echo '| Trity geladen und installiert                   |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#10.Webpwn3r.
if [ ! -d webpwn3r ]; then
git clone https://github.com/zigoo0/webpwn3r.git
sleep 3
echo '+-------------------------------------------------+'
echo '| Webpwn3r geladen und installiert                |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#11.WPSeku.
if [ ! -d WPSeku ]; then
git clone https://github.com/m4ll0k/WPSeku.git
sleep 3
echo '+-------------------------------------------------+'
echo '| WPSeku geladen und installiert                  |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#12.Xerosploit.
if [ ! -d xerosploit ]; then
git clone https://github.com/LionSec/xerosploit.git
cd xerosploit && python install.py
cd ..
sleep 3
echo '+-------------------------------------------------+'
echo '| Xerosploit geladen und installiert              |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#13.Xsscrapy.
if [ ! -d xsscrapy ]; then
git clone https://github.com/DanMcInerney/xsscrapy.git
cd xsscrapy
pip install -r requirements.txt
python xsscrapy.py -h
cd ..
fi

sleep 3
echo '+-------------------------------------------------+'
echo '| Xss-Crapy geladen und installiert               |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
#####
#02-workspace
cd /root/${main}/${space}/
#03-botnet
#05
#Final MSG
echo "a11 d43M0n23 s0urc3s geladen - cyA"
exit
