#!/bin/bash
# corescript v.1
# create folder and subs
# include scanner and katanaframework
#
####################
# CONFIG THIS PART #
####################

maindir = c0r3
framework = 01-frame
##################
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
read -e deb-update
##
## Schleife
##
if [ '$deb-update' == n ] ; then

apt-get update && apt-get upgrade -y
apt-get dist-upgrade -y
apt autoremove -y
apt clean
fi
#exit
clean
echo "Ordner werden angelegt falls nicht vorhanden"
##
##
if [ ! -d /root/c0r3/] ; then
	mkdir /root/c0r3/
	echo "c0r3 wurde angelegt"
if
cd /root/c0r3/
if [ ! -d 01-frame] ; then
	mkdir 01-frame
	echo "01-frame wurde angelegt"
fi
if [ ! -d mkdir 02-workspace] ; then
        mkdir 02-workspace
        echo "02-workspace wurde angelegt"
fi

if [ ! -d mkdir 03-botnet] ; then
        mkdir 03-botnet
        echo "03-botnet wurde angelegt"
fi

if [ ! -d mkdir 04-h43D] ; then
        mkdir 04-h43D
        echo "04-h43D wurde angelegt"
fi

if [ ! -d mkdir 05-crack] ; then
        mkdir 05-crack
        echo "05-crack wurde angelegt"
fi

#cd /root/c0r3/01-frame/
echo "fehlende Ordner wurden erstellt."
clear
#Script 1
# Inurl
git clone 'https://github.com/googleinurl/SCANNER-INURLBR.git'
cd SCANNER-INURLBR-master
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
