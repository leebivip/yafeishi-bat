@echo off
set /p s=��ѡ����Ҫ���еĲ���:
if "%s%"=="1" goto :1
if "%s%"=="2" goto :2

:1
echo 1
goto end

:2 
echo 2
goto end

:end 
echo bye 
pause
