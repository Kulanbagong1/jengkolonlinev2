#!/bin/bash
# My Telegram : https://t.me/Jengkol_Online
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
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$( curl https://Kulanbagong1.github.io/izin | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Admin!!"
#echo -e "${NC}${LIGHT}Facebook : https://m.facebook.com/Anuybazoelk639"
echo -e "${NC}${LIGHT}WhatsApp : 082372139631"
#echo -e "${NC}${LIGHT}WhatsApp : 081774970898"
#echo -e "${NC}${LIGHT}Youtube : youtube.com/@nyarigratisan"
echo -e "${NC}${LIGHT}Telegram : https://t.me/Jengkol_Online"
#echo -e "${NC}${LIGHT}Telegram : https;//t.me/anuybazoelk639"
exit 0
fi
clear
# Link Hosting Kalian
bzvpn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/backup"

curl https://rclone.org/install.sh | bash
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://${bzvpn}/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user @gmail.com
from anuybazoelk639@gmail.com
password 25Agustus@1990 
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc
cd /usr/bin
wget -O autobackup "https://${bzvpn}/autobackup.sh"
wget -O backup "https://${bzvpn}/backup.sh"
wget -O restore "https://${bzvpn}/restore.sh"
wget -O strt "https://${bzvpn}/strt.sh"
wget -O limitspeed "https://${bzvpn}/limitspeed.sh"
chmod +x autobackup
chmod +x backup
chmod +x restore
chmod +x strt
chmod +x limitspeed
cd
rm -f /root/set-br.sh
