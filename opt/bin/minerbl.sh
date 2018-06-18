#!/bin/sh

echo Download List
wget -O /opt/etc/miner.conf https://zerodot1.gitlab.io/CoinBlockerLists/list.txt

echo Format Block List
cd /opt/etc/
sed -i "/myètherwället.com/d; /myètherwället.com/d" miner.conf
sed -i 's/.*/ipset=\/&\/miner/' miner.conf