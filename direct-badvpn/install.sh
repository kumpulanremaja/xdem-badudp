#!/bin/bash
#mod by wegare
printf 'ctrl+c' | crontab -e > /dev/null
opkg update && opkg install unzip && opkg install openvpn-openssl && opkg install fping && opkg install python-pip screen redsocks coreutils-timeout openssl-util curl ncat openssh-client
cek=$(cat /etc/openwrt_r*)
if [[ $cek == *"LEDE"* ]] && [[ $cek == *"ar71xx"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/lede/ar71xx.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/ar71xx/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/ar71xx
elif [[ $cek == *"LEDE"* ]] && [[ $cek == *"brcm63xx"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/lede/brcm63xx.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/brcm63xx/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/brcm63xx
elif [[ $cek == *"LEDE"* ]] && [[ $cek == *"ramips"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/lede/ramips.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/ramips/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/ramips
elif [[ $cek == *"LEDE"* ]] && [[ $cek == *"sunxi"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/lede/sunxi.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/sunxi/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/sunxi
elif [[ $cek == *"Chaos Calmer"* ]] && [[ $cek == *"ar71xx"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/cc/ar71xx.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/ar71xx/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/ar71xx
elif [[ $cek == *"Chaos Calmer"* ]] && [[ $cek == *"brcm63xx"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/cc/brcm63xx.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/brcm63xx/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/brcm63xx
elif [[ $cek == *"Chaos Calmer"* ]] && [[ $cek == *"ramips"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/cc/ramips.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/ramips/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/ramips
elif [[ $cek == *"Chaos Calmer"* ]] && [[ $cek == *"sunxi"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/cc/sunxi.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/sunxi/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/sunxi
elif [[ $cek == *"OpenWrt"* ]] && [[ $cek == *"aarch64_cortex-a53"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/openwrt/sunxi.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/sunxi/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/sunxi
elif [[ $cek == *"OpenWrt"* ]] && [[ $cek == *"mips_24kc"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/openwrt/ar71xx.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/ar71xx/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/ar71xx
elif [[ $cek == *"OpenWrt"* ]] && [[ $cek == *"mipsel_24kc"* ]]; then
wget --no-check-certificate "https://github.com/wegare123/backup/blob/main/openwrt/ramips.zip?raw=true" -O ~/ekstrak.zip && unzip ~/ekstrak.zip && cp ~/ramips/*.ipk ~/ && rm -rf ~/ekstrak.zip && rm -rf ~/ramips
else
echo -e "version anda tidak terdeteksi!"
exit
fi
cek=$(cat /etc/openwrt_r*)
if [[ $cek == *"Chaos Calmer"* ]]; then
opkg update && opkg install kmod-ipv6 ip6tables radvd ip 6to4
fi
mkdir -p /usr/bin/assh/
echo -e "mode '1'\npayload 'CONNECT / HTTP/1.1[crlf]Host: i.ytimg.com[crlf]Connection: Keep-Alive[crlf]Content-Length: False[crlf]Host: [host_port][crlf][crlf]'\nsni 'googlevideo.com'\nip '202.152.240.50:8080'\nproxy '202.152.240.50'\nport '8080'" > /usr/bin/assh/profile.txt
mkdir -p /usr/bin/assh/
echo -e "blacksheepID\nxxxx\n22\nvip.jagoanssh.com\n" > /usr/bin/assh/akun.txt
opkg install ip-full && opkg install *.ipk
rm -r ~/*.ipk
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/xderm-badvpn-tun2socks/main/direct-badvpn/xderm" -O /usr/bin/xderm
chmod +x /usr/bin/xderm
rm -r ~/install.sh
sleep 2
echo "install selesai"
echo "untuk memulai tools silahkan jalankan perintah 'xderm'"

				