#!/bin/sh

echo Download list

URLS="https://gitlab.com/ZeroDot1/CoinBlockerLists/raw/master/list.txt \
https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt"

wget -q -O- $URLS > /opt/etc/blacklist.conf

echo Generation BlackList
cd /opt/etc/
sed -i '/^#/d;/^$/d' blacklist.conf
sed -i 's/0.0.0.0 //g' blacklist.conf
sed -i '/vortex.data.microsoft.com/d; /vortex-win.data.microsoft.com/d' blacklist.conf
sed -i 's/.*/ipset=\/&\/blocked/' blacklist.conf

echo Restart dnsmasq
ipset flush blocked
killall -q dnsmasq
/usr/sbin/dnsmasq
