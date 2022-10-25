CD /D "%~dp0"

start    hysteria-windows-amd64  -c   config-tun.json

@echo on
choice /C 123 /T 15 /D 3 /M "1、ip1更新  2、ip2更新  3、跳过"
if errorlevel 3 goto startfq
if errorlevel 2 goto startfq
if errorlevel 1 goto startfq

:startfq
netsh interface ip set address name="wintun" source=static addr=192.168.123.1 mask=255.255.255.0 gateway=none

netsh interface ip add dns "wintun"   223.5.5.5   
netsh interface ip add dns "wintun"   223.6.6.6 

route add 0.0.0.0 mask 0.0.0.0 192.168.123.1    metric 5  
route add 51.158.54.46 mask 255.255.255.255 192.168.1.1  
pause 