@echo off
:1
echo Please select a service:
echo.
echo 1)Chat
echo 2)Exit
echo.
set /p CHO=Service:
if "%CHO%" EQU "1" goto LCHAT
if "%CHO%" EQU "2" goto END
echo Invalid choice.

:LCHAT
set SWITCH=CHATA
set NSWITCH=100
goto LD


:LD
title LOADING...
call "\\E026060n01\room308\SERVER\ANONCHAT\PLUGBOARD.bat"
cls
echo Failed. [1/3]
echo 
echo Attempting reconnection...
@ping 127.0.0.1 -n 2 -w 1000 > nul
@ping 127.0.0.1 -n %1% -w 1000> nul
call "\\E026060n01\room308\SERVER\ANONCHAT\PLUGBOARD.bat" 
cls
echo Failed. [2/3]
echo 
echo 
echo Attempting reconnection...
@ping 127.0.0.1 -n 2 -w 1000 > nul
@ping 127.0.0.1 -n %1% -w 1000> nul
call "\\E026060n01\room308\SERVER\ANONCHAT\PLUGBOARD.bat"
cls
echo Failed. [3/3]
echo 
echo 
echo 
echo Attempting reconnection...
@ping 127.0.0.1 -n 2 -w 1000 > nul
@ping 127.0.0.1 -n %1% -w 1000> nul
call "\\E026060n01\room308\SERVER\ANONCHAT\PLUGBOARD.bat"
cls
echo FATAL LOAD ERROR.
echo UNABLE TO CONNECT TO THE CHAT SERVER.
echo.
echo Server may be under matinence, or heavy load.
echo Please try again at some other time.
pause
:END
echo Program will now exit...
pause