#!/bin/bash
 
if [! -f /root/ip.txt];then
echo $(date +%Y"."%m"."%d" "%k":"%M":"%S) > /root/ip.txt
curl http://members.3322.org/dyndns/getip >> /root/ip.txt
fi
 
while var=$(curl http://members.3322.org/dyndns/getip) || true; do
 
iptxt=$(tail -1 /root/ip.txt)
echo $iptxt
echo $var
 
if [ $var != $iptxt ];then
 
echo $(date +%Y"."%m"."%d" "%k":"%M":"%S) >> /root/ip.txt
 
echo "$var" >> /root/ip.txt
 
echo "record ip"
 
else
 
echo "ip is same"
 
fi
 
sleep 60s
done
