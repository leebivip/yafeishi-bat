@echo off 
set eth="��������"
set netmask=255.255.255.0
set gw=192.168.104.1
set dns=192.168.104.1
set ip=110
set timeout=500
set baidu=123.125.114.144
echo.
echo --------------------���104���ĸ�IP��������-------------
echo --------����IP�б�--------------  > keyongip.txt
echo --------������IP�б�--------------  > bukeyongip.txt

:loop
netsh interface ip set address %eth% static 192.168.104.%ip% %netmask% %gw%
netsh interface ip set dns     %eth% static %dns% primary
echo --------------���ڼ�� 192.168.104.%ip% --------------------
rem ping -n 2 -w %timeout% %baidu% | find "�ظ�"
for /f "delims=*" %%i in ( 'ping -n 2 -w %%timeout%% %%baidu%% ^| findstr "�ظ�" ')  do set huifu=%%i
echo huifu is :%huifu%
if "%huifu%"=="" ( echo 192.168.104.%ip% >>  bukeyongip.txt) else ( echo 192.168.104.%ip% >>  keyongip.txt)  
set /a ip=%ip%+1
if %ip% EQU 255 goto :end
goto :loop
pause