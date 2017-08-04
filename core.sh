#!/bin/bash
# corescript v.1.0
# create folder and subs
# include Frames,Aux;Attack
#
###################
# ToDo:
# generate ssh.pub key
# add key do source 4 sync script
# rubygem
# python3
# if debian or kali
# if raspberry - Desktop einrichten
# /usr/share/images/desktop-base
# loginscreen & avatar setting
# Nessus,OpenVas
# https://3xpl0it.com/c0r3/Nessus-6.10.5-debian6_amd64.deb
##################
version=1.0
vdate=04.07.2017
####################
# CONFIG THIS PART #
####################

main="c0r3"		#Hauptordner - echo ${maindir} or echo $maindir 4 edit
frame="01-frames"	# framework ordner für diverse Scripte /Scanner Aux etc.
space="02-workspace"	# Arbeitsplatz
bot="03-botnet"		# Botnetze
sync="04-h4cK3D"	# h4cK3R-stuff
crack="05-cracker"	# crack-engines
script="06-0wnscRipts"	# eigene Scripte
wifi="07-wifi"		# Wifi-Attacken
lab="08-lab"
##################
# Bash sTyl3!
clear='\033[0m'                 #alle Attribute zurücksetzen
red='\e[31m'
bold='\033[1m'                  #Fettschrift
underline='\033[4m'             #Unterstreichen
blinken='\033[5m'               #Blinken
invers='\033[7m'                #inverse Darstellung
black='\033[30m'                #Schriftfarbe schwarz
red='\033[31m'                  #Schriftfarbe rot
green='\033[32m'                #Schriftfarbe grün
yell='\033[33m'                 #Schriftfarbe gelb
blue='\033[34m'                 #Schriftfarbe blau
mag='\033[35m'                  #Schriftfarbe magenta
turk='\033[36m'                 #Schriftfarbe türkis
white='\033[37m'                #Schriftfarbe weiß
## B4ckgr0unD
#bgblack='\033[40m'              #Hintergrund schwarz
#bgred='\033[41m'                #Hintergrund rot
#bggreen='\033[42m'              #Hintergrund grün
#bgyell='\033[43m'               #Hintergrund gelb
#bgblue='\033[44m'               #Hintergrund blau
#bgmag='\033[45m'                #Hintergrund magenta
#bgturk='\033[46m'               #Hintergrund türkis
#bgwhite='\033[47m'              #Hintergrund weiß
#################
clear
#################
echo '+-------------------------------------------------+'
echo '  ________                             _____   __  '
echo '  ___  __ \_____ ____________ ____________  | / /  '
echo '  __  / / /  __ `/  _ \_  __ `__ \  __ \_   |/ /   '
echo '  _  /_/ // /_/ //  __/  / / / / / /_/ /  /|  /    '
echo '   _____/ \__,_/ \___//_/ /_/ /_/\____//_/ |_/     '
echo '+-------------------------------------------------+'
echo "| to continue press Return       Date: ${vdate} |"
echo '+-------------------------------------------------+'
read -e TASTE
clear
echo '+-------------------------------------------------+'
echo "|   Version ${version} (c)opyright 2017 by               |"
echo '|   DaemoN d43M0n23@3xpl0it.com                   |'
echo '+-------------------------------------------------+'
echo '|   This Script is subject to the GPL License!    |'
echo '|   You can copy and change it!                   |'
echo '+-------------------------------------------------+'
echo "| to continue press Return       Date: ${vdate} |"
echo '+-------------------------------------------------+'
read -e TASTE
clear
echo '+-------------------------------------------------+'
echo '| Own-Scripts, Aux & Attacker-Frames              |'
echo '+-------------------------------------------------+'
echo '| 1.Arachni.                                      |'
echo '| 2.Nessus.                                       |'
echo '| 3.Getsploit.                                    |'
echo '| 4.Katana-Framework.                             |'
echo '| 5.MITMf.                                        |'
echo '| 6.Pybelt.                                       |'
echo '| 7.Scanner-Inurl-BR.                             |'
echo '| 8.Sn1per.                                       |'
echo '| 9.TheFatRat.                                    |'
echo '| 10.Trity.                                       |'
echo '| 11.Webpwn3r.                                    |'
echo '| 12.WPSeku.                                      |'
echo '| 13.Xerosploit.                                  |'
echo '| 14.Xsscrapy.                                    |'
echo '| 15.Red-Hawk                                     |'
echo '| 16.Veil-Framework.                              |'
echo '| 17.Zirikatu-Payload.                            |'
echo '| 18.Morpheus MITM.                               |'
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

