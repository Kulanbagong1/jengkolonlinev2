#!/bin/bash
clear
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/Kulanbagong1/izinn/main/ip"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/Jengkol_Online"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6282372139631"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear
RED='\033[0;31m'
NC='\e[0m'
gray="\e[1;30m"
Blue="\033[1;36m"
GREEN='\033[0;32m'
grenbo="\033[1;95m"
YELL='\033[1;33m'
BGX="\033[42m"
#UPDATE="https://raw.githubusercontent.com/Kulanbagong1/scvps/main/"
#BOT="https://raw.githubusercontent.com/rizkihdyt6/Panel/main/"
Repo1="https://raw.githubusercontent.com/Kulanbagong1/izinn/main/"
#UDPCORE="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
#ISP=$(cat /etc/xray/isp)
NS=$(cat /etc/xray/dns)
#CITY=$(cat /etc/xray/city)
IPVPS=$(curl -s ipv4.icanhazip.com)
domain=$(cat /etc/xray/domain)
RAM=$(free -m | awk 'NR==2 {print $2}')
#USAGERAM=$(free -m | awk 'NR==2 {print $3}')
#MEMOFREE=$(printf '%-1s' "$(free -m | awk 'NR==2{printf "%.2f%", $3*100/$2 }')")
#LOADCPU=$(printf '%-0.00001s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
MODEL=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
CORE=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
Namee="JengkolOnline | Abdullah | Premium Script"
DATEVPS=$(date +'%d/%m/%Y')
TIMEZONE=$(printf '%(%H:%M:%S)T')
SERONLINE=$(uptime -p | cut -d " " -f 2-10000)


#ttoday="$(vnstat | grep today | awk '{print $8" "substr ($9, 1, 3)}' | head -1)"
#bmon="$(vnstat -m | grep `date +%G-%m` | awk '{print $8" "substr ($9, 1 ,3)}' | head -1)"

# // Exporting IP Address
export MYIP=$( curl -s https://ipinfo.io/ip/ )
Name=$(curl -sS ${Repo1}ip | grep $MYIP | awk '{print $2}')
Exp=$(curl -sS ${Repo1}ip | grep $MYIP | awk '{print $3}')

clear
echo -e "\033[96m┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "\e[1;97m               PROJECT AUTOSCRIPT VPN      \e[0m"
echo -e "\033[96m────────────────────────────────────────────────────────────${NC}"
echo -e "\e[1;97m                     INFORMATION                \e[0m"
echo -e "\033[96m────────────────────────────────────────────────────────────${NC}"
echo -e ""
echo -e "   ${YELL}System OS${NC}     :   ${putih}$MODEL${NC}"
echo -e "   ${YELL}Server RAM${NC}    :   ${putih}$RAM MB $NC"
echo -e "   ${YELL}Uptime Server${NC} :   ${putih}$SERONLINE${NC}"
echo -e "   ${YELL}Core System${NC}   :   ${putih}$CORE${NC}"
echo -e "   ${YELL}Date${NC}          :   ${putih}$DATEVPS${NC}"
echo -e "   ${YELL}Time${NC}          :   ${putih}$TIMEZONE${NC}"
echo -e "   ${YELL}Domain${NC}        :   ${putih}$domain${NC}"
echo -e "   ${YELL}NS Domain${NC}     :   ${putih}$NS${NC}"
echo -e ""
echo -e "\033[96m└────────────────────────────────────────────────────────────┘${NC}"
echo -e "\033[96m┌────────────────────────────────────────────────────────────┐${NC}"
echo -e "\e[1;97m                   Menu PENGATURAN              \e[0m"
echo -e "\033[96m────────────────────────────────────────────────────────────${NC}"
echo -e ""
echo -e "❇️ 1) Add Host Atau Domain Anda                                          "
echo -e "❇️ 2) Edit Port Vps                                                   "
echo -e "❇️ 3) Autobackup Data VPS                                                "
echo -e "❇️ 4) Backup Data VPS                                                "
echo -e "❇️ 5) Restore Data VPS                                            "
echo -e "❇️ 6) Webmin Menu                                          "
echo -e "❇️ 7) Limit Bandwith Speed Server                                          "
echo -e "❇️ 8) Check Usage of VPS Ram                                                 "
echo -e "❇️ 9) Reboot VPS                                               "
echo -e "❇️ 10) Speedtest VPS                                         "
echo -e "❇️ 11) Displaying System                                            "
echo -e "❇️ 12) Info Script DecrytorId                                            "
echo -e "❇️ 13) EDIT BANNER                                                "
echo -e "❇️ 14) Restart Script/ Run Script"
echo -e "\033[96m────────────────────────────────────────────────────────────${NC}"
echo -e "\e[1;97m                INSTALL PANEL HOSTING FREE & Lainnya              \e[0m"
echo -e "\033[96m────────────────────────────────────────────────────────────${NC}"
echo -e "❇️ 15) VESTA PANELL HOSTING"
echo -e "❇️ 16) UDP Server Panel"
echo -e "❇️ 17) INSTAL X-UI Panell v1.6.1"
echo -e "❇️ 18) INSTAL PTRODECTIL Panel"
echo -e "❇️ 19) INSTAL CyberPanel"
echo -e ""
echo -e "\033[96m────────────────────────────────────────────────────────────${NC}"
echo -e "\e[1;97m                    NEWBIE TUNNEL              \e[0m"
echo -e "\033[96m────────────────────────────────────────────────────────────${NC}"
echo -e ""
echo -e "   ${YELL}IP VPS${NC}        :  ${putih}$IPVPS${NC}"
echo -e "   ${YELL}Client Name${NC}   :  ${putih}$Name${NC}"
echo -e "   ${YELL}Exp Script${NC}    :  ${putih}$Exp${NC}"
echo -e "   ${YELL}Name Author${NC}   :  ${putih}$Namee${NC}"
echo -e ""
echo -e "\033[96m└────────────────────────────────────────────────────────────┘${NC}"
echo -e ""
read -p "   Select From Options [ 1 - 14 or x exit ] : " menu
case $menu in
1) clear ;
    addhost
    ;;
2) clear ;
    changeport
    ;;
3) clear ;
    autobackup
    ;;
4) clear ;
    backup
    ;;
5) clear ;
    restore
    ;;
6) clear ;
    webmin
    ;;
7) clear ;
    limitspeed
    ;;
8) clear ;
    ram
    ;;
9) clear ;
    reboot
    ;;
10) clear ;
    speedtest
    ;;
11) clear ;
    info
    ;;
12) clear ;
    about
    ;;
13) clear ;
    nano /etc/issue.net
    ;;
14) clear ;
    update
    ;;             
15) clear ;
    curl http://vestacp.com/pub/vst-install.sh | bash
    ;;
16) clear ;
    wget https://raw.githubusercontent.com/rudi9999/SocksIP-udpServer/main/UDPserver.sh; chmod +x UDPserver.sh; ./UDPserver.sh
    ;;
17) clear ;
    bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh) v1.6.1
    ;;
18) clear ;
    bash <(curl -s https://pterodactyl-installer.se)
    ;;
19) clear ;
    wget -O installer.sh https://cyberpanel.net/install.sh && chmod +x install.sh && ./install.sh
    ;;
x) clear ;
   exit
   ;;
*) clear ;
    menu
    ;;
esac
