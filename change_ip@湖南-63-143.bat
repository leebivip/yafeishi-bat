@echo off
title chang_ip_for_xp by yafeishi
rem eth //eth Ϊ�������ƣ��������������в�ѯ����"��������"
set eth="��������"
rem ip //ip Ϊ������ĵ�IP
set ip=10.154.63.143
rem gw //gw Ϊ���ص�ַ
set gw=10.154.63.1
rem netmask //netmasks Ϊ��������
set netmask=255.255.255.0
rem set dns=114.114.114.114
rem set dns=202.102.24.35
rem set dns=8.8.8.8
rem set dns=218.2.135.1

echo ���ڽ�����IP���ĵ�: %ip%
echo ���ڽ��������ظ��ĵ�: %gw%
netsh interface ip set address %eth% static %ip% %netmask% %gw% 
route add 10.154.59.0 mask 255.255.255.0 10.154.63.1
echo......................... 
echo ��鵱ǰ����IP��
ipconfig 
echo.........................
echo �ɹ�������IP����Ϊ%ip%��
close