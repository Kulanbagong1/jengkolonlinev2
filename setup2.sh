#!/bin/bash
#wget https://github.com/${GitUser}/
GitUser="Kulanbagong1"
# Color Validation
Lred='\e[1;91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
green='\e[32m'
RED='\033[0;31m'
NC='\033[0m'
BGBLUE='\e[1;44m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0;37m'
# ===================
echo ''
clear
echo ''
echo "                                                              "
echo -e "$Lyellow                ⚡ PREMIUM SPEED SCRIPT ⚡"$NC
echo -e "$green.........................................................."$NC
echo -e "$Lyellow                  Autoscript By JengkolOnline"$NC
echo -e "$Lyellow                    CONTACT TELEGRAM"$NC
echo -e "$Lyellow               https://t.me/Jengkol_Online"$NC
echo -e "$green.........................................................."$NC
echo ''
echo -e "$Lyellow                       Wait 6 Seconds!"$NC
echo -e "$green.........................................................."$NC
sleep 6
clear
if [ "${EUID}" -ne 0 ]; then
    echo "You need to run this script as root"
    exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
    echo "OpenVZ is not supported"
    exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script
VALIDITY() {
    today=$(date -d "0 days" +"%Y-%m-%d")
    Exp1=$(curl https://raw.githubusercontent.com/${GitUser}/izinn/main/ipvps.conf | grep $MYIP | awk '{print $4}')
    if [[ $today < $Exp1 ]]; then
        echo -e "\e[32mCongratulations! You are Allowed to use AUTOSCRIPT JengkolOnline..\e[0m"
        sleep 5
    else
        echo -e "\e[31mYOUR SCRIPT HAS EXPIRED!\e[0m"
        echo -e "\e[31mPlease renew your ipvps first\e[0m"
        exit 0
    fi
}
# Valid Script
VALIDITY() {
    today=$(date -d "0 days" +"%Y-%m-%d")
    Exp1=$(curl https://raw.githubusercontent.com/${GitUser}/izinn/main/ipvps.conf | grep $MYIP | awk '{print $4}')
    if [[ $today < $Exp1 ]]; then
        echo -e "\e[32mCongratulations! You are Allowed to use AUTOSCRIPT JengkolOnline..\e[0m"
        sleep 5
    else
        echo -e "\e[31mYOUR SCRIPT HAS EXPIRED!\e[0m"
        echo -e "\e[31mPlease renew your ipvps first\e[0m"
        exit 0
    fi
}
IZIN=$(curl https://raw.githubusercontent.com/${GitUser}/izinn/main/ipvps.conf | awk '{print $5}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
    echo -e "\e[32mPermission Accepted...\e[0m"
    VALIDITY
else
    echo -e "\e[31mPermission Denied!\e[0m"
    echo -e "\e[31mPlease buy script first\e[0m"
    rm -f setup.sh
    exit 0
fi
clear
