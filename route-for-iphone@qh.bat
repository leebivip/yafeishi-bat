@echo off
route delete 0.0.0.0
route add 0.0.0.0 mask 0.0.0.0 172.20.10.1 
route add 135.0.0.0 mask 255.0.0.0 192.168.30.1
route add 192.168.0.0 mask 255.255.0.0 192.168.30.1