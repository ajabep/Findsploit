#!/bin/bash
# Install script

set -e

FINDSPLOIT_INSTALL_DIR=/usr/share/findsploit
COLOR1='\033[91m'
COLOR2='\033[92m'
COLOR3='\033[92m'
RESET='\033[0m'

echo -e "$COLOR3   ___ _           _           _       _ _   "
echo -e "$COLOR3  / __(_)_ __   __| |___ _ __ | | ___ (_) |_ "
echo -e "$COLOR3 / _\ | | '_ \ / _\` / __| '_ \| |/ _ \| | __|"
echo -e "$COLOR3/ /   | | | | | (_| \__ \ |_) | | (_) | | |_ "
echo -e "$COLOR3\/    |_|_| |_|\__,_|___/ .__/|_|\___/|_|\__|"
echo -e "$COLOR3                        |_|                  "
echo -e "$RESET"
echo -e "$COLOR1+ -- --=[findsploit by 1N3"
echo -e "$COLOR1+ -- --=[https://crowdshield.com$RESET"
echo -e "$RESET"
echo -e "$COLOR2+ -- --=[This script will install findsploit under $FINDSPLOIT_INSTALL_DIR.$RESET"

rm -Rf $FINDSPLOIT_INSTALL_DIR
mkdir -p $FINDSPLOIT_INSTALL_DIR
cp -Rf $PWD/* $FINDSPLOIT_INSTALL_DIR 
cd $FINDSPLOIT_INSTALL_DIR
mkdir loot

apt-get install -y metasploit-framework exploitdb xdg-utils

chmod +x $FINDSPLOIT_INSTALL_DIR/findsploit
chmod +x $FINDSPLOIT_INSTALL_DIR/copysploit
chmod +x $FINDSPLOIT_INSTALL_DIR/compilesploit

rm -f /usr/bin/findsploit 2> /dev/null
rm -f /usr/bin/copysploit 2> /dev/null
rm -f /usr/bin/compilesploit 2> /dev/null

ln -s /usr/share/findsploit/findsploit /usr/bin/findsploit
ln -s /usr/share/findsploit/copysploit /usr/bin/copysploit
ln -s /usr/share/findsploit/compilesploit /usr/bin/compilesploit

echo -e "$COLOR2+ -- --=[Done!$RESET"
