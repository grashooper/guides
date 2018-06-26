#!/bin/sh

echo Download List
wget -O /opt/etc/miner.conf https://gitlab.com/ZeroDot1/CoinBlockerLists/raw/master/list_browser.txt

echo Generation Block List
cd /opt/etc/
sed -i 's/.*/ipset=\/&\/miner/' miner.conf

echo Restart dnsmasq
killall -SIGHUP dnsmasq