@echo off
title chang_ip_for_xp by yafeishi
rem eth //eth Ϊ�������ƣ��������������в�ѯ����"��������"
set eth="��������"
rem ip //ip Ϊ������ĵ�IP
set ip=192.168.15.84
rem gw //gw Ϊ���ص�ַ
set gw=192.168.15.254
rem netmask //netmasks Ϊ��������
set netmask=255.255.255.0
rem set dns=10.238.75.16
rem set dns=202.102.24.35
rem set dns=8.8.8.8
set dns=10.20.1.3

echo ���ڽ�����IP���ĵ�: %ip%
echo ���ڽ��������ظ��ĵ�: %gw%
netsh interface ip set address %eth% static %ip% %netmask% %gw% 
netsh interface ip set dns     %eth% static %dns% primary
echo......................... 
echo ��鵱ǰ����IP��
ipconfig 
echo.........................
echo �ɹ�������IP����Ϊ%ip%��
close