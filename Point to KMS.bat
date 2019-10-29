ECHO off
set /P KMSSERV="Input KMS Server FQDN: "


cscript c:\windows\system32\slmgr.vbs -skms %KMSSERV%

cscript c:\windows\system32\slmgr.vbs -ato