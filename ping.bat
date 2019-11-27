@echo off
mode con: cols=53 lines=4
echo "This file may need to be ran as Administrator"
set /P IPADDRESS="IP or Host Name: "
Title ping %IPADDRESS%
set INTERVAL=1
:PINGINTERVAL
ping %IPADDRESS% -n 1 | find "TTL="
if errorlevel 1 (set itscolour=40 & echo FAIL!) ELSE (set itscolour=20)
color %itscolour%
timeout %INTERVAL%
cls
GOTO PINGINTERVAL
