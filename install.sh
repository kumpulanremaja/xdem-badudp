#!/bin/bash
#stl (Wegare)
wget -O ~/badvpn.ipk "https://github.com/wegare123/stl-tunnel/blob/main/badvpn_1.999.130-1_aarch64_cortex-a53.ipk?raw=true"
wget -O /usr/bin/xderm "https://raw.githubusercontent.com/wegare123/xderm-badvpn-tun2socks/main/xderm"
opkg update && opkg install badvpn.ipk
chmod +x /usr/bin/xderm
rm -r ~/badvpn.ipk
rm -r ~/install.sh
sleep 2
echo "install selesai"
echo "untuk memulai tools silahkan jalankan perintah 'xderm'"

				