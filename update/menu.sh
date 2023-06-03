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
echo -e "\e[1;97m                   CREATE ACCOUNT              \e[0m"
echo -e "\033[96m────────────────────────────────────────────────────────────${NC}"
echo -e ""
echo -e "   ${grenbo}[1]❇️${NC} ${YELL}MENU SSH&OVPN${NC}       | ${grenbo}[7]❇️${NC} ${YELL}MENU SOWDOWSOKS-R${NC}"
echo -e "   ${grenbo}[2]❇️${NC} ${YELL}MENU VMESS${NC}          | ${grenbo}[8]❇️${NC} ${YELL}MENU L2TP${NC}"
echo -e "   ${grenbo}[3]❇️${NC} ${YELL}MENU VLESS${NC}          | ${grenbo}[9]❇️${NC} ${YELL}MENU PPTP${NC}"
echo -e "   ${grenbo}[4]❇️${NC} ${YELL}MENU TROJAN${NC}         | ${grenbo}[10]❇️${NC} ${YELL}MENU SSTP${NC}"
echo -e "   ${grenbo}[5]❇️${NC} ${YELL}MENU TROJAN GO${NC}      | ${grenbo}[11]❇️${NC} ${YELL}MENU WIREGUARD${NC}"
echo -e "   ${grenbo}[6]❇️${NC} ${YELL}MENU SOWDOWSOKS${NC}     | ${grenbo}[12]❇️${NC} ${YELL}MENU SOWDOWSOKS-LIBEW${NC}"
echo -e "   ${grenbo}[21]✓${NC} ${YELL}BUAT AKUN OPEN CLASH${NC}"
echo -e ""
echo -e "\033[96m────────────────────────────────────────────────────────────${NC}"
echo -e "\e[1;97m                    MENU SETTING              \e[0m"
echo -e "\033[96m────────────────────────────────────────────────────────────${NC}"
echo -e "   ${grenbo}[13]❇️${NC} ${YELL}CEK SERVICE VPS${NC}    | ${grenbo}[16]❇️${NC} ${YELL}EDIT PROT V2RAY${NC}"
echo -e "   ${grenbo}[14]❇️${NC} ${YELL}PENGGATURAN${NC}        | ${grenbo}[17]❇️${NC} ${YELL}ADD NOTIF BOT${NC}"
echo -e "   ${grenbo}[15]❇️${NC} ${YELL}CEK V2RAY${NC}          | ${grenbo}[18]❇️${NC} ${YELL}ADD BOT PANEL${NC}"
echo -e "   ${grenbo}[19]❇️${NC} ${YELL}INSTALL UDP${NC}        | ${grenbo}[20]❇️${NC} ${YELL}CEKER RUNNING${NC}"
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
read -p "   Select From Options [ 1 - 18 or x exit ] : " menu
case $menu in
1) clear ;
    sshovpnmenu
    ;;
2) clear ;
    vmessmenu
    ;;
3) clear ;
    vlessmenu
    ;;
4) clear ;
    trmenu
    ;;
5) clear ;
    trgomenu
    ;;
6) clear ;
    sssmenu
    ;;
7) clear ;
    ssrmenu
    ;;
8) clear ;
    l2tpmenu
    ;;
9) clear ;
    pptpmenu
    ;;      
10) clear ;
    sstpmenu
    ;; 
11) clear ;
    wgmenu
    ;;
19) clear ;
    wget --load-cookies /tmp/cookies.txt ${UDPCORE} -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp
    ;;        
13) clear ;
    running
    ;;
14) clear ;
    setmenu
    ;;
15) clear ;
    cekxray
    ;;
16) clear ;
    nano /etc/xray/config.json
    ;;   
17) clear ;
    bot
    ;;
18) clear ;
    wget https://raw.githubusercontent.com/Kulanbagong1/jengkolonlinev2/main/xolpanel.sh && chmod +x xolpanel.sh && ./xolpanel.sh
    ;;
12) clear ;
    ssmenu
    ;;
20) clear ;
    running
    ;;
21) clear ;
    addopenclash
    ;;
x) clear ;
    exit
    ;;
*) clear ;
    menu
    ;;
esac
