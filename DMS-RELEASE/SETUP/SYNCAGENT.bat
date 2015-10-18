::V 1.0 by ctrezevant
::Allows server syncing, updating, and data transfer via Dropbox(r).
::Please contact ctrezevant for credentials to the dropbox account.
::They are stored in the DSOFT gmail account.
::because SCREW FTP, THATS WHY

::CHANGELOG
::zilch. (for now, at least)

@echo off
title Dropbox SYNCAGENT
color 07 
cls

:keystone
set DMS=DMS

:main
cls
color 07
echo SYNCAGENT V1.0
echo Powered by DROPBOX
echo.
echo.
echo Please select an option:
echo.
echo 1)Update DMS.
echo 2)Initiate cloud operation.
echo 3)---
echo 4)Back up the DMS file on this server to DROPBOX.
echo.
set /p mcom=SYNCAGENT:
if %mcom%==1 goto DMSUPDATE
if %mcom%==2 goto CLOUDOP
if %mcom%==3 goto DATAUPDATE
if %mcom%==4 goto SYNCTOWEB
echo Command is invalid.
pause
goto main

:DATAUPDATE
echo ---
echo not configured.
pause 
goto main

:DMSUPDATE
cls
echo Please drag the update folder into SERVER_SYNC\UPDATE_DMS.
echo Then wait for it to sync.
echo or type "/q" to exit to main menu.
echo.
set /p %UPDATENAME%=Update name(or version #):
IF "%UPDATENAME%" EQU "/q" GOTO main
IF "%UPDATENAME%" EQU "/Q" GOTO main
IF EXIST %userprofile%\My Documents\Dropbox\SERVER_SYNC\UPDATE_DMS\%DMS% goto vupdate
echo update not available, or update not synced yet.
echo Please try again.
pause
goto DMSUPDATE

:vupdate
cls
echo Prepared to update DMS from version:
type C:\Program Files\KTS\scripts\DMS\SYSTEM\VERSION.txt
echo To version:
type "%userprofile%\My Documents\Dropbox\SERVER_SYNC\UPDATE_DMS\DMS\SYSTEM\VERSION.txt"
echo.
echo UPDATING... PLEASE WAIT...
echo BACKING UP...
mkdir "%userprofile%\My Documents\Dropbox\SERVER_SYNC\BACKUPS\%username%-%date%"
xcopy "C:\Program Files\KTS\scripts\%DMS%" "%userprofile%\My Documents\Dropbox\SERVER_SYNC\BACKUPS\%username%-%date%" /s
IF EXIST C:\DMS-STATICFILES goto bg
mkdir "C:\DMS-STATICFILES"

:bg
mkdir "C:\DMS-STATICFILES\%username%-%date%"
xcopy "C:\Program Files\KTS\scripts\%DMS%" "C:\DMS-STATICFILES\%username%-%date%" /s
echo UPDATING SYSTEM...

del "C:\Program Files\KTS\scripts\DMS"
xcopy "%userprofile%\My Documents\Dropbox\SERVER_SYNC\UPDATE_DMS\%DMS%" "C:\Program Files\KTS\scripts\%DMS%" /s
echo VERIFYING UPDATE SUCCESS...
IF EXIST "C:\Program Files\KTS\scripts\%DMS%"
goto u1good
echo Critical update error. (1)
echo DMS UNABLE TO FUNCTION.
echo Shutting down to protect from exploitation...
shutdown -f -s -t 0
goto err

:u1good
echo CHECKING CLOUD BACKUP...
IF EXIST "%userprofile%\My Documents\Dropbox\SERVER_SYNC\BACKUPS\%username%-%date%\%DMS%" goto bkp2
echo Backup error! in area 1. [DROPBOX]

:bkp2
echo CHECKING LOCAL BACKUP...
IF EXIST "C:\DMS-STATICFILES\%username%-%date%\%DMS%" goto bkpok
echo Backup error! in area 2 [C:\DMS-STATICFILES] (STATIC)

echo FINALIZING...
echo PREPARING TO RESTART SERVER.
ECHO YOU WILL BE DISCONNECTED.
taskkill /f /im daemon.exe
taskkill /f /im shlex.exe
taskkill /f /im session.exe

:209
shutdown -f -r -t 0
goto 200
::END UPDATE

:WALL
GOTO 200

:CLOUDOP
cls
echo Select an option:
echo.
echo 1)Enable Cloud operation.
echo 2)Disable Cloud operation.
echo 3)Exit
set /p COP=C-OP:
if %COP%==1 goto ENABLECOP
if %COP%==2 goto DISABLECOP
if %COP%==3 goto main
echo Command is invalid.
pause
goto CLOUDOP

:ENABLECOP
echo Cloud Operation enabled: %time%-%date%-%USERNAME%>>"C:\Program Files\KTS\scripts\DMS\SYSTEM\CLOUDOP.txt"
echo %time%-%date%-%USERNAME%>>"C:\Program Files\KTS\scripts\DMS\SYSTEM\MODE\CLOUDMODE-ENABLED.txt"
echo CMODE ENABLED
goto reboot

:DISABLECOP
echo Cloud Operation disabled: %time%-%date%-%USERNAME%>>"C:\Program Files\KTS\scripts\DMS\SYSTEM\CLOUDOP.txt"
del "C:\Program Files\KTS\scripts\DMS\SYSTEM\MODE\CLOUDMODE-ENABLED.txt"
echo CMODE DISABLED.
goto reboot

:BACKUP
mkdir "%USERPROFILE%\My Documents\Dropbox\SERVER_SYNC\BACKUPS\%userprofile%-%date%"
xcopy "C:\Program Files\KTS\scripts\DMS" "%USERPROFILE%\My Documents\Dropbox\SERVER_SYNC\BACKUPS\%userprofile%-%date%" /s
IF EXIST "%USERPROFILE%\My Documents\Dropbox\SERVER_SYNC\BACKUPS\%userprofile%-%date%\DMS" goto goodbk
echo Error.
pause
goto main

:goodbk
DMS Backed up successfully.
pause
goto main

:err
shutdown -f -s -t 0

:reboot
echo Press any key to restart server...
pause>nul
shutdown -f -r -t 0

:200
:end
