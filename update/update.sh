#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
    echo "You need to run this script as root"
    exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
    echo "OpenVZ is not supported"
    exit 1
fi
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
# Link Hosting Kalian
bzvpn="raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/ssh"
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
echo -e "========================================"
echo " RUS SCRIPT MEMBUTUHKAN WAKTU MOHON BERSABAR"
echo -e "========================================"
sleep 3
clear
wget -O sssmenu "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/sssmenu.sh"
wget -O sshovpnmenu "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/sshovpn.sh"
wget -O l2tpmenu "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/l2tpmenu.sh"
wget -O pptpmenu "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/pptpmenu.sh"
wget -O sstpmenu "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/sstpmenu.sh"
wget -O wgmenu "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/wgmenu.sh"
wget -O ssmenu "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/ssmenu.sh"
wget -O ssrmenu "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/ssrmenu.sh"
wget -O vmessmenu "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/vmessmenu.sh"
wget -O vlessmenu "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/vlessmenu.sh"
wget -O trmenu "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/trmenu.sh"
wget -O trgomenu "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/trgomenu.sh"
wget -O setmenu "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/setmenu.sh"
wget -O running "https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/update/running.sh"
wget -O cekxray "https://raw.githubusercontent.com/myridwan/src/ipuk/cekxray.sh"
wget -O portovpn "https://${bzvpn}/portovpn.sh"
wget -O portwg "https://${bzvpn}/portwg.sh"
wget -O porttrojan "https://${bzvpn}/porttrojan.sh"
wget -O portsstp "https://${bzvpn}/portsstp.sh"
wget -O portsquid "https://${bzvpn}/portsquid.sh"
wget -O portvlm "https://${bzvpn}/portvlm.sh"
wget -O xp "https://${bzvpn}/xp.sh"
wget -O swapkvm "https://${bzvpn}/swapkvm.sh"

#chmod
chmod +x sssmenu
chmod +x sshovpnmenu 
chmod +x l2tpmenu 
chmod +x pptpmenu
chmod +x sstpmenu
chmod +x wgmenu
chmod +x ssmenu
chmod +x ssrmenu
chmod +x vmessmenu
chmod +x vlessmenu
chmod +x trmenu
chmod +x trgomenu
chmod +x setmenu
chmod +x running
chmod +x cekxray
chmod +x portovpn
chmod +x portwg
chmod +x porttrojan
chmod +x portsstp
chmod +x portsquid
chmod +x portvlm
chmod +x xp
chmod +x swapkvm
reboot
