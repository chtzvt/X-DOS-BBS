@echo off
title DMS-SETUP

:1
set /p YN=Would you like to configure cloud sync services? (Y/N)
if "%YN%" EQU "Y" goto yescloud
if "%YN%" EQU "y" goto yescloud
if "%YN%" EQU "n" goto nocloud
if "%YN%" EQU "N" goto nocloud
echo Invalid. Y or N.
pause
goto 1

:yescloud
::start Dinstall.exe
echo Please set up dropbox on this machine by following
echo the onscreen instructions.
echo.
echo Create a Dropbox account, or log in.
echo You can also edit the scripts to use other services, such as Google Drive or Copy.
echo.
echo Please refer to the CLOUDBENEFITS.txt file for moe information on the benefits of using
echo cloud storage services with DMS.
echo.
echo Press any key to install DMS...
pause>nul
goto install

:nocloud
echo Please refer to the CLOUDBENEFITS.txt file for more information on the benefits of using
echo cloud storage services with DMS.
echo.
echo Press any key to install DMS...
pause>nul
goto install

:install
echo CREATING DIRECTORIES...
mkdir "C:\DMS-STATIC"
mkdir "C:\DSOFT\DMS"
xcopy "SYNCAGENT.bat" "C:\DMS-STATIC"
xcopy "D:\DMS" "C:\DSOFT\DMS"
IF EXIST C:\DMS-STATIC\SYNCAGENT.bat goto good1
IF EXIST C:\DSOFT\DMS goto good1
goto bad1

:bad1
echo Failed.
echo please create the folders C:\DSOFT\DMS and C:\DMS-STATIC
echo and copy the file SYNCAGENT.bat to C:\DMS-STATIC
Echo try running this program as an administrator.
pause
::You heard me, go do it.

:good1
cls
echo Setup Complete!
echo.
echo *********IMPORTANT*********
echo.
echo It is important that you change the default values for variables.
echo a list of text file variable names to edit may be found in EXTENDEDSETUP.txt
echo.
echo Another very important thing to have is a working telnet server.
echo You can fnd a variety of telnet servers to choose from by simply googling around for one.
echo Without one, DMS is pretty much useless.
echo.
echo I recommend KTS. It is bundled with this installation disc.
echo.
echo Press any key to exit...
pause>nul
exit
::ping -n 5 -w 1000 127.0.0.1 >NUL
::ping -n 5 -w 1000 127.0.0.1 >NUL
::ping -n 5 -w 1000 127.0.0.1 >NUL
::ping -n 5 -w 1000 127.0.0.1 >NUL
