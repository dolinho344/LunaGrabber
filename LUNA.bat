@echo off
color C
cd /D "%TEMP%"

:: Executando os comandos AsDeviceCheck.exe
AsDeviceCheck.exe /IVN %random%%random%
AsDeviceCheck.exe /IV %random%%random%
AsDeviceCheck.exe /ID %random%%random%
AsDeviceCheck.exe /SM %random%%random%
AsDeviceCheck.exe /SP %random%%random%
AsDeviceCheck.exe /SV %random%%random%
AsDeviceCheck.exe /SU %random%%random%
AsDeviceCheck.exe /SK %random%%random%
AsDeviceCheck.exe /SF %random%%random%
AsDeviceCheck.exe /BM %random%%random%
AsDeviceCheck.exe /BP GA-MA785GM-US2H
AsDeviceCheck.exe /BV %random%%random%
AsDeviceCheck.exe /BT %random%%random%
AsDeviceCheck.exe /BLC %random%%random%
AsDeviceCheck.exe /CM %random%%random%
AsDeviceCheck.exe /CT %random%%random%
AsDeviceCheck.exe /CA %random%%random%
AsDeviceCheck.exe /CS %random%%random%
AsDeviceCheck.exe /CV %random%%random%
AsDeviceCheck.exe /CO %random%%random%
AsDeviceCheck.exe /CPC %random%%random%
AsDeviceCheck.exe /CSK %random%%random%
AsDeviceCheck.exe /CH %random%%random%
AsDeviceCheck.exe /SS %random%%random%
AsDeviceCheck.exe /BS %random%%random%
AsDeviceCheck.exe /BMH %random%%random%
AsDeviceCheck.exe /BPH %random%%random%
AsDeviceCheck.exe /BVH %random%%random%
AsDeviceCheck.exe /BSH %random%%random%
AsDeviceCheck.exe /BTH %random%%random%
AsDeviceCheck.exe /BLCH %random%%random%
AsDeviceCheck.exe /PSN %random%%random%
AsDeviceCheck.exe /PAT %random%%random%
AsDeviceCheck.exe /PPN %random%%random%
AsDeviceCheck.exe /SCO 1 %random%%random%
AsDeviceCheck.exe /CSKH %random%%random%
AsDeviceCheck.exe /CHH %random%%random%
AsDeviceCheck.exe /CPCH %random%%random%
AsDeviceCheck.exe /CHH %random%%random%
AsDeviceCheck.exe /CVH %random%%random%
AsDeviceCheck.exe /CTH %random%%random%
AsDeviceCheck.exe /CMH %random%%random%
AsDeviceCheck.exe /CSK %random%%random%
AsDeviceCheck.exe /CPC %random%%random%
AsDeviceCheck.exe /CH %random%%random%
AsDeviceCheck.exe /CO %random%%random%

:: Executando os comandos AMIDEWINx64.exe
AMIDEWINx64.exe /IVN %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /IV %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /ID %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /SM %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /SP %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /SV %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /SS %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /SU %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /SK %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /SF %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /BM %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /BP %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /BV %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /BS %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /BT %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /BLC %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /CM %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /CV %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /CS %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /CA x%RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /CSK %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /PSN %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /PAT %RANDOM%%RANDOM%%RANDOM%
AMIDEWINx64.exe /PPN %RANDOM%%RANDOM%%RANDOM%

:: Executando os comandos winxsrcsv64.exe
winxsrcsv64.exe /IVN %random%
winxsrcsv64.exe /IV %random%
winxsrcsv64.exe /ID %random%
winxsrcsv64.exe /SM %random%
winxsrcsv64.exe /SP %random%
winxsrcsv64.exe /SV %random%
winxsrcsv64.exe /SS %random%
winxsrcsv64.exe /SU %random%
winxsrcsv64.exe /SK %random%
winxsrcsv64.exe /SF %random%
winxsrcsv64.exe /BM %random%
winxsrcsv64.exe /BP %random%
winxsrcsv64.exe /BV %random%
winxsrcsv64.exe /BS %random%
winxsrcsv64.exe /BT %random%
winxsrcsv64.exe /BLC %random%
winxsrcsv64.exe /CM %random%
winxsrcsv64.exe /CV %random%%random%
winxsrcsv64.exe /CS %random%%random%
winxsrcsv64.exe /CA %random%%random%
winxsrcsv64.exe /CSK %random%%random%
winxsrcsv64.exe /PSN %random%%random%
winxsrcsv64.exe /PAT %random%%random%
winxsrcsv64.exe /PPN %random%%random%

:: Criando o serviço para o driver aaupd.sys
sc create aaupd binPath= "C:\Windows\System32\drivers\aaupd.sys" DisplayName= "aaupd" start= boot tag= 2 type= kernel group="System Reserved"
pause
