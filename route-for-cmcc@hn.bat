@echo off
route delete 0.0.0.0
route add 0.0.0.0 mask 0.0.0.0 10.60.0.1
route add 10.154.0.0 mask 255.255.255.128 10.154.63.1