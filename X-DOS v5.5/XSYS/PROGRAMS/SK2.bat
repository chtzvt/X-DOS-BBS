@echo off
title help
color 0a
:U
cls
echo What do you want to do?
echo.
echo 1) errors
echo 2) FAQ
echo.
set/p opl=
if %opl%==1 goto 3
cls
echo ************************************************************  
echo *                 Frequently Asked Questions               *
echo *                                                          * 
echo ************************************************************
echo.
echo Q: What are all those files in the BG computing folder?
echo.
echo A: These are system files that the program needs to run,
echo    DO Not move,rename, modify these files in any way or
echo    else the program will malfuction. In other words, any
echo    file that has a folder,gear, or slot machine looking icon 
echo    you should not be messing with!
echo.
echo Q: What is the file named logonrecord.txt?
echo.
echo A: This is a useful feature of X-DOS that will
echo    log who logs on and when. To see the log,
echo    open logonrecord.txt. Note that you have to
echo    have run X-DOS once to have logonrecord.txt
echo.
echo Q: What is the credits?
echo.
echo A: The people in the credits are the people who
echo    I got games and ideas from online.
echo.
echo Q: What X-DOS stand for?
echo.
echo A: Xtrdainary Differential Output System
echo    I named it that because it sounds cool
echo.
echo Q: How do I use the message feture?
echo.
echo A: For user type the computer's IP address,
echo    or an * to send the message to all computers
echo    on your network.
pause
goto U

:3
echo                           Errors
echo.
echo    Message pops up saying "Windows cannot find (filename)"
echo.
echo    solution: Reinstall X-DOS
echo.
echo    If anything else happens, please contact BG computing
echo.
pause
goto U                                                              
