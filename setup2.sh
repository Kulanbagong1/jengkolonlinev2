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
# Link Hosting Kalian Untuk Ssh Vpn
bzvpn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/ssh"
# Link Hosting Kalian Untuk Sstp
bzvpnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/sstp"
# Link Hosting Kalian Untuk Ssr
bzvpnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/ssr"
# Link Hosting Kalian Untuk Shadowsocks
bzvpnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/shadowsocks"
# Link Hosting Kalian Untuk Wireguard
bzvpnnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/wireguard"
# Link Hosting Kalian Untuk Xray
bzvpnnnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/xray"
# Link Hosting Kalian Untuk Ipsec
bzvpnnnnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/ipsec"
# Link Hosting Kalian Untuk Backup
bzvpnnnnnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/backup"
# Link Hosting Kalian Untuk Websocket
bzvpnnnnnnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/websocket"
# Link Hosting Kalian Untuk Ohp
bzvpnnnnnnnnnn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/ohp"
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
mkdir /var/lib/bzstorevpn;
echo "IP=" >> /var/lib/bzstorevpn/ipvps.conf
echo ""
wget -q https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/tools.sh;chmod +x tools.sh;./tools.sh
rm tools.sh
clear
wget https://${bzvpn}/cf.sh && chmod +x cf.sh && ./cf.sh
#install v2ray
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL V2RAY ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpnnnnnn}/ins-xray.sh && chmod +x ins-xray.sh && screen -S xray ./ins-xray.sh
#install ssh ovpn
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL SSH-CDN ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpn}/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
wget https://${bzvpnn}/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
#install ssr
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL SSR ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpnnn}/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget https://${bzvpnnnn}/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
#installwg
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL WG ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpnnnnn}/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
#install L2TP
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL L2TP ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpnnnnnnn}/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
wget https://${bzvpnnnnnnnn}/set-br.sh && chmod +x set-br.sh && ./set-br.sh
# Websocket
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL WEBSOCKET ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpnnnnnnnnn}/websocket.sh && chmod +x websocket.sh && ./websocket.sh
# Ohp Server
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL OHP ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
sleep 2
wget https://${bzvpnnnnnnnnnn}/ohp.sh && chmod +x ohp.sh && ./ohp.sh
wget https://${bzvpnnnnnnnnnn}/ohp-dropbear.sh && chmod +x ohp-dropbear.sh && ./ohp-dropbear.sh
wget https://${bzvpnnnnnnnnnn}/ohp-ssh.sh && chmod +x ohp-ssh.sh && ./ohp-ssh.sh

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ INSTALL SLOW DNS ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
wget -q -O /tmp/nameserver "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/slowdns/nameserver"
chmod +x /tmp/nameserver
bash /tmp/nameserver | tee /root/install.log

rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-xray.sh
rm -f /root/ipsec.sh
rm -f /root/set-br.sh
rm -f /root/websocket.sh
rm -f /root/ohp.sh
rm -f /root/ohp-dropbear.sh
rm -f /root/ohp-ssh.sh
