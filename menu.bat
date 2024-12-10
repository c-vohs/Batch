echo off
:menu
echo -=-=-=[ paxis menu ]=-=-=-=-
echo 1 - powershell 
echo 2 - hyper-v manager
echo 3 - event viewer 
echo 4 - acronis
echo 5 - revo 
echo 6 - explorer
echo 7 - chrome
echo 8 - notepad
echo 9 - server config
echo 0 - disk management
choice /n /c:1234567890 /M "choose (1-0)"
GOTO LABEL-%ERRORLEVEL%

:LABEL-1 powershell
start powershell
cls
goto menu
:LABEL-2 hyper-v manager 
"C:\Program Files\Probus-IT\Hyper-V Tools\HVM.exe"
cls
goto menu
:LABEL-3 event viewer
start eventvwr.exe
cls
goto menu
:LABEL-4 acronis
start chrome "cloud.acronis.com"
cls
goto menu
:LABEL-5 revo
start C:\PAXIS\RevoUninstaller_Portable\RevoUPort.exe
cls
goto menu
:LABEL-6 explorer
start explorer
cls
goto menu
:LABEL-7 chrome
start chrome
cls
goto menu
:LABEL-8 notepad
start notepad
cls
goto menu
:LABEL-9 server config
start c:\Windows\System32\en-US\sconfig.vbs
cls
goto menu
:LABEL-10 disk management
start diskmgmt.msc
cls
goto menu