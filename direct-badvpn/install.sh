#!/bin/bash
#mod by wegare
printf 'ctrl+c' | crontab -e > /dev/null
opkg update && opkg install unzip && opkg install openvpn-openssl && opkg install fping
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/xderm-badvpn-tun2socks/main/direct-badvpn/xderm" -O /usr/bin/xderm
chmod +x /usr/bin/xderm
rm -r ~/install.sh
sleep 2
echo "install selesai"
echo "untuk memulai tools silahkan jalankan perintah 'xderm'"

				