if [ ! -d ${lab} ]; then
        mkdir ${lab}
        echo "${lab} wurde angelegt"
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
#2.Nessus comming soon
#3.Getsploit.

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

#4.Katana-Framework.

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

#5.MITMf.

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

#6.Pybelt.

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

#7.Scanner-Inurl-BR.

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

#8.Sn1per.
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

#9.TheFatRat.
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

#10.Trity.
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

#11.Webpwn3r.
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

#12.WPSeku.
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

#13.Xerosploit.
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

#14.Xsscrapy.
if [ ! -d xsscrapy ]; then
git clone https://github.com/DanMcInerney/xsscrapy.git
cd xsscrapy
pip install -r requirements.txt
python xsscrapy.py -h
cd ..
sleep 3
echo '+-------------------------------------------------+'
echo '| Xss-Crapy geladen und installiert               |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#15.Red-Hawk.
if [ ! -d RED_HAWK ]; then
	git clone https://github.com/Tuhinshubhra/RED_HAWK.git
	apt-get -y install php-curl php-xml
sleep 3
echo '+-------------------------------------------------+'
echo '| RED-HAWK geladen und installiert                |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#16.Veil-Framework.
if [ ! -d Veil ]; then
        git clone https://github.com/Veil-Framework/Veil.git
	cd Veil/
	cd setup
	./setup.sh -c
	cd ..
	cd ..
sleep 3
echo '+-------------------------------------------------+'
echo '| Veil-Framework geladen und installiert          |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#17.Zirikatu.
if [ ! -d zirikatu ]; then
        git clone https://github.com/pasahitz/zirikatu.git
sleep 3
echo '+-------------------------------------------------+'
echo '| Zirikatu-Payload geladen und installiert        |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi

#18.Morpheus.
if [ ! -d morpheus ]; then
	git clone https://github.com/r00t-3xp10it/morpheus.git
	cd morpheus
	chmod +x morpheus.sh
	cd ..
slepp 3
echo '+-------------------------------------------------+'
echo '| Morpheus MITM geladen und installiert           |'
echo '+-------------------------------------------------+'
echo '| to continue press Return                        |'
echo '+-------------------------------------------------+'
read TASTE
fi


#02-workspace
cd /root/${main}/${space}/
clear
echo '+-------------------------------------------------+'
echo '| Own-Source - Kali CDs & Builds                  |'
echo '+-------------------------------------------------+'
echo '| 1.Kali-Iso.Build.                               |'
echo '| 2.Kali-Nethunter. (Mobile OS).                  |'
echo '| 3.Kali-ARM-Build RPI3.                          |'
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
	if [ ! -d live-build-config ]; then
        apt-get install git live-build cdebootstrap devscripts -y
        git clone git://git.kali.org/live-build-config.git
	apt-get source debian-installer
	fi
	## KALI Nethunter
	if [ ! -d kali-nethunter ]; then
	git clone https://github.com/offensive-security/kali-nethunter.git
	fi
	## KALI ARM Build like Raspberry
	if [ ! -d kali-arm-build-scripts ]; then
	git clone https://github.com/offensive-security/kali-arm-build-scripts.git
	apt-get install gcc-arm-none-eabi
	dpkg --add-architecture i386
	apt-get install -y git-core gnupg flex bison gperf libesd0-dev build-essential zip curl libncurses5-dev zlib1g-dev libncurses5-dev gcc-multilib g++-multilib parted kpartx debootstrap pixz qemu-user-static abootimg cgpt vboot-kernel-utils vboot-utils bc lzma lzop xz-utils automake autoconf m4 dosfstools rsync u-boot-tools schedtool git e2fsprogs device-tree-compiler ccache dos2unix debootstrap libgmp3-dev:i386 libgmp3-dev
	fi
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
	if [ ! -d ufonet ]; then
	git clone https://github.com/epsylon/ufonet
	fi
	## Xerxes
	if [ ! -d xerxes ]; then
	git clone https://github.com/zanyarjamal/xerxes.git
	cd xerxes
	gcc xerxes.c -o xerxes
	cd ..
	fi
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
echo '| 4.Hash Buster.                                  |'
echo '+-------------------------------------------------+'
read -p "Download Crack Engines (y/n)? " owncrack
##
## Schleife
##
if [ $owncrack = y ]; then
	## Brut3k1t
	if [ ! -d brut3k1t ]; then
	git clone https://github.com/ex0dus-0x/brut3k1t.git
	cd brut3k1t
	pip install -r requirements.txt
	cd ..
	fi
	## Dagon Hash Manipulator
	if [ ! -d dagon ]; then
	git clone https://github.com/ekultek/dagon.git
	cd dagon
	pip install -r requirements.txt
	cd ..
	fi
	if [ ! -d PyBozoCrack ]; then
	## PyBozoCrack
	git clone https://github.com/ikkebr/PyBozoCrack.git
	cd PyBozoCrack
	chmod +x pybozocrack.py
	cd ..
	fi
        if [ ! -d Hash-Buster ]; then
        ## Hash-Buster
        git clone https://github.com/UltimateHackers/Hash-Buster.git
        #cd PyBozoCrack
        #chmod +x pybozocrack.py
        #cd ..
        fi
