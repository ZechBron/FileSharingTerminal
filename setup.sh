#!/bin/bash
echo -e "\e[32mWhat's Your OS?\e[0m"
echo " 1. Ubuntu"
echo " 2. Termux"
echo " 3. Other (I dunno about this)"
read os
if [ $os = 1 ]; then
apt-get install curl -y
apt-get install unzip -y
apt-get install zip -y
apt-get install ccrypt -y

elif [ $os = 2 ]; then
pkg install curl -y
pkg install unzip -y
pkg install zip -y
pkg install ccrypt -y

elif [ $os = 3 ]; then
apt install curl -y
apt install unzip -y
apt install zip -y
apt install ccrypt -y

else
clear
echo -e "\e[31mWrong Input. Please type: bash setup.sh\e[0m"
fi
echo -e "\e[32mDONE\nTo run. Just type: bash sharefile.sh\e[0m"
