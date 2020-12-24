# xderm-badvpn-tun2socks
**1. xderm method = redsocks tcp socks5 + badvpn-tun2socks**
<br>
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/xderm-badvpn-tun2socks/main/install.sh" -O ~/install.sh && chmod +x ~/install.sh && ~/./install.sh

**2. xderm method = redsocks tcp socks4 + badvpn-tun2socks**
<br>
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/xderm-badvpn-tun2socks/main/sok4/install.sh" -O ~/install.sh && chmod +x ~/install.sh && ~/./install.sh

**3. xderm method = redsocks tcp socks4 + badvpn-tun2socks (beda sett iptables)**
<br>
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/xderm-badvpn-tun2socks/main/sok4-beda-iptables/install.sh" -O ~/install.sh && chmod +x ~/install.sh && ~/./install.sh
**4. xderm method = direct badvpn-tun2socks (paling stabil tapi harus pass port udpgwnya kalau engga gabakalan konek)**
<br>
wget --no-check-certificate "https://raw.githubusercontent.com/wegare123/xderm-badvpn-tun2socks/main/direct-badvpn/install.sh" -O ~/install.sh && chmod +x ~/install.sh && ~/./install.sh

**#jika muncul ./install.sh not found ikuti arahan dibawah ini:**
<br>
1. nano install.sh
2. Ubah #!/bin/bash jadi #!/bin/sh
3. ./install.sh
