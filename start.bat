@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Server 2016 by @x" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user x 9lawiKK1 /add >nul
net localgroup xs x /add >nul
net user x /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant x:F >nul
ICACLS C:\Windows\installer /grant x:F >nul

echo Successfully Installed, If the RDP is Dead, Please Rebuild Again!
echo IP (Tailscale):
"C:\Program Files\Tailscale\tailscale.exe" status
echo Username: x
echo Password: 9lawiKK1
echo Please log in to your RDP!
ping -n 10 127.0.0.1 >nul
