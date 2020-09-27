#!/bin/sh

echo Download List
wget -O /opt/etc/msblock.conf https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt

echo Generation Block List
cd /opt/etc/
sed -i '/^#/d;/^$/d' msblock.conf
sed -i 's/0.0.0.0 //g' msblock.conf
sed -i '/vortex.data.microsoft.com/d; /vortex-win.data.microsoft.com/d' msblock.conf
sed -i 's/.*/ipset=\/&\/msbl/' msblock.conf

echo Restart dnsmasq
ipset flush msbl
killall -q dnsmasq
/usr/sbin/dnsmasq
