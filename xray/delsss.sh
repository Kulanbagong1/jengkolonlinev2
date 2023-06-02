#!/bin/bash
# My Telegram : https://t.me/anuybazoelk
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- icanhazip.com);
IZIN=$( curl https://Kulanbagong1.github.io/izin | grep $MYIP )
echo "Memeriksa Hak Akses VPS..."
if [ $MYIP = $IZIN ]; then
clear
echo -e "${CYAN}Akses Diizinkan...${off}"
sleep 1
else
clear
echo -e "${PURPLE}Akses Diblokir!${off}"
echo "Hanya Untuk Pengguna Berbayar!"
echo "Silahkan Hubungi Admin"
exit 0
fi
clear
echo "Checking VPS"
clear
#source /var/lib/bzstorevpn/ipvps.conf
#if [[ "$IP" = "" ]]; then
#domain=$(cat /etc/xray/domain)
#else
#domain=$IP
#fi
#clear
#NUMBER_OF_CLIENTS=$(grep -E "^##&# " "/etc/xray/config.json" | sort | uniq | cut -d ' ' -f 2 | wc -l)
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		clear
		echo ""
		echo "You have no existing clients!"
		exit 1
	fi

	clear
	echo ""
	echo " Select the existing client you want to remove"
	echo " Press CTRL+C to return"
	echo " ==============================="
	echo "     No  Expired   User"
	grep -E "^##&# " "/etc/xray/config.json" | cut -d ' ' -f 2-3 | sort | uniq | column -t | nl -s ') '
	until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
		if [[ ${CLIENT_NUMBER} == '1' ]]; then
			read -rp "Pilih salah satu[1]: " CLIENT_NUMBER
		else
			read -rp "Pilih salah satu [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
		fi
	done
# match the selected number to a client name
user=$(grep -E "^##&# " "/etc/xray/config.json" | sort | uniq | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^##&# " "/etc/xray/config.json" | sort | uniq | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
# remove [Peer] block matching $CLIENT_NAME
sed -i "/^##&# $user $exp/,/^},{/d" /etc/xray/config.json
sed -i "/^##&# $user $exp/,/^},{/d" /etc/xray/config.json
rm -f /home/vps/public_html/ss-ws-${user}.txt
rm -f /home/vps/public_html/ss-grpc-${user}.txt
systemctl restart xray.service
systemctl restart xray
clear
echo ""
echo "==========================="
echo "SHADOWSOCKS Account Deleted"
echo "==========================="
echo "Username  : $user"
echo "Expired   : $exp"
echo "==========================="
echo "Script Mod By JengkolOnline"
