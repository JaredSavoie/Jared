@echo off
echo "This script must be ran as Administrator"
pause

rem stop services

::-------------------------------------------------------------------------------

net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver

::-------------------------------------------------------------------------------

rem rename SoftwareDistribution folder and delete the SoftwareDistribution.old

::-------------------------------------------------------------------------------

ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
cd C:\Windows\SoftwareDistribution.old
DEL /F/Q/S *.* > NUL
cd..
start.
RMDIR /Q/S SoftwareDistribution.old

::-------------------------------------------------------------------------------

rem rename CatRoot2 folder and delete the CatRoot2.old

::-------------------------------------------------------------------------------

ren C:\Windows\System32\CatRoot2 CatRoot2.old
cd C:\Windows\System32\CatRoot2.old
DEL /F/Q/S *.* > NUL
cd..
start.
RMDIR /Q/S CatRoot2.old

::-------------------------------------------------------------------------------

rem start services

::-------------------------------------------------------------------------------

net start wuauserv
net start cryptSvc
net start bits
net start msiserver

::-------------------------------------------------------------------------------
