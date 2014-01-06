@echo off
route delete 0.0.0.0
route add 0.0.0.0 mask 0.0.0.0 10.10.201.1
route add 10.0.0.0 mask 255.0.0.0 192.168.11.1
route add 192.168.11.0 mask 255.255.255.0 192.168.11.1
route add 192.168.10.0 mask 255.255.255.0 192.168.11.1