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
Repo1="https://raw.githubusercontent.com/Kulanbagong1/izinn/main/"
#ISP=$(cat /etc/xray/isp)
NS=$(cat /etc/xray/dns)
#CITY=$(cat /etc/xray/city)
IPVPS=$(curl -s ipv4.icanhazip.com)
domain=$(cat /etc/xray/domain)
RAM=$(free -m | awk 'NR==2 {print $2}')
USAGERAM=$(free -m | awk 'NR==2 {print $3}')
MEMOFREE=$(printf '%-1s' "$(free -m | awk 'NR==2{printf "%.2f%", $3*100/$2 }')")
LOADCPU=$(printf '%-0.00001s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
MODEL=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
CORE=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
Namee="JengkolOnline | Abdullah | Premium Script"
DATEVPS=$(date +'%d/%m/%Y')
TIMEZONE=$(printf '%(%H:%M:%S)T')
SERONLINE=$(uptime -p | cut -d " " -f 2-10000)


ttoday="$(vnstat | grep today | awk '{print $8" "substr ($9, 1, 3)}' | head -1)"
bmon="$(vnstat -m | grep `date +%G-%m` | awk '{print $8" "substr ($9, 1 ,3)}' | head -1)"

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
echo -e "\e[1;97m                   Menu TROJAN             \e[0m"
echo -e "\033[96m────────────────────────────────────────────────────────────${NC}"
echo -e ""
echo -e "   ${grenbo}[1]❇️${NC} ${YELL}Create Akun TROJAN${NC}"
echo -e "   ${grenbo}[2]❇️${NC} ${YELL}Delete Akun TROJAN${NC}"
echo -e "   ${grenbo}[3]❇️${NC} ${YELL}Extending Account TROJAN Active Life{NC}"
echo -e "   ${grenbo}[4]❇️${NC} ${YELL}Show Check User TROJAN{NC}"
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
read -p "   Select From Options [ 1 - 4 or x exit ] : " menu
case $menu in
1) clear ;
    addtrojan
    ;;
2) clear ;
    deltrojan
    ;;
3) clear ;
    renewtrojan
    ;;   
4) clear ;
    cektrojan
    ;;
x) clear ;
   exit
   ;;
*) clear ;
    menu
    ;;
esac
