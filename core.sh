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
wifi="07-wifi"		# Wifi-Attacken
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
echo "
Ordner werden angelegt falls nicht vorhanden
"
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



echo "
fehlende Ordner wurden erstellt.
"
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
clear
echo '+-------------------------------------------------+'
echo '| Own-Source - Kali CDs & Builds                  |'
echo '+-------------------------------------------------+'
echo '| 1.Kali-Iso.Build.                               |'
echo '| 2.Kali-Nethunter. (Mobile OS).                  |'
echo '| 3.Katana-Framework.                             |'
echo '+-------------------------------------------------+'
read -p "Download Sources from Git to Build (y/n)? " ownbuild
##
## Schleife
##
if [ $ownbuild = y ]; then
        apt-get update && apt-get upgrade -y
        apt-get dist-upgrade -y
        apt autoremove -y
        apt-get clean
	## KALI CD
        apt-get install git live-build cdebootstrap devscripts -y
        git clone git://git.kali.org/live-build-config.git
	apt-get source debian-installer
	## KALI Nethunter
	git clone https://github.com/offensive-security/kali-nethunter.git
	## KALI ARM Build like Raspberry
	https://github.com/offensive-security/kali-arm-build-scripts.git
	apt-get install gcc-arm-none-eabi
	dpkg --add-architecture i386
	apt-get install -y git-core gnupg flex bison gperf libesd0-dev build-essential zip curl libncurses5-dev zlib1g-dev libncurses5-dev gcc-multilib g++-multilib parted kpartx debootstrap pixz qemu-user-static abootimg cgpt vboot-kernel-utils vboot-utils bc lzma lzop xz-utils automake autoconf m4 dosfstools rsync u-boot-tools schedtool git e2fsprogs device-tree-compiler ccache dos2unix debootstrap libgmp3-dev:i386 libgmp3-dev
fi
cd ..
#03-botnet
cd /root/${main}/${bot}/
clear
echo '+-------------------------------------------------+'
echo '| Botnet-Install                                  |'
echo '+-------------------------------------------------+'
echo '| 1.Ufonet.                                       |'
echo '| 2.Xerxes.                                       |'
echo '+-------------------------------------------------+'
read -p "Download Botnet (y/n)? " botnet
##
## Schleife
##
if [ $botnet = y ]; then
	## UFONET
	git clone https://github.com/epsylon/ufonet
	## Xerxes
	git clone https://github.com/zanyarjamal/xerxes.git
	cd xerxes
	gcc xerxes.c -o xerxes
	cd ..
 echo 'Botnet installed - Job Done!'
fi
sleep 3
cd ..

#05 Cracker
cd /root/${main}/${crack}/
clear
echo '+-------------------------------------------------+'
echo '| Crack-Engines                                   |'
echo '+-------------------------------------------------+'
echo '| 1.brut3k1t.                                     |'
echo '| 2.dagon.                                        |'
echo '| 3.PyBozoCrack.                                  |'
echo '+-------------------------------------------------+'
read -p "Download Sources from Git to Build (y/n)? " owncrack
##
## Schleife
##
if [ $owncrack = y ]; then
	## Brut3k1t
	git clone https://github.com/ex0dus-0x/brut3k1t.git
	cd brut3k1t
	pip install -r requirements.txt
	cd ..
	## Dagon Hash Manipulator
	git clone https://github.com/ekultek/dagon.git
	cd Dagon
	pip install -r requirements.txt
	cd ..
	## PyBozoCrack
	git clone https://github.com/ikkebr/PyBozoCrack.git
	cd PyBozoCrack
	chmod +x pybozocrack.py
	cd ..
echo 'Cracker installed - Job Done!'
fi
sleep 3
cd ..

#07 WIFI
cd /root/${main}/${wifi}/
clear
echo '+-------------------------------------------------+'
echo '| Wifi-Attacker                                   |'
echo '+-------------------------------------------------+'
echo '| 1.Bully.                                        |'
echo '| 2.Fluxion.                                      |'
echo '| 3.Netattack2.                                   |'
echo '| 3.Wifiphisher.                                  |'
echo '| 3.Wifi-Pumpkin.                                 |'
echo '+-------------------------------------------------+'
read -p "Download Wifi Attack Tools (y/n)? " wifiattack
##
## Schleife
##
if [ $wifiattack = y ]; then
	## Bully
        git clone https://github.com/aanarchyy/bully.git
	## Fluxon
	apt-get -y install build-essential libpcap-dev libssl1.0-dev aircrack-ng pixiewps
	git clone https://github.com/wi-fi-analyzer/fluxion.git
	## NETATTACK 1
	git clone https://github.com/chrizator/netattack.git
	## NETATTACK 2
	apt-get -y install python-nmap python-argparse python-scapy iw
	git clone https://github.com/chrizator/netattack2.git
	## Wifi-Phisher 
	git clone https://github.com/sophron/wifiphisher.git
	## WIFI Pumkin
	git clone https://github.com/P0cL4bs/WiFi-Pumpkin.gi
	cd WiFi-Pumpkin
	./installer.sh --install
fi
cd ..

#Final MSG
echo "a11 d43M0n23 s0urc3s geladen - cyA"
exit
