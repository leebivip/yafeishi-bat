@echo off
echo ����IP������£�
ipconfig -all | findstr "IPv4 ��ַ"
ipconfig -all | findstr "Ĭ������" 
ipconfig -all | findstr "DNS ������" | findstr "������"
ping baidu.com
pause