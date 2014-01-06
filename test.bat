@echo off 
set eth="本地连接"
set netmask=255.255.255.0
set gw=192.168.104.1
set dns=192.168.104.1
set ip=115
set timeout=500
set baidu=123.125.114.144
for /f "delims=*" %%i in ( 'ping -n 2 -w %%timeout%% %%baidu%% ^| findstr "回复" ')  do set huifu=%%i
echo %huifu%
if "%huifu%"=="" ( echo huifu is null) else ( echo huifu is not null)
pause