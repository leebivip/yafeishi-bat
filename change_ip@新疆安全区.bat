@echo off
title chang_ip_for_xp by yafeishi
rem eth //eth 为网卡名称，可在网络连接中查询，如"本地连接"
set eth="本地连接"
rem ip //ip 为你想更改的IP
set ip=10.154.63.143
rem gw //gw 为网关地址
set gw=10.154.63.1
rem netmask //netmasks 为子网掩码
set netmask=255.255.255.0
set dns=10.154.61.207
//set dns=202.102.24.35

echo 正在将本机IP更改到: %ip%
echo 正在将本机网关更改到: %gw%
netsh interface ip set address %eth% static %ip% %netmask% %gw% 
netsh interface ip set dns     %eth% static %dns% primary
echo......................... 
echo 检查当前本机IP：
ipconfig 
echo.........................
echo 成功将本机IP更改为%ip%！
close