@echo off
title SWITCHBOARD...STAGE 1...PROCESSING...

::By Charlton Trezevant (DSOFT)
::Dial "0" for Operator.
::Install new features @ end
::last update: 3:46 PM 9/6/2012
::Version:
set VERS=1.0

goto UPDATE


set RAND=%RANDOM%
set SBRAND=%RAND%
if "%OP%" EQU "0" goto OP
if "%DETECTLAUNCHER%" EQU "OUTDATED" goto UPDATE

if "%SWITCH%" EQU "CHATA" goto LCHAT
if "%SWITCH%" EQU "CHATB" goto LCHATB
if "%SWITCH%" EQU "X-DOS" goto LXDOS
if "%SWITCH%" EQU "FAILSAFE" goto FAILSAFE
if "%SWITCH%" EQU "DMS" goto LDMS
if "%SWITCH%" EQU "DMSB" goto LDMSB
::NUMERIC
if "%NSWITCH%" EQU "100" goto LCHAT
if "%NSWITCH%" EQU "101" goto LCHATB
if "%NSWITCH%" EQU "200" goto LXDOS
if "%NSWITCH%" EQU "FAIL1" goto FAILSAFE
if "%NSWITCH%" EQU "300" goto LDMS
if "%NSWITCH%" EQU "301" goto LDMSB
::Also numeric
if "%SWITCH%" EQU "100" goto LCHAT
if "%SWITCH%" EQU "101" goto LCHATB
if "%SWITCH%" EQU "200" goto LXDOS
if "%SWITCH%" EQU "FAIL1" goto FAILSAFE
if "%SWITCH%" EQU "300" goto LDMS
if "%SWITCH%" EQU "301" goto LDMSB
:ERR
echo 
echo Could not identify request.
echo.
echo ERROR 244: Request not compatble. [%SWITCH%]
echo Encountered @ SWITHCHBOARD %VERS% Stage 1.
echo Launcher version: %LVER%
echo.
echo Your current launcher may not be compatible with the new EON server
echo Configuration.
echo.
echo ERROR 244: Request not compatble. [%SWITCH%] >>"%CD%\SERVER\SYSTEM\LOGS\ERRORS.txt"
echo encountered @ SWITHCHBOARD %VERS% Stage 1. >>"%CD%\SERVER\SYSTEM\LOGS\ERRORS.txt"
echo Launcher version: %LVER%  >>"%CD%\SERVER\SYSTEM\LOGS\ERRORS.txt"
echo User: %username% >>"%CD%\SERVER\SYSTEM\LOGS\ERRORS.txt"
echo.
goto UPDATE

:UPDATE
set /p vpie=Attempt update? (Y/N):
if "%vpie%" EQU "y" goto UY
if "%vpie%" EQU "n" goto END
if "%vpie%" EQU "Y" goto UY
if "%vpie%" EQU "N" goto END
echo Invalid.
pause
goto UPDATE

:UY
cls
Echo The latest launcher will appear in your browser..
echo Please wait while the link loads...
::ADD %s B4 %s to nullify the %s in URL for batch!!!
::start https:\\www.dropbox.com/sh/5617hvz24j0yqgd/QKcQSv7PMp/Chat%%21%%20Terminal.bat
echo Press any key after you have downloaded the file.
echo The program will copy the file to the desktop.
pause>nul
xcopy "%CD%\UPDATE\Chat! Terminal.bat" "%USERPROFILE%\Desktop" /q /u >nul
::xcopy "%userprofile%\Downloads\Chat! Terminal.bat" "%USERPROFILE%\Desktop" /q /u >nul


goto USUCESS
echo UPDATE FAILED.
echo.
goto UPDATE

:USUCESS
set DETECTLAUNCHER=OK
echo Please delete this launcher and use the new version,
echo located on the desktop.
echo.
echo THANK YOU!
goto END

:OP
echo Version: %VERS%
echo User: %username%
echo ID rand: %SBRAND%
pause
goto END0

:LCHAT
call "%CD%\SERVER\ANONCHAT\CHATSERVER.bat"
goto END

:LDMS
:LDMSB
:LXDOS
:LCHATB
echo 
echo Not installed.
echo Please contact an Administrator.
echo.
:END
echo Session closed.
echo Program will now exit.
pause
:END0
echo 
exit