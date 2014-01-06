@echo off
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t reg_sz /d "192.168.10.167:808" /f
taskkill /f /t /im IEXPLORE.exe
"C:\Program Files (x86)\Internet Explorer\iexplore.exe"