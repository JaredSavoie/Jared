# for more information on the commands look here https://sid-500.com/2017/08/08/windows-server-2016-evaluation-how-to-extend-the-trial-period/
#
slmgr -dlv
write-output "This script will reboot your Server. To proceed with the script to extend time press any key. if not press CTL + C"
pause
#
slmgr -rearm
write-output "system will now restart"
pause
#
Restart-Computer
