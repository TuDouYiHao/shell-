#!/usr/bin/env bash
#
#Author:BlackXYQ
#Date:2019/4/2
# Use: change network


read -p "Pleace inpute your ip : "  ip


echo "
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=none			
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
NAME=ens33
DEVICE=ens33
ONBOOT=yes
IPADDR=$ip
PREFIX=24
GATEWAY=10.3.145.1
DNS1=114.114.114.114
    " > /etc/sysconfig/network-scripts/ifcfg-ens33

if [ $? -eq 0 ];then

systemctl restart network
else
printf "\e[1;33m你的ip地址有问题！！！\e[0m"
fi
