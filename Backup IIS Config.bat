@echo off
mode con: cols=90 lines=15
set /p BN= Backup Name:

cd C:\Windows\System32\inetsrv

appcmd add backup %BN%

REM @echo Backup %BN% created

cd C:\Windows\System32\inetsrv\backup
start .

Pause

exit