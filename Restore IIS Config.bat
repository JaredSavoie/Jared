rem This file needs to be ranas administrator

@echo off
mode con: cols=90 lines=15
cd C:\Windows\System32\inetsrv
appcmd list backup

set /p BN= Backup Name:

cd C:\Windows\System32\inetsrv
appcmd restore backup %BN%

REM @echo Backup %BN% Restored

Pause

exit
