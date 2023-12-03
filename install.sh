RED="\e[1;31m"
GREEN="\e[1;32m"
ENDCOLOR="\e[0m"

clear
echo -e "${GREEN}Installing Proxy...${ENDCOLOR}"
sleep 1
if [ -f "snow" ]; then
    echo -e "${RED}Deleting old proxy...${ENDCOLOR}"
    rm snow
    sleep 1
    echo -e "${GREEN}Updating proxy...${ENDCOLOR}"
fi
echo -e "${GREEN}Checking Termux Installer..."
pkg update
pkg upgrade
pkg install openssl
pkg install curl
pkg install libenet
pkg install wget
clear
wget -q https://github.com/SnowProxys/SnowProxy/raw/main/snow
sleep 1
echo -e "${GREEN}SnowProxy is now Installed${ENDCOLOR}"
echo -e "${RED}Snow Proxy Premium${ENDCOLOR}"
sleep 2
echo -e "${GREEN}Execute proxy with this command: ./snow${ENDCOLOR}"
chmod +x snow
