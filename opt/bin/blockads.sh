#!/bin/sh

echo List Generation

URLS="http://adaway.org/hosts.txt \
https://hosts-file.net/.%5Cad_servers.txt \
https://mirror.cedia.org.ec/malwaredomains/domains.hosts \
http://winhelp2002.mvps.org/hosts.txt \
https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext \
https://www.malwaredomainlist.com/hostslist/hosts.txt \
https://zeustracker.abuse.ch/blocklist.php?download=hostfile \
https://zerodot1.gitlab.io/CoinBlockerLists/hosts"

wget  -T40 -q -O- $URLS | grep -v "^#" | cut -d "#" -f 1 | sed 's/127\.0\.0\.1/0\.0\.0\.0/' | grep "^0.0.0.0" | sed 's/  */ /g' | sed 's/\t/ /g' |sed 's/\r//' | cut -d " " -f 1,2 | tr A-Z a-z | sort | uniq > /opt/etc/hosts/block

echo Clear List

cd /opt/etc/hosts
sed -i '/0.0.0.0 localhost/d' block
sed -i '/0.0.0.0 localhost.localdomain/d' block
sed -i '/0.0.0.0 ad.admitad.com/d' block
sed -i '/0.0.0.0 api.cc.skype.com/d' block
sed -i '/0.0.0.0 api.mcr.skype.com/d' block
sed -i '/0.0.0.0 api.skype.com/d' block
sed -i '/0.0.0.0 avatar.skype.com/d' block
sed -i '/0.0.0.0 b.config.skype.com/d' block
sed -i '/0.0.0.0 client-s.gateway.messenger.live.com/d' block
sed -i '/0.0.0.0 contacts.skype.com/d' block
sed -i '/0.0.0.0 dev.microsofttranslator.com/d' block
sed -i '/0.0.0.0 diagnostics.support.microsoft.akadns.net/d' block
sed -i '/0.0.0.0 diagnostics.support.microsoft.com/d' block
sed -i '/0.0.0.0 edge.skype.com/d' block
sed -i '/0.0.0.0 m.hotmail.com/d' block
sed -i '/0.0.0.0 mobile.pipe.aria.microsoft.com/d' block
sed -i '/0.0.0.0 msftncsi.com/d' block
sed -i '/0.0.0.0 msg.skype.com/d' block
sed -i '/0.0.0.0 next-services.apps.microsoft.com/d' block
sed -i '/0.0.0.0 nexus.officeapps.live.com/d' block
sed -i '/0.0.0.0 profile.skype.com/d' block
sed -i '/0.0.0.0 s.gateway.messenger.live.com/d' block
sed -i '/0.0.0.0 skype.net/d' block
sed -i '/0.0.0.0 ui.skype.com/d' block
sed -i '/0.0.0.0 www.msftncsi.com/d' block
sed -i '/0.0.0.0 stat.online.sberbank.ru/d' block
sed -i '/0.0.0.0 s.click.aliexpress.com/d' block
sed -i '/0.0.0.0 clck.yandex.ru/d' block
sed -i '/0.0.0.0 mc.yandex.ru/d' block
sed -i '/0.0.0.0 yandex.ru/d' block
sed -i '/0.0.0.0 yastatic.net/d' block
sed -i '/0.0.0.0 analytics.mobile.yandex.net/d' block
sed -i '/0.0.0.0 informer.yandex.ru/d' block
sed -i '/0.0.0.0 r.mail.ru/d' block
sed -i '/0.0.0.0 c.fa.jd.com/d' block
sed -i '/0.0.0.0 whale.jd.com/d' block
sed -i '/0.0.0.0 saturn.jd.com/d' block
sed -i '/0.0.0.0 t.paypal.com/d' block
sed -i '/0.0.0.0 b.stats.paypal.com/d' block
sed -i '/0.0.0.0 l.deals.ebay.com/d' block
sed -i '/0.0.0.0 stats.ebay.com/d' block
sed -i '/0.0.0.0 www.ojrq.net/d' block
sed -i '/0.0.0.0 letyshops.com/d' block
sed -i '/0.0.0.0 rutracker.org/d' block
sed -i '/0.0.0.0 nnm-club.me/d' block
sed -i '/0.0.0.0 nnm-club.ws/d' block
sed -i '/0.0.0.0 nnmclub.to/d' block
sed -i '/0.0.0.0 nnm-club.lib/d' block
sed -i '/0.0.0.0 www.google-analytics.com/d' block
sed -i '/0.0.0.0 google-analytics.com/d' block
sed -i '/0.0.0.0 ssl.google-analytics.com/d' block
sed -i '/0.0.0.0 analytics.google.com/d' block
sed -i '/0.0.0.0 id.google.com/d' block
sed -i '/0.0.0.0 connectivitycheck.gstatic.com/d' block
sed -i '/0.0.0.0 badges.instagram.com/d' block
sed -i '/0.0.0.0 graph.instagram.com/d' block
sed -i '/0.0.0.0 au.download.windowsupdate.com/d' block
sed -i '/0.0.0.0 au.v4.download.windowsupdate.com/d' block
sed -i '/0.0.0.0 bg.v4.a.dl.ws.microsoft.com/d' block
sed -i '/0.0.0.0 bg.v4.emdl.ws.microsoft.com/d' block
sed -i '/0.0.0.0 bg1.v4.a.dl.ws.microsoft.com/d' block
sed -i '/0.0.0.0 bg1.v4.emdl.ws.microsoft.com/d' block
sed -i '/0.0.0.0 bg2.v4.a.dl.ws.microsoft.com/d' block
sed -i '/0.0.0.0 bg2.v4.emdl.ws.microsoft.com/d' block
sed -i '/0.0.0.0 bg3.v4.a.dl.ws.microsoft.com/d' block
sed -i '/0.0.0.0 bg3.v4.emdl.ws.microsoft.com/d' block
sed -i '/0.0.0.0 bg4.v4.a.dl.ws.microsoft.com/d' block
sed -i '/0.0.0.0 bg4.v4.emdl.ws.microsoft.com/d' block
sed -i '/0.0.0.0 bg5.v4.a.dl.ws.microsoft.com/d' block
sed -i '/0.0.0.0 bg5.v4.emdl.ws.microsoft.com/d' block
sed -i '/0.0.0.0 ctldl.windowsupdate.com/d' block
sed -i '/0.0.0.0 displaycatalog.mp.microsoft.com/d' block
sed -i '/0.0.0.0 dl.delivery.mp.microsoft.com/d' block
sed -i '/0.0.0.0 download.microsoft.com/d' block
sed -i '/0.0.0.0 download.windowsupdate.com/d' block
sed -i '/0.0.0.0 ds.download.windowsupdate.com/d' block
sed -i '/0.0.0.0 emdl.ws.microsoft.com/d' block
sed -i '/0.0.0.0 fe2.update.microsoft.com/d' block
sed -i '/0.0.0.0 fe2.update.microsoft.com.akadns.net/d' block
sed -i '/0.0.0.0 fe2.wq.microsoft.com/d' block
sed -i '/0.0.0.0 fe2.ws.microsoft.com/d' block
sed -i '/0.0.0.0 fe3.delivery.dsp.mp.microsoft.com.nsatc.net/d' block
sed -i '/0.0.0.0 fe3.delivery.mp.microsoft.com/d' block
sed -i '/0.0.0.0 fg.ds.b1.download.windowsupdate.com/d' block
sed -i '/0.0.0.0 fg.v4.download.windowsupdate.com/d' block
sed -i '/0.0.0.0 microsoftwindowsupdate.net/d' block
sed -i '/0.0.0.0 sls.update.microsoft.com/d' block
sed -i '/0.0.0.0 sls.update.microsoft.com.akadns.net/d' block
sed -i '/0.0.0.0 statsfe1.ws.microsoft.com/d' block
sed -i '/0.0.0.0 statsfe2.update.microsoft.com.akadns.net/d' block
sed -i '/0.0.0.0 statsfe2.ws.microsoft.com/d' block
sed -i '/0.0.0.0 tlu.dl.delivery.mp.microsoft.com/d' block
sed -i '/0.0.0.0 v4.download.windowsupdate.com/d' block
sed -i '/0.0.0.0 windowsupdate.com/d' block
sed -i '/0.0.0.0 windowupdate.org/d' block
sed -i '/0.0.0.0 www.download.windowsupdate.com/d' block
sed -i '/0.0.0.0 alipromo.com/d' block

# Clear Bad Domain
sed -i '/0.0.0.0 www.turkishạirlines.com/d' block
sed -i '/0.0.0.0 ɢoogle.com/d' block
sed -i '/0.0.0.0 secret.ɢoogle.com/d' block
sed -i '/0.0.0.0 myètherwället.com/d' block
sed -i '/0.0.0.0 mÿethèrwallét.com/d' block

echo Restart dnsmasq
killall -SIGHUP dnsmasq