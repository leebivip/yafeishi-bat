@echo off
title chang_ip_for_xp by yafeishi
rem eth //eth Ϊ�������ƣ��������������в�ѯ����"��������"
set eth="��������"
rem ip //ip Ϊ������ĵ�IP
set ip=192.168.1.201
rem gw //gw Ϊ���ص�ַ
set gw=192.168.1.254
rem netmask //netmasks Ϊ��������
set netmask=255.255.255.0
set dns=8.8.8.8
rem set dns=202.102.24.35

echo ���ڽ�����IP���ĵ�: %ip%
echo ���ڽ��������ظ��ĵ�: %gw%
netsh interface ip set address %eth% static %ip% %netmask% %gw% 
netsh interface ip set dns     %eth% static %dns% primary