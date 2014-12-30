cd /d D:\
FOR /F "usebackq" %%i IN (`hostname`) DO SET HOST=%%i
schtasks.exe /create /s %HOST% /ru %HOST%\IEUser /rp Passw0rd! /tn deuac /xml C:\deuac.xml
echo slmgr.vbs /ato >C:\Users\IEUser\deuac.bat
schtasks.exe /run /tn deuac
timeout /t 30
del C:\Users\IEUser\deuac.bat
shutdown.exe /s /t 00
del %0