echo 'Cracker installed - Job Done!'
fi
sleep 3
cd ..
#06 0wnsRipt
#comming soon.
#07 WIFI
cd /root/${main}/${wifi}/
clear
echo '+-------------------------------------------------+'
echo '| Wifi-Attacker                                   |'
echo '+-------------------------------------------------+'
echo '| 1.Bully.                                        |'
echo '| 2.Fluxion.                                      |'
echo '| 3.Netattack.                                    |'
echo '| 4.Netattack2.                                   |'
echo '| 5.Wifiphisher.                                  |'
echo '| 6.Wifi-Pumpkin.                                 |'
echo '| 7.Ghost-Phisher.                                |'
echo '| 8.MDK3 AP.                                      |'
echo '| 9.Airgeddon.                                    |'
echo '+-------------------------------------------------+'
read -p "Download Wifi Attack Tools (y/n)? " wifiattack
##
## Schleife
##
if [ $wifiattack = y ]; then
	## Bully
	if [ ! -d bully ]; then
        git clone https://github.com/aanarchyy/bully.git
	echo '+-------------------------------------------------+'
	echo '| Bully Installed                                 |'
	echo '+-------------------------------------------------+'
	fi
	## Fluxon
	if [ ! -d fluxon ]; then
	apt-get -y install build-essential libpcap-dev libssl1.0-dev aircrack-ng pixiewps
	git clone https://github.com/wi-fi-analyzer/fluxion.git
        echo '+-------------------------------------------------+'
        echo '| Fluxon Installed                                |'
        echo '+-------------------------------------------------+'
	fi
	## NETATTACK 1
	if [ ! -d netattack ]; then
	git clone https://github.com/chrizator/netattack.git
        echo '+-------------------------------------------------+'
        echo '| Netattack v1  Installed                         |'
        echo '+-------------------------------------------------+'
	fi
	## NETATTACK 2
	if [ ! -d netattack2 ]; then
	apt-get -y install python-nmap python-argparse python-scapy iw
	git clone https://github.com/chrizator/netattack2.git
        echo '+-------------------------------------------------+'
        echo '| Netattack v2 Installed                          |'
        echo '+-------------------------------------------------+'
	fi
	## Wifi-Phisher
	if [ ! -d wifiphisher ]; then
	git clone https://github.com/wifiphisher/wifiphisher.git
	cd wifiphisher
	sudo python setup.py install
	cd ..
        echo '+-------------------------------------------------+'
        echo '| Wifi-Phisher Installed                          |'
        echo '+-------------------------------------------------+'
	fi
	## WIFI Pumkin
	if [ ! -d WiFi-Pumpkin ]; then
	git clone https://github.com/P0cL4bs/WiFi-Pumpkin.git
	cd WiFi-Pumpkin
	./installer.sh --install
        echo '+-------------------------------------------------+'
        echo '| Wifi Pumpkin Installed                          |'
        echo '+-------------------------------------------------+'
	fi
	#Ghost-Phisher
	if [ ! -d ghost-phisher ]; then
	git clone https://github.com/savio-code/ghost-phisher.git
	sleep 1
	cd ghost-phisher/Ghost-Phisher/
	chmod +x ghost.py
	cd ../..
        echo '+-------------------------------------------------+'
        echo '| Ghost-Phisher Installed                         |'
        echo '+-------------------------------------------------+'
	fi
	#MDK3 AP
	if [ ! -d mdk3-master ]; then
	git clone https://github.com/wi-fi-analyzer/mdk3-master.git
	cd mdk3-master
	make
	make install
	cd ..
        echo '+-------------------------------------------------+'
        echo '| MDK3 AP Installed                               |'
        echo '+-------------------------------------------------+'
	fi
	#Airgeddon
	if [ ! -d airgeddon ]; then
	git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
	cd airgeddon
	chmod +x airgeddon.sh
	cd ..
        echo '+-------------------------------------------------+'
        echo '| Airgeddon Installed                             |'
        echo '+-------------------------------------------------+'
	fi

fi
cd ..
###
# Update
clear
read -p "Create the d43M0n23-Deb.update script (y/n)? " daemonup

if [ $daemonup = y ]; then
cat << EOF > /root/d43M0n23_update
### Update Script ###
clear
apt-get update && apt-get upgrade -y
### Dist upgrade
apt-get dist-upgrade -y
### Alles Clearn
apt-get autoremove -y
apt-get clean
exit
EOF
chmod +x /root/d43M0n23_update
echo "Update-Script created!"
fi
# Sync
read -p "Create the d43M0n23-Sync script (y/n)? " syncscript

if [ $syncscript = y ]; then
cat << EOF > /root/sync 
rsync -arvz --exclude-from 'exclude-list.txt' -e 'ssh -p 2322' root@3xpl0it.com:/home/infinity/99-Hack/ /root/c0r3/04-h4cK3D/
chown -R root:root /root/c0r3/04-h4cK3D/
chmod -R 644 /root/c0r3/04-h4cK3D
if [ -d /root/Bilder ]; then
cp -R /root/c0r3/04-h4cK3D/walls/* /root/Bilder/
fi
if [ -d /root/Pictures ];then
cp -R /root/c0r3/04-h4cK3D/walls/* /root/Pictures/
fi
cp /root/c0r3/04-h4cK3D/.bash_aliases /root/
echo 'synC all - tHx'
EOF
chmod +x /root/sync
cat << EOF > /root/exclude-list.txt
vids/
EOF
echo "Sync-Script created!"
fi
# Resolution Virtualbox
read -p "Create the d43M0n23-VBoxScreen script (y/n)? " vboxscreen

if [ $vboxscreen = y ]; then
cat << EOF > /root/r3s0luti0n_vm
apt-get install -y linux-headers-$(uname -r)
cd /media/cdrom/
sh VBoxLinuxAdditions.run
echo 'tHanks Reb00t'
#reboot
EOF
chmod +x /root/r3s0luti0n_vm
echo "Vbox-Script created!"
fi
# Generate ssh key
if [ ! -f /root/.ssh/id_rsa.pub ]; then
read -p "Create SSH Key.pub (y/n)? " sshkey
if [ $sshkey = y ]; then
	ssh-keygen -t rsa -b 4096
fi
fi
# Grub boot logo
read -p "Create the d43M0n23-Grub-Screen (y/n)? " grubscreen

if [ $grubscreen = y ]; then
cp -r /root/c0r3/04-h4cK3D/walls/kali-grub.png /usr/share/desktop-base/kali-theme/grub/grub-16x9.png
echo "Grub-Screen created!"
fi

# Github Core Script
read -p "Create the d43M0n23-Github-Script (y/n)? " gitscript

if [ $gitscript = y ]; then
cat << EOF > /root/corescript
cd /root/Downloads
if [ -d corescript ]; then
rm -r corescript
fi
git clone https://github.com/d43M0n23/corescript.git
echo 'Corescript Updated'
EOF
chmod +x /root/corescript
echo 'tHanks corescript initialized ;)'
fi

#Final MSG
echo "a11 d43M0n23 s0urc3s geladen - cyA"
exit
