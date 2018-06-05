#!/bin/sh

echo Download List
wget -O /opt/etc/msblock.conf https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt

echo Format Block List
cd /opt/etc/
sed -i '/^#/d;/^$/d' msblock.conf
sed -i 's/0.0.0.0 //g' msblock.conf
sed -i 's/.*/ipset=\/&\/MSBLOCK/' msblock.conf