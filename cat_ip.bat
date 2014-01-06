@echo off
echo 本机IP情况如下：
ipconfig -all | findstr "IPv4 地址"
ipconfig -all | findstr "默认网关" 
ipconfig -all | findstr "DNS 服务器" | findstr "服务器"
ping baidu.com
pause