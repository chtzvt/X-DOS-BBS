@echo off
:: ADMIN DMS V1.2 (TELNET)
color 07
cls

:boot
echo KUCHI Server Administration System v2.0
pause

:system
cls
color 07
echo System menu.
echo Choose an option:
echo.
echo 1)Run a System check
echo 2)Server information
echo 3)Uninstall DMS from this network
echo 4)Clear chatroom
echo 5)User information
echo 6)CMD
echo 7)Update
set /p vpie=SYSTEM:
if %vpie%==1 goto SYSTEMCHECK
if %vpie%==2 goto KUCHIINFO
if %vpie%==3 goto VERIFYDEL
if %vpie%==4 goto MSGCLS
if %vpie%==5 goto USRINPUT
if %vpie%==6 goto DMSCMD
if %vpie%==7 goto UPDATE
if %vpie%==8 goto DMSLOGINE
echo Invalid command.
pause
goto system

:DMSCMD
cls
set /p vpie=Enter Security Code:
if "%vpie%" EQU "dsoft1" goto GOODCODECMD
echo Invalid.
pause
goto system

:GOODCODECMD
cls
call CMD.exe
goto system

:USRINPUT
cls 
echo Choose one:
echo.
echo 1)View Bug Reports
echo 2)View Reported Users
echo 3)View logins
echo 4)View Registered Users
echo 5)Main Menu
set /p vpie=COM:
if %vpie%==1 goto BUGS1
if %vpie%==2 goto USR1
if %vpie%==3 goto LOGMAN
if %vpie%==4 goto REGUSRS
if %vpie%==5 goto system
echo invalid.
goto USRINPUT

:REGUSRS
cls
echo Displaying current DMS users:
echo.
type "C:\DSOFT\DMS\USERS\USERDATA\USERLIST.txt"
echo.
pause
goto USRINPUT

:LOGMAN
cls
echo Logins as of %time% %date%:
echo.
type "C:\DSOFT\DMS\ADMINTOOLS\LOGINRECORD.txt"
echo.
set /p vpie=Clear list? (Y/N)
if %vpie%==Y goto CLSLOGMAN
if %vpie%==y goto CLSLOGMAN
if %vpie%==n goto USRINPUT
if %vpie%==N goto USRINPUT
goto USRINPUT

:CLSLOGMAN
del "C:\DSOFT\DMS\ADMINTOOLS\LOGINRECORD.txt"
echo Cleared.
pause
goto USRINPUT

:BUGS1
cls
echo Bugs reported:
echo.
type "C:\DSOFT\DMS\ADMINTOOLS\BUGREPORT.txt"
echo.
set /p vpie=Clear list? (Y/N)
if %vpie%==Y goto CLSBUG
if %vpie%==y goto CLSBUG
if %vpie%==n goto USRINPUT
if %vpie%==N goto USRINPUT
echo invalid.
pause
goto BUGS1

:USR1
cls
echo Users reported:
echo.
type "C:\DSOFT\DMS\ADMINTOOLS\USERREPORT.txt"
echo.
set /p vpie=Clear list? (Y/N)
if %vpie%==Y goto CLSUSR1
if %vpie%==y goto CLSUSR1
if %vpie%==n goto USRINPUT
if %vpie%==N goto USRINPUT
echo invalid.
pause
goto USR1

:CLSBUG
del "C:\DSOFT\DMS\ADMINTOOLS\BUGREPORT.txt"
echo Cleared.
pause
goto USRINPUT

:CLSUSR1
del "C:\DSOFT\DMS\ADMINTOOLS\USERREPORT.txt"
echo Cleared.
pause
goto USRINPUT

:MSGCLS
del "C:\DSOFT\DMS\MAILSERVER\DMSMESSAGEBOARD.txt"
echo Cleared.
pause
goto system

:KUCHIINFO
cls
echo KUCHI Server System.
echo Software: v2.0
echo By Charlton Trezevant.
echo.
echo Current setup:
echo Netman compatible: %netman%
echo Active: YES
pause
goto system  

:SYSTEMCHECK
cls
echo KUCHI Server System check v1.3
echo By: Charlton Trezevant.
echo.
echo Running System Check, please wait...
echo Checking Main...
IF EXIST "C:\DSOFT\DMS" goto Maingood
color 04
echo Main: ERR
echo RELOAD FILE.
goto SYSTEMCHECK2


:Maingood
echo Main: OK.
goto SYSTEMCHECK2


:SYSTEMCHECK2
echo Checking Mail server...
IF EXIST "C:\DSOFT\DMS\MAILSERVER" goto mailservergood
color 04
echo.
echo Mail server: ERR
echo RELOAD FILE.
goto SYSTEMCHECK3


:mailservergood
echo.
echo Mail server: OK
goto SYSTEMCHECK3


:SYSTEMCHECK3
echo Checking Internal network...
IF EXIST "C:\DSOFT\DMS\NETWORK" goto networkgood
color 04 
echo.
echo Network: ERR
echo RELOAD FILE.


:networkgood
echo.
echo Network: OK
goto SYSTEMCHECK4


:SYSTEMCHECK4
echo Checking Additional System files...
IF EXIST "C:\DSOFT\DMS\SYSTEM" goto systemfilesok
color 04
echo.
echo Adtl. System files: ERR
echo RELOAD FILE.
goto SYSTEMCHECK5


:systemfilesok
echo.
echo Adtl. System files: OK.
goto SYSTEMCHECK5


:SYSTEMCHECK5
echo Checking User-based data...
IF EXIST "C:\DSOFT\DMS\NETWORK\BLOGS" goto usrchk2
color 04
echo.
echo File 1: ERR
echo RELOAD FILE.
echo Checking File 2...
IF EXIST "C:\DSOFT\DMS\NETWORK\USERSERVICES" goto usrchk23
goto f2err


:usrchk2
echo File 1: OK
echo Checking File 2...
IF EXIST "C:\DSOFT\DMS\NETWORK\USERSERVICES" goto usrchk23
goto f2err

:f2err
color 04
echo.
echo File 2: ERR
echo RELOAD FILE. 
goto SYSTEMCHECK6

:usrchk23
echo File 2: OK
goto SYSTEMCHECK6


:SYSTEMCHECK6
echo Checking for Administrator tools...
IF EXIST "C:\DSOFT\DMS\ADMINTOOLS" goto admingood
color 04
echo.
echo Admin Tools: ERR
echo RELOAD FILE.
goto SYSTEMCHECKED

:admingood
echo.
echo Admin Tools: OK.
goto SYSTEMCHECKED

:SYSTEMCHECKED
echo.
echo System diagnostics finished.
echo %time% %date%
echo.
pause
goto system


:VERIFYDEL
cls
color 07
::set /p vpie=Enter Security Code:
::if %vpie%" EQU "admindel" goto delete dms
::echo Invalid Code.
::pause>nul
::goto system

:delete dms
echo Now deleting program...
::del "C:\DSOFT\DMS
cls
echo Uninstalled.
pause>nul
exit

:UPDATE 
call C:\DMS-STATIC\SYNCAGENT.bat
pause
goto system

:DMSLOGINE
::Goes back to DMS, leave blank!
