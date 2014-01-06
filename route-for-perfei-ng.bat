@echo off
route delete 0.0.0.0
route add 0.0.0.0 mask 0.0.0.0 192.168.0.1 
route add 135.0.0.0 mask 255.0.0.0 192.168.30.1