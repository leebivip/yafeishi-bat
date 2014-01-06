@echo off
netsh wlan set hostednetwork mode=allow
 
netsh wlan set hostednetwork ssid=dang
 
netsh wlan set hostednetwork key=12345678 keyusage=persistent

netsh wlan start hostednetwork