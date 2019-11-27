rem This file needs to be ranas administrator
rem for more information on the commands look here https://sid-500.com/2017/08/08/windows-server-2016-evaluation-how-to-extend-the-trial-period/
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
