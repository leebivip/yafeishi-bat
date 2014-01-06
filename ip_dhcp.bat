@echo off
netsh interface IP set Address "本地连接" DHCP 
netsh interface IP set dns     "本地连接" DHCP 

