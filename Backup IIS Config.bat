@echo off
mode con: cols=90 lines=15
:loop
set /p BN= Backup Name:

cd C:\Windows\System32\inetsrv

appcmd add backup %BN%

if errorlevel 1 (
color 40
goto loop) ELSE ( 
color 20)


cd C:\Windows\System32\inetsrv\backup
start .

rem Pause

exit
