@echo off

set ip=x.x.x.x
set errorlevel=
ping -n 1 %ip% | find "TTL"
if %errorlevel% neq 0 (
     bmail -s mail.server.com -p 25 -t to@address.com -f from@address.com -h -a "Subject"
)

