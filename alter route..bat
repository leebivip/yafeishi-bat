@echo off
route delete 0.0.0.0
route add 0.0.0.0 mask 0.0.0.0 111.12.146.1 
route add 135.0.0.0 mask 255.0.0.0 192.168.34.1