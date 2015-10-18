@echo off

:X-DOS1
set VERSION=5.5
::CHANGELOG
::3:27 PM 9/8/2012 Added major improvements.
::2:03 PM 9/22/2012 Final improvements made to 5.0

title X-DOS v%VERSION%
set YNREG=Yes
color 17
cls

:AUTO
IF EXIST "%CD%\XSYS\SYSTEM\MODE\AUTOMATICLOGIN.txt" goto SETLOGIN
goto up

:SETLOGIN
echo You are being automatically logged in...
ping 1.1.1.1 -n 3 -w 100>nul
set user=
set pass=
set /p user=<"%CD%\XSYS\SYSTEM\AUTOLOGIN.txt"
IF EXIST "%CD%\XSYS\USERS\%user%-un.txt" goto goodAL1
echo The AutoLogin credentials are invalid.
pause
goto up

:goodAL1
set /p pass=<"%CD%\XSYS\SYSTEM\AUTOLOGINP.txt"
IF EXIST "%CD%\XSYS\USERS\%user%-%pass%-login.txt" goto good
echo The AutoLogin credentials are invalid.
pause
goto up

:up
color 17
cls
title Log in to X-DOS.
echo Log in to X-DOS.
echo.
echo Type "options" for options.
echo.
set /p user=username:
If '%user%'=='newuser' goto register
If '%user%'=='SETTINGS' goto opu
If '%user%'=='options' goto opmen
If '%user%'=='boot' goto bootmenu
If '%user%'=='smode' goto smodelodr
IF EXIST "%CD%\XSYS\USERS\%user%-un.txt" goto gooduser
echo Invalid username.
pause
goto up

:smodelodr
IF EXIST "%CD%\XSYS\SYSTEM\MODE\NOSMODE.txt" goto nosmode
echo LOADING SAFE MODE...
echo Please wait...
goto SAFE-MODE


:opmen
echo Type "boot" for boot options,
echo or "newuser" to make an account.
echo Alternatively, you can log in as "smode"
echo to boot into safe mode.
echo Commab
echo.
echo All of these commands may be enabled or
echo disabled by your administrator at any time.
pause
goto up

:bootmenu
IF EXIST "%CD%\XSYS\SYSTEM\MODE\NOBOOT.txt" goto noboot
cls
color 07
echo Please select a boot option:
echo 1)Command prompt only.
echo 2)Safe mode only.
echo 3)Restart this machine.
echo 4)Exit to login.
set /p input=:
if %input%==1 goto 234432
if %input%==2 goto smodemain
if %input%==3 goto bootrestart
if %input%==4 goto up
echo Command invalid.
pause
goto bootmenu

:234432
cls
call cmd.exe
exit

:bootrestart
shutdown/f


:gooduser
set /p pass=password:
If '%pass%'=='dave' goto good
if '%pass%'=='@@' goto good
IF EXIST "%CD%\XSYS\USERS\%user%-%pass%-login.txt" goto good

echo invalid login.
echo Press any key to exit...
echo. >>"%CD%\XSYS\SYSTEM\elogonrecord.txt"
echo An unauthorized user logged on at %time% on %date% >>"%CD%\XSYS\SYSTEM\elogonrecord.txt"
echo. >>"%CD%\XSYS\SYSTEM\elogonrecord.txt"
goto up

:good
title X-DOS v%VERSION%
echo. >>"%CD%\XSYS\SYSTEM\logonrecord.txt"
echo %user% logged on at %time% on %date% >>"%CD%\XSYS\SYSTEM\logonrecord.txt"
@ECHO OFF

@CLS
ECHO Loading-Please wait [1%%]

@CLS
ECHO Loading-Please wait [2%%]

@CLS
ECHO Loading-Please wait [3%%]

@CLS
ECHO Loading-Please wait [4%%]

@CLS
ECHO Loading-Please wait [5%%]

@CLS
ECHO Loading-Please wait [6%%]

@CLS
ECHO Loading-Please wait [7%%]

@CLS
ECHO Loading-Please wait [8%%]

@CLS
ECHO Loading-Please wait [9%%]

@CLS
ECHO Loading-Please wait [10%%]

@CLS
ECHO Loading-Please wait [11%%]

@CLS
ECHO Loading-Please wait [12%%]

@CLS
ECHO Loading-Please wait [13%%]

@CLS
ECHO Loading-Please wait [14%%]

@CLS
ECHO Loading-Please wait [15%%]

@CLS
ECHO Loading-Please wait [16%%]

@CLS
ECHO Loading-Please wait [17%%]

@CLS
ECHO Loading-Please wait [18%%]

@CLS
ECHO Loading-Please wait [19%%]

@CLS
ECHO Loading-Please wait [20%%]

@CLS
ECHO Loading-Please wait [21%%]

@CLS
ECHO Loading-Please wait [22%%]

@CLS
ECHO Loading-Please wait [23%%]

@CLS
ECHO Loading-Please wait [24%%]

@CLS
ECHO Loading-Please wait [25%%]

@CLS
ECHO Loading-Please wait [26%%]

@CLS
ECHO Loading-Please wait [27%%]

@CLS
ECHO Loading-Please wait [28%%]

@CLS
ECHO Loading-Please wait [29%%]

@CLS
ECHO Loading-Please wait [30%%]

@CLS
ECHO Loading-Please wait [31%%]

@CLS
ECHO Loading-Please wait [32%%]

@CLS
ECHO Loading-Please wait [33%%]

@CLS
ECHO Loading-Please wait [34%%]

@CLS
ECHO Loading-Please wait [35%%]

@CLS
ECHO Loading-Please wait [36%%]

@CLS
ECHO Loading-Please wait [37%%]

@CLS
ECHO Loading-Please wait [38%%]

@CLS
ECHO Loading-Please wait [39%%]

@CLS
ECHO Loading-Please wait [40%%]

@CLS
ECHO Loading-Please wait [41%%]

@CLS
ECHO Loading-Please wait [42%%]

@CLS
ECHO Loading-Please wait [43%%]

@CLS
ECHO Loading-Please wait [44%%]

@CLS
ECHO Loading-Please wait [45%%]

@CLS
ECHO Loading-Please wait [46%%]

@CLS
ECHO Loading-Please wait [47%%]

@CLS
ECHO Loading-Please wait [48%%]

@CLS
ECHO Loading-Please wait [49%%]

@CLS
ECHO Loading-Please wait [50%%]

@CLS
ECHO Loading-Please wait [51%%]

@CLS
ECHO Loading-Please wait [52%%]

@CLS
ECHO Loading-Please wait [53%%]

@CLS
ECHO Loading-Please wait [54%%]

@CLS
ECHO Loading-Please wait [55%%]

@CLS
ECHO Loading-Please wait [56%%]

@CLS
ECHO Loading-Please wait [57%%]

@CLS
ECHO Loading-Please wait [58%%]

@CLS
ECHO Loading-Please wait [59%%]

@CLS
ECHO Loading-Please wait [60%%]

@CLS
ECHO Loading-Please wait [61%%]

@CLS
ECHO Loading-Please wait [62%%]

@CLS
ECHO Loading-Please wait [63%%]

@CLS
ECHO Loading-Please wait [64%%]

@CLS
ECHO Loading-Please wait [65%%]

@CLS
ECHO Loading-Please wait [66%%]

@CLS
ECHO Loading-Please wait [67%%]

@CLS
ECHO Loading-Please wait [68%%]

@CLS
ECHO Loading-Please wait [69%%]

@CLS
ECHO Loading-Please wait [70%%]

@CLS
ECHO Loading-Please wait [71%%]

@CLS
ECHO Loading-Please wait [72%%]

@CLS
ECHO Loading-Please wait [73%%]

@CLS
ECHO Loading-Please wait [74%%]

@CLS
ECHO Loading-Please wait [75%%]

@CLS
ECHO Loading-Please wait [76%%]

@CLS
ECHO Loading-Please wait [77%%]

@CLS
ECHO Loading-Please wait [78%%]

@CLS
ECHO Loading-Please wait [79%%]

@CLS
ECHO Loading-Please wait [80%%]

@CLS
ECHO Loading-Please wait [81%%]

@CLS
ECHO Loading-Please wait [82%%]

@CLS
ECHO Loading-Please wait [83%%]

@CLS
ECHO Loading-Please wait [84%%]

@CLS
ECHO Loading-Please wait [85%%]

@CLS
ECHO Loading-Please wait [86%%]

@CLS
ECHO Loading-Please wait [87%%]

@CLS
ECHO Loading-Please wait [88%%]

@CLS
ECHO Loading-Please wait [89%%]

@CLS
ECHO Loading-Please wait [90%%]

@CLS
ECHO Loading-Please wait [91%%]

@CLS
ECHO Loading-Please wait [92%%]

@CLS
ECHO Loading-Please wait [93%%]

@CLS
ECHO Loading-Please wait [94%%]

@CLS
ECHO Loading-Please wait [95%%]

@CLS
ECHO Loading-Please wait [96%%]

@CLS
ECHO Loading-Please wait [97%%]

@CLS
ECHO Loading-Please wait [98%%]

@CLS
ECHO Loading-Please wait [99%%]

@CLS
ECHO Loading-Please wait [100%%]
pause

:A
set LOGIN=YES
title X-DOS v%VERSION% (%user%'s session.)
cls
color 17
set input=
if %user%==exit goto up
echo X-DOS Version %VERSION%.
echo Created by DSOFT.
echo Type "?" for help.
echo %time%-%date%
echo.
echo.
goto P

:clsp
cls
:P
set input=
@set /p "input=X-DOS:%user%$>"
if "%input%" EQU "games" goto 1
if "%input%" EQU "message" goto 2
if "%input%" EQU "movie" goto 3
if "%input%" EQU "calculator" goto 4
if "%input%" EQU "internet" goto 5
if "%input%" EQU "music" goto 6
if "%input%" EQU "logoff" goto 7
if "%input%" EQU "time" goto 8
if "%input%" EQU "?" goto 45
if "%input%" EQU "exit" goto 77
if "%input%" EQU "generators" goto 789987
if "%input%" EQU "credits" goto 707
if "%input%" EQU "terminal" goto cmdprpt
if "%input%" EQU "shell" goto cmdprpt
if "%input%" EQU "cmd" goto cmdprpt
if "%input%" EQU "scribe" goto scribe
if "%input%" EQU "word" goto scribe
if "%input%" EQU "sleep" goto sleepmode
if "%input%" EQU "help" goto 45
if "%input%" EQU "mail" goto DMS
if "%input%" EQU "message" goto DMS
if "%input%" EQU "" goto Pa
if "%input%" EQU " " goto Pa
if "%input%" EQU "clear" goto clsp
if "%input%" EQU "cls" goto clsp
if "%input%" EQU "start" goto SX
if "%input%" EQU "whoami" goto whoiam
if "%input%" EQU "clock" goto 8
if "%input%" EQU "chat" goto chata
if "%input%" EQU "relay" goto chata
if "%input%" EQU "vers" goto versinfo
if "%input%" EQU "xsys" goto xsysinfo
if "%input%" EQU "ipaddr" goto ipaddr
if "%input%" EQU "smode" goto SAFE-MODE
if "%input%" EQU "SETTINGS" goto opu
if "%input%" EQU "newuser" goto register
if "%input%" EQU "bootmenu" goto bootmenu
echo Invalid command "%input%".
echo Type ? for a list.
echo.
goto P

:ipaddr
ipconfig
goto P

:xsysinfo
echo  User.....................%user%
echo  Version..................%VERSION%
echo  Checking update data.............
echo Last update:
type "%CD%\XSYS\SYSTEM\UPDATEINFO.txt
echo.
echo.
echo :::::CHECK SYSTEM COMPONENTS:::::
echo Checking system.................
IF EXIST "%CD%\XSYS" echo [1/3] System files OK!
IF EXIST "%CD%\XSYS\SYSTEM" echo [2/3] Underlying system structure OK!
IF EXIST "%CD%\XSYS\PROGRAMS" echo [3/3] Program folder OK!
echo !! Preparing to check installed programs...
IF EXIST "%CD%\XSYS\PROGRAMS\LLOTTO" echo [1/18] Lucky lotto system files OK!
IF EXIST "%CD%\XSYS\PROGRAMS\Saves" echo [2/18] Game Part 1 Las Vegas 777 system OK!
IF EXIST "%CD%\XSYS\PROGRAMS\System" echo [3/18] Game Part 2 Las Vegas 777 system OK!
IF EXIST "%CD%\XSYS\PROGRAMS\cmd.exe" echo [4/18] Command-Line OK!
IF EXIST "%CD%\XSYS\PROGRAMS\HITCHHIK.dat" echo [5/18] Game Hitchhiker's Guide system files OK!
IF EXIST "%CD%\XSYS\PROGRAMS\HITCHHIK.exe" echo [6/18] Game Hitchhiker's Guide OK!
IF EXIST "%CD%\XSYS\PROGRAMS\msg.exe" echo [7/18] Messenger OK!
IF EXIST "%CD%\XSYS\PROGRAMS\SK1.bat" echo [8/18] Old setup OK!
IF EXIST "%CD%\XSYS\PROGRAMS\SK2.bat" echo [9/18] Old FAQ OK!
IF EXIST "%CD%\XSYS\PROGRAMS\SK09.bat" echo [10/18] Game T-T-T OK!
IF EXIST "%CD%\XSYS\PROGRAMS\SK84.bat" echo [11/18] Game Connect-4 OK!
IF EXIST "%CD%\XSYS\PROGRAMS\SP1.bat" echo [12/18] Game Genius OK!
IF EXIST "%CD%\XSYS\PROGRAMS\SP2.bat" echo [13/18] Game Mancala OK!
IF EXIST "%CD%\XSYS\PROGRAMS\SP3.bat" echo [14/18] Game R.P.S OK!
IF EXIST "%CD%\XSYS\PROGRAMS\SP4.bat" echo [15/18] Calculator OK!
IF EXIST "%CD%\XSYS\PROGRAMS\SP5.exe" echo [16/18] Game Las Vegas 777 OK!
IF EXIST "%CD%\XSYS\PROGRAMS\SP6.bat" echo [17/18] Matrix OK!
IF EXIST "%CD%\XSYS\PROGRAMS\SP7.bat" echo [18/18] Game Deal or no Deal OK!
echo !! XSYS check complete!
echo.
goto P



:versinfo
echo X-DOS version %VERSION%.
echo Created by DSOFT.
echo.
echo Last update:
type "%CD%\XSYS\SYSTEM\UPDATEINFO.txt
echo.
goto P

:chata
cls
echo Starting Chat...
IF EXIST \\E026060n01\room308\SERVER goto bnetchat
telnet relay.zapto.org
echo Press any key to go Home...
pause>nul
goto P

:bnetchat
echo BISD Network detected!
set SWITCH=CHATA
set NSWITCH=100
call \\E026060n01\room308\SERVER\SYSTEM\PLUGBOARD.bat
pause
goto P

:whoiam
echo %user%
GOTO P

:SX
start X-DOS.bat
goto P

:Pa
goto P

:interpreter
echo No longer available since 5.5
goto P

:sleepmode
cls
echo                  Program in sleep mode.
echo             [%time%] [%date%]
echo.
pause>nul
goto redirect

:redirect
cls
goto P

:DMS
cls
echo Starting Mail...
IF EXIST \\E026060n01\room308\SERVER goto bnetDMS
telnet dsoft.zapto.org
echo Press any key to go Home...
pause>nul
goto P

:bnetDMS
echo BISD Network detected!
set SWITCH=DMS
call \\E026060n01\room308\SERVER\SYSTEM\PLUGBOARD.bat
pause
goto P


:cmdprpt
echo running command prompt
start "%CD%\XSYS\PROGAMS\cmd.exe"
pause
goto redirect

:1
cls
color 17
echo games:
echo 1) tic-tac-toe
echo 2) connect 4
echo 3) genius
echo 4) mancala
echo 5) rock-papper-scissors
echo 6) Las-Vagas 777
echo 7) deal or no deal
echo 8) ---
echo 9) super mario bros. 3D
echo 10) Hitchhiker's Guide
echo 11) main menu
echo.
echo What would you like to play?
@set /p "spie=X-DOS:%user%$>"

if %spie%==1 goto TtT
if %spie%==2 goto 22
if %spie%==3 goto 33
if %spie%==4 goto 44
if %spie%==5 goto 55
if %spie%==6 goto 679
if %spie%==7 goto 660
if %spie%==8 goto 1
if %spie%==9 echo program not installed
if %spie%==10 goto 2233
if %spie%==11 goto 66
echo Command Invalid.
pause
goto 1


:22
cls
echo Running CONNECT-4
call "%CD%\XSYS\PROGRAMS\SK84.bat"
pause
goto 1

:TtT
cls
call "%CD%\XSYS\PROGRAMS\SK09.bat"
pause
goto 1

:2233
cls
call "%CD%\XSYS\PROGRAMS\HITCHHIK.EXE"
echo Running "Hitchhiker's Guide
echo Press any key to continue...
pause<nul
goto 779

:33
cls
call "%CD%\XSYS\PROGRAMS\SP1.bat"
echo Running Genius
pause
goto P



:44
cls
cALL "%CD%\XSYS\PROGRAMS\SP2.bat"
echo Running manacala
pause
goto P





:55
cls
call "%CD%\XSYS\PROGAMS\SP3.bat"
echo Running r.p.s.
pause
goto P




:66
goto P



:2
cls
echo MESSENGER
set/p n=User:
set/p m=Message:
cls
"%CD%\XSYS\PROGRAMS\msg.exe" %n% %m%
echo Loading
echo What would you like to do?
echo
echo To use messenger, enter an asterisk in "user" then enter message.
echo.
echo 1) send another message
echo 2) main menu
Echo.
set /p ujkl=
if %ujkl%==1 goto 2
if %ujkl%==2 goto P
IF %ujkl%==! goto 4734
echo Command Invalid.
echo Type ? for a list.
pause
goto 2



:3
cls
echo star wars movie
color 17
set/p n=hit enter to connect to server
set/p m=hit enter to watch movie
telnet towel.blinkenlights.nl
set /p o=thank you for watching
pause
goto P

:4
cls
call "%CD%\XSYS\PROGRAMS\SP4.bat"
echo Running calculator
pause
goto P



:5
cls
echo Internet menu
echo.
echo 1) google
echo 2) Reddit
echo 3) main menu
echo.
set /p upie=

if %upie%==1 goto 45675
if %upie%==2 goto RED.DIT
if %upie%==3 goto 7743
if %upie%==4 goto 4734

:RED.DIT
cls
echo LOADING...
start www.reddit.com
cls
echo running reddit
pause
goto P

:45675
cls
echo LOADING...
start www.google.com
cls
echo running internet
pause
goto P

:7743
goto P


:6
cls
start wmplayer.exe
pause
goto P

:7
cls
echo Log Off? (yes/no)
set /p ypie=

if %ypie%==yes goto up
if %ypie%==no goto P
if %ypie%==! GOTO 4734
echo Invalid.
goto P


:LLKJ
echo %user% logged off at %time% on %date% >>"%CD%\XSYS\USERS\logonrecord.txt"
goto up

:8
echo Mr.Clock says:
echo.
echo                           ^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|^|
echo                               ------           ------
echo                                 ()               ()
echo                                          /\
echo                                         /  \
echo                                         ----
echo                                   ================
echo                            [%time%] [%date%]
echo                                   ================
echo                                          \/
pause
goto P

:45
cls

echo / separates commands with the same outcome.
echo COMMANDS ARE CASE SENSITIVE! ALL ARE IN LOWER CASE!
echo all commands:
echo command   !output
echo ----------!--------
echo games     !goto games
echo message   !goto mesenger
echo movie     !plays movie
echo calculator!goto calculator
echo internet  !goto internet
echo music     !goto meadia player
echo logoff    !logs off
echo time/clock!displays the time
echo help      !displays help
echo exit      !exits
echo generators!goto generator menu
echo credits   !goto credits
echo cmd       !starts command prompt
echo terminal  !starts command prompt
echo sleep     !sleeps program
echo DMS       !Starts the Dynamic Messaging System
echo relay     !Starts Chat
echo clear/cls !Clears prompt
echo start     !Starts a new instance of X-DOS
echo vers      !Version information
echo xsys      !X-DOS system information
echo ipaddr    !Internet Protocol information.
echo newuser   !Register new user (You will be logged out)
echo bootmenu  !Boot menu (You will be logged out)
echo smode     !Safe Mode (You will be logged out)
echo SETTINGS  !Administrator settings
echo.
echo.
goto P

:77
cls
echo Are you sure you want to exit?
echo Typing "logoff" will take you
echo to the login screen

set /p rpie=
if %rpie%==yes goto 458
if %rpie%==no goto 779
if %rpie%==back goto up
IF %RPIE%==! goto4734
if %rpie%==logoff goto up

:4734
@echo off
title SELF DESTRUCT
color 0c
cls
goto up
:qwertyuiop
echo Continuing will delete all files and folders associated with [X-DOS]
echo Deleted files cannot be recovered.
echo are you sure you want to proceed?
echo.
echo 1)Y
ECHO 2)N
set/p input=command:
if %input%==1 goto imp22
if %input%==2 goto bluewire
echo Invalid Command
pause
goto qwertyuiop

:imp22
echo deleting [X-DOS]
echo Please wait...
del "%CD%\XSYS\"
echo Wipe complete.
echo Press any key to finish wipe...
pause>nul
del "%CD%\X-DOS.bat"
exit

:bluewire
echo For security reasons, You will
echo be logged off.




:458
echo %user% logged off at %time% on %date% >>"%CD%\XSYS\USERS\logonrecord.txt"
exit

:779
goto P

:789987
cls
echo 1) random number generator
echo 2) password generator
echo 3) lottery number generator
echo 4) main menu
echo.
set /p ipie=
if %ipie%==1 goto 908
if %ipie%==2 goto 907
if %ipie%==3 goto 9068
if %ipie%==4 goto P
if %ipie%==! goto 4734

:908
cls
echo Random number:
echo %random%%random%
pause
goto 789987

:907
:start90
set pass=
set /a done=0
cls
Echo.
Echo.
Echo Press any key to begin Password Generation...
Echo.
Echo.
pause>nul
cls
Echo.
Echo.
Echo How many characters do you want it to be?
Echo.
set /p num=
cls

:numorlet
echo Cycle.
set /a done=%done%+1
set /a a=%random%*99/32767+1
if %a% GTR 60 goto number
if %a% LSS 61 goto letter

:number
echo Processing number...
set /a q=%random%*8/32767+1
set pass=%pass%%q%
if %done% EQU %num% goto end
goto :numorlet

:letter
echo Processing letter...
set /a cap=%random%*99/32767+1
if %cap% GTR 50 goto cap
if %cap% LSS 51 goto low


:cap
set /a capl=%random%*25/32767+1
if %capl% EQU 1 set pass=%pass%A
if %capl% EQU 2 set pass=%pass%B
if %capl% EQU 3 set pass=%pass%C
if %capl% EQU 4 set pass=%pass%D
if %capl% EQU 5 set pass=%pass%E
if %capl% EQU 6 set pass=%pass%F
if %capl% EQU 7 set pass=%pass%G
if %capl% EQU 8 set pass=%pass%H
if %capl% EQU 9 set pass=%pass%I
if %capl% EQU 10 set pass=%pass%J
if %capl% EQU 11 set pass=%pass%K
if %capl% EQU 12 set pass=%pass%L
if %capl% EQU 13 set pass=%pass%M
if %capl% EQU 14 set pass=%pass%N
if %capl% EQU 15 set pass=%pass%O
if %capl% EQU 16 set pass=%pass%P
if %capl% EQU 17 set pass=%pass%Q
if %capl% EQU 18 set pass=%pass%R
if %capl% EQU 19 set pass=%pass%S
if %capl% EQU 20 set pass=%pass%T
if %capl% EQU 21 set pass=%pass%U
if %capl% EQU 22 set pass=%pass%V
if %capl% EQU 23 set pass=%pass%W
if %capl% EQU 24 set pass=%pass%X
if %capl% EQU 25 set pass=%pass%Y
if %capl% EQU 26 set pass=%pass%Z
if %done% EQU %num% goto end
goto numorlet

:low
set /a capl=%random%*25/32767+1
if %capl% EQU 1 set pass=%pass%a
if %capl% EQU 2 set pass=%pass%b
if %capl% EQU 3 set pass=%pass%c
if %capl% EQU 4 set pass=%pass%d
if %capl% EQU 5 set pass=%pass%e
if %capl% EQU 6 set pass=%pass%f
if %capl% EQU 7 set pass=%pass%g
if %capl% EQU 8 set pass=%pass%h
if %capl% EQU 9 set pass=%pass%i
if %capl% EQU 10 set pass=%pass%j
if %capl% EQU 11 set pass=%pass%k
if %capl% EQU 12 set pass=%pass%l
if %capl% EQU 13 set pass=%pass%m
if %capl% EQU 14 set pass=%pass%n
if %capl% EQU 15 set pass=%pass%o
if %capl% EQU 16 set pass=%pass%p
if %capl% EQU 17 set pass=%pass%q
if %capl% EQU 18 set pass=%pass%r
if %capl% EQU 19 set pass=%pass%s
if %capl% EQU 20 set pass=%pass%t
if %capl% EQU 21 set pass=%pass%u
if %capl% EQU 22 set pass=%pass%v
if %capl% EQU 23 set pass=%pass%w
if %capl% EQU 24 set pass=%pass%x
if %capl% EQU 25 set pass=%pass%y
if %capl% EQU 26 set pass=%pass%z
if %done% EQU %num% goto end
goto numorlet

:end
cls
Echo Your password is: %pass%
Echo.
Echo 1) generate another password
echo 2) Save to text file
Echo 3) main menu
set /p jip=
if %jip%==1 goto start90
if %jip%==2 goto savetotextfilepw
if %jip%==3 goto 789987

if %jip%==! goto 4734
goto 789987

:savetotextfilepw
echo. >>password.txt
echo Password generated @%time%-%date%: >>password.txt
echo %pass%>>password.txt >>password.txt
echo Saved to %CD%\password.txt.
pause
goto 789987



goto start

:9068
cls
echo.
echo                     *                  *
echo                     *      *  *  ****  * *  *  *
echo                     *      *  *  *     *    *  *
echo                     ****   ****  ****  * *  ****
echo                                                *
echo                                               *
echo.
echo.
echo                     *             *    *
echo                     *      ****  ***  ***  ****
echo                     *      *  *   *    *   *  *
echo                     ****   ****   *    *   ****
echo.
echo.
pause
:dads
cls
echo Your lucky lottery numbers are:

set /a t2=0
echo. >>"%CD%\XSYS\PROGRAMS\LLOTTO\chance.txt"
:gen1
if %t2% EQU 4 goto end
set /a number=%random%*9999/32767+1
type "%CD%\XSYS\PROGRAMS\LLOTTO\chance.txt" | find "%number%" || goto gen2
goto gen1
:gen2
if %number% LSS 0 goto gen1
Echo %number% >> "%CD%\XSYS\PROGRAMS\LLOTTO\chance.txt"
set /a t2=%t2%+1
goto gen1
:end
type "%CD%\XSYS\PROGRAMS\LLOTTO\chance.txt"
del "%CD%\XSYS\PROGRAMS\LLOTTO\chance.txt"
echo.
pause
cls
echo 1) play again
echo 2) main menu
set /p uip=
if %uip%==1 goto dads
if %uip%==2 goto P
if %uip%==! goto 4734

:707
cls
echo                         Credits
echo.
echo     Alot of this program is the work of other people. I just took
echo   those programs from other people and put them all in one program,
echo  so this program is pretty much just a database. Anyway,those people
echo              desevre credit for what they made.
echo.
echo          William from www.higginsbatch.webs.com
echo.
echo      ScrewTheLotOfYou from www.screwthelotofyou.webs.com
echo.
echo        abs1296 from www.sites.google.com/site/absppt
echo.
echo                        schoolhacks
echo.
pause
goto P

:679
cls
echo This is a gambling game.
cls
start "%CD%\XSYS\PROGRAMS\SP5.exe"
echo running Las-Vagas 777
pause
goto P

:709
goto P

:660
cls
echo press any key to play game
pause>nul
cls
start "%CD%\XSYS\PROGRAMS\SP7.bat"
echo running deal or no deal.
pause
goto P

::OLD ADMIN PROG
:OLDBIOS
:77909
cls
color 0f
echo safe mode menu
echo.
echo 1) run program in safe mode
echo 2) current user accounts
echo 3) go back
set /p kpie=
if %kpie%==1 goto olp
if %kpie%==2 goto opu
if %kpie%==3 goto ujkl

:SAFE-MODE
:olp
:dws
echo.>>"%CD%\XSYS\USERS\logonrecord.txt"
echo safe mode was entered at %time% on %date% >>"%CD%\XSYS\USERS\syslog.txt"
cls
echo press any key to start in safe mode
pause>nul
goto smodemain

:smodemain
cls
echo safe mode
echo.
echo logon
set SUUN=%random%
echo Your username is %SUUN%.
set /p user6=username:hit enter
set /p pass4=password:hit enter
cls
echo safe mode
echo.
echo valid logon
pause


@ECHO OFF

@CLS
ECHO Loading-Please wait [1%%]

@CLS
ECHO Loading-Please wait [2%%]

@CLS
ECHO Loading-Please wait [3%%]

@CLS
ECHO Loading-Please wait [4%%]

@CLS
ECHO Loading-Please wait [5%%]

@CLS
ECHO Loading-Please wait [6%%]

@CLS
ECHO Loading-Please wait [7%%]

@CLS
ECHO Loading-Please wait [8%%]

@CLS
ECHO Loading-Please wait [9%%]

@CLS
ECHO Loading-Please wait [10%%]

@CLS
ECHO Loading-Please wait [11%%]

@CLS
ECHO Loading-Please wait [12%%]

@CLS
ECHO Loading-Please wait [13%%]

@CLS
ECHO Loading-Please wait [14%%]

@CLS
ECHO Loading-Please wait [15%%]

@CLS
ECHO Loading-Please wait [16%%]

@CLS
ECHO Loading-Please wait [17%%]

@CLS
ECHO Loading-Please wait [18%%]

@CLS
ECHO Loading-Please wait [19%%]

@CLS
ECHO Loading-Please wait [20%%]

@CLS
ECHO Loading-Please wait [21%%]

@CLS
ECHO Loading-Please wait [22%%]

@CLS
ECHO Loading-Please wait [23%%]

@CLS
ECHO Loading-Please wait [24%%]

@CLS
ECHO Loading-Please wait [25%%]

@CLS
ECHO Loading-Please wait [26%%]

@CLS
ECHO Loading-Please wait [27%%]

@CLS
ECHO Loading-Please wait [28%%]

@CLS
ECHO Loading-Please wait [29%%]

@CLS
ECHO Loading-Please wait [30%%]

@CLS
ECHO Loading-Please wait [31%%]

@CLS
ECHO Loading-Please wait [32%%]

@CLS
ECHO Loading-Please wait [33%%]

@CLS
ECHO Loading-Please wait [34%%]

@CLS
ECHO Loading-Please wait [35%%]

@CLS
ECHO Loading-Please wait [36%%]

@CLS
ECHO Loading-Please wait [37%%]

@CLS
ECHO Loading-Please wait [38%%]

@CLS
ECHO Loading-Please wait [39%%]

@CLS
ECHO Loading-Please wait [40%%]

@CLS
ECHO Loading-Please wait [41%%]

@CLS
ECHO Loading-Please wait [42%%]

@CLS
ECHO Loading-Please wait [43%%]

@CLS
ECHO Loading-Please wait [44%%]

@CLS
ECHO Loading-Please wait [45%%]

@CLS
ECHO Loading-Please wait [46%%]

@CLS
ECHO Loading-Please wait [47%%]

@CLS
ECHO Loading-Please wait [48%%]

@CLS
ECHO Loading-Please wait [49%%]

@CLS
ECHO Loading-Please wait [50%%]

@CLS
ECHO Loading-Please wait [51%%]

@CLS
ECHO Loading-Please wait [52%%]

@CLS
ECHO Loading-Please wait [53%%]

@CLS
ECHO Loading-Please wait [54%%]

@CLS
ECHO Loading-Please wait [55%%]

@CLS
ECHO Loading-Please wait [56%%]

@CLS
ECHO Loading-Please wait [57%%]

@CLS
ECHO Loading-Please wait [58%%]

@CLS
ECHO Loading-Please wait [59%%]

@CLS
ECHO Loading-Please wait [60%%]

@CLS
ECHO Loading-Please wait [61%%]

@CLS
ECHO Loading-Please wait [62%%]

@CLS
ECHO Loading-Please wait [63%%]

@CLS
ECHO Loading-Please wait [64%%]

@CLS
ECHO Loading-Please wait [65%%]

@CLS
ECHO Loading-Please wait [66%%]

@CLS
ECHO Loading-Please wait [67%%]

@CLS
ECHO Loading-Please wait [68%%]

@CLS
ECHO Loading-Please wait [69%%]

@CLS
ECHO Loading-Please wait [70%%]

@CLS
ECHO Loading-Please wait [71%%]

@CLS
ECHO Loading-Please wait [72%%]

@CLS
ECHO Loading-Please wait [73%%]

@CLS
ECHO Loading-Please wait [74%%]

@CLS
ECHO Loading-Please wait [75%%]

@CLS
ECHO Loading-Please wait [76%%]

@CLS
ECHO Loading-Please wait [77%%]

@CLS
ECHO Loading-Please wait [78%%]

@CLS
ECHO Loading-Please wait [79%%]

@CLS
ECHO Loading-Please wait [80%%]

@CLS
ECHO Loading-Please wait [81%%]

@CLS
ECHO Loading-Please wait [82%%]

@CLS
ECHO Loading-Please wait [83%%]

@CLS
ECHO Loading-Please wait [84%%]

@CLS
ECHO Loading-Please wait [85%%]

@CLS
ECHO Loading-Please wait [86%%]

@CLS
ECHO Loading-Please wait [87%%]

@CLS
ECHO Loading-Please wait [88%%]

@CLS
ECHO Loading-Please wait [89%%]

@CLS
ECHO Loading-Please wait [90%%]

@CLS
ECHO Loading-Please wait [91%%]

@CLS
ECHO Loading-Please wait [92%%]

@CLS
ECHO Loading-Please wait [93%%]

@CLS
ECHO Loading-Please wait [94%%]

@CLS
ECHO Loading-Please wait [95%%]

@CLS
ECHO Loading-Please wait [96%%]

@CLS
ECHO Loading-Please wait [97%%]

@CLS
ECHO Loading-Please wait [98%%]

@CLS
ECHO Loading-Please wait [99%%]

@CLS
ECHO Loading-Please wait [100%%]
pause



:ASA
cls
color 07
echo safe mode
echo.
echo Hello %SUUN%
set /p input2=Command:

if %input2%==logoff goto SMODELOGOFF
if %input2%==games goto 12
if %input2%==message goto 209
if %input2%==movie goto 3054
if %input2%==calculator goto 47890
if %input2%==internet goto 52
if %input2%==music goto 62
if %input2%==logoff goto 72
if %input2%==time goto 82
if %input2%==help goto 452
if %input2%==exit goto 772
if %input2%==generators goto 7899872
if %input2%==credits goto 7072
if %input2%==matrix goto SMODEMATRIX
echo Command Invalid.
echo Type ? for a list.
pause
goto PSA


:SMODEMATRIX
echo Escape charcter is ^^C (Control-C).
echo Press any key to stat matrix...
pause>nul
call "%CD%\XSYS\PROGRAMS\SP6.bat"
pause
goto ASA

:12
cls
color 07
echo safe mode
echo.
echo games:
echo 1) HITCHHIK
echo 2) TTT
echo 3) ???
echo 4) ???
echo 5) ???
echo 6) ???
echo 7) ???
echo 8) ???
echo 9) main menu
echo.
echo What would you like to play?
set /p spie5=

if %spie5%==1 goto HHSM
if %spie5%==2 goto TTTSM
if %spie5%==3 goto P9
if %spie5%==4 goto P9
if %spie5%==5 goto P9
if %spie5%==6 goto P9
if %spie5%==7 goto P9
if %spie5%==8 goto P9
if %spie5%==9 goto PSA
echo Command Invalid.
echo Type ? for a list.
pause
goto 12

:HHSM
echo Running HITCHHIK.
call "%CD%\XSYS\PROGRAMS\HITCHHIK.exe"
pause
goto 12

:TTTSM
echo running TTT.
call "%CD%\XSYS\PROGRAMS\SK09.bat"
pause
goto 12



:209
cls
echo safe mode
echo.
echo not available.
Pause
goto PSA

:3054
cls
echo safe mode
echo.
echo star wars movie
echo hit enter to connect to server
echo hit enter to watch movie
telnet towel.blinkenlights.nl
pause
goto PSA

:47890
cls
echo safe mode
echo.
echo running calculator
call "%CD%\XSYS\PROGRAMS\SP4.bat"
pause
goto PSA



:52
cls
echo safe mode
echo.
echo Internet menu
echo.
echo 1) google
echo 2) main menu
echo.
set /p upiey=
if %upiey%==1 goto PT
if %upiey%==2 goto PSA

:AT
cls
start www.google.com
pause
goto PSA

:62
cls
echo music is not available.
pause
goto PSA

:72
cls
:SMODELOGOFF
echo proceding will exit.
pause
echo safe mode was exited at %time% on %date% by %SUUN% >>"%CD%\XSYS\USERS\logonrecord.txt"
exit



:82
cls
echo                          The Time Is
echo.
echo.
echo                          %TIME%
echo                          ***********
echo.
echo.
pause
goto PSA

:452
cls
echo all commands:
echo command   !output
echo ----------!--------
echo games     !goto games
echo message   !goto mesenger      disabled
echo movie     !plays movie
echo calculator!goto calculator
echo internet  !goto internet
echo music     !goto meadia player disabled
echo logoff    !logs off
echo time      !displays the time
echo help      !displays help
echo exit      !exits
echo generators!goto generator menu
echo credits   !goto credits       disabled
echo matrix    !goto matrix
echo   !       !starts self destruct disabled

echo.
pause
goto PSA

:772
cls
echo exiting
pause
echo safe mode was exited at at %time% on %date% by %SUUN% >>"%CD%\XSYS\USERS\logonrecord.txt"
exit

:7899872
cls
echo safe mode
echo.
echo 1) random number generator
echo 2) password generator
echo 3) ???
echo 4) main menu
echo.
set /p ipie=
if %ipie%==1 goto 9082
if %ipie%==2 goto 9072
if %ipie%==3 goto 90682
if %ipie%==4 goto PSA

:9082
cls
echo safe mode
echo.
echo program not installed
pause
goto 7899872

:9072
:start90
set pass=
set /a done=0
echo %random%%random%
pause
goto 7899872

:90682
cls
echo safe mode
echo.
echo game not acessable in safe mode
pause
goto PSA

:A9
cls
echo safe mode
echo.
echo game not accessable in safe mode
pause
goto PSA

:7072
echo safe mode
echo.
echo credits not avalible in safe mode
pause
goto PSA

:7092
cls
echo safe mode
echo.
echo matrix not acessable in safe mode
pause
goto PSA

:opu
cls
set /p h80=enter security code:
IF EXIST "%CD%\XSYS\SYSTEM\ADMIN-%h80%.txt" goto 6565
if "%h80%" EQU "!" goto 4734
echo invalid code
pause
if "%LOGIN%" EQU "YES" goto P
exit

:6565
set ADMINID=%RANDOM%
cls
echo Welcome to admintools for {X-DOS}.
echo You are %username% (%ADMINID%)
echo Please choose an option from the list below:
echo.
echo 1)View Logins
echo 2)View accounts
echo 3)Start Safe Mode
echo 4)Clear log
echo 5)Mode
echo 6)Set admin password.
echo 7)exit
set /p input=User/ADMIN:
if %input%==1 goto loglist
if %input%==2 goto acclist
if %input%==3 goto olp
if %input%==4 goto logman
if %input%==5 goto modeman
if %input%==6 goto SAP
if %input%==7 goto ADMINLEAVE
echo Invalid command.
pause
goto 6565

:ADMINLEAVE
if "%LOGIN%" EQU "YES" goto P
goto up

:SAP
cls
echo Current admin password:
type "%CD%\XSYS\SYSTEM\ADMIN.txt"
echo.
echo Set a new one? (Y/N)
set /p input=
if %input%==y goto SP
if %input%==Y goto SP
if %input%==n goto 6565
if %input%==N goto 6565
echo invalid.
pause
goto SAP

:SP
echo New password:
set /p NP=
del "%CD%\XSYS\SYSTEM\ADMIN-%h80%.txt"
echo %NP%>>"%CD%\XSYS\SYSTEM\ADMIN-%NP%.txt"
echo Set.
pause
goto 6565

:modeman
cls
echo Modes:
echo.
echo 1)Enable/Disable registration.
echo 2)Enable/Disable Boot menu.
echo 3)Configure AutoLogin
echo 4)Exit
echo.
set /p input=Modes:
if %input%==1 goto EDR
if %input%==2 goto EDB
if %input%==3 goto CONFAL
if %input%==4 goto 6565
echo invalid

:CONFAL
cls
echo AutoLogin is used to bypass the login screen by automatically logging
echo you in to X-DOS. This is good for when you are the only one using the
echo program.
echo WRITE THIS DOWN:
echo.
echo The options menu will not be available at startup, so when in the main
echo X-DOS console, use the command "SETTINGS" to get to the boot/safe mode/admin
echo menus.
echo.
echo This message will appear every time this component is opened.
pause
cls
IF EXIST "%CD%\XSYS\SYSTEM\MODE\AUTOMATICLOGIN.txt" goto RMAL
echo Please enter username to use in automatic login:
echo You can type "/q" at any prompt to return to the mode manager.
set /p ALUN=Username:
if "%ALUN%" EQU "/q" goto modeman
if "%ALUN%" EQU "/Q" goto modeman
set /p ALPS=Password:
if "%ALPS%" EQU "/q" goto modeman
if "%ALPS%" EQU "/Q" goto modeman
echo Configuring, please wait...
echo %ALUN%>>"%CD%\XSYS\SYSTEM\AUTOLOGIN.txt"
echo %ALUN% %ALPS% %time%-%date% %username%>>"%CD%\XSYS\SYSTEM\MODE\AUTOMATICLOGIN.txt"
echo %ALPS%>>"%CD%\XSYS\SYSTEM\AUTOLOGINP.txt"
echo AutoLogin has been configured on this system.
pause
goto modeman

:RMAL
echo An AutoLogin account is already configured on this system for:
type "%CD%\XSYS\SYSTEM\AUTOLOGIN.txt"
type "%CD%\XSYS\SYSTEM\AUTOLOGINP.txt"
echo.
set /p input=Would you like to remove it? (Y/N)
if %input%==y goto RAL
if %input%==Y goto RAL
if %input%==n goto modeman
if %input%==N goto modeman
echo invalid.
pause
goto RMAL

:RAL
del "%CD%\XSYS\SYSTEM\AUTOLOGIN.txt"
del "%CD%\XSYS\SYSTEM\MODE\AUTOMATICLOGIN.txt"
del "%CD%\XSYS\SYSTEM\AUTOLOGINP.txt"
echo Removed Successfuly!
pause
goto modeman

:EDR
cls
IF EXIST "%CD%\XSYS\SYSTEM\MODE\NOREG.txt" goto ER
echo Registration is currently enabled on this copy of X-DOS.
echo Would you like to disable it? (Y/N)
set /p input=:
if %input%==y goto DR
if %input%==Y goto DR
if %input%==n goto modeman
if %input%==N goto modeman
echo invalid.
pause
goto EDR

:DR
echo %time%-%date%-%username%-(%user%)>>"%CD%\XSYS\SYSTEM\MODE\NOREG.txt"
echo Registration Disabled!
pause
goto modeman


:ER
cls
echo Registration is currently disabled on this copy of X-DOS.
echo Would you like to enable it? (Y/N)
set /p input=:
if %input%==y goto ER
if %input%==Y goto ER
if %input%==n goto modeman
if %input%==N goto modeman
echo invalid.
pause
goto EDR

:ER
del "%CD%\XSYS\SYSTEM\MODE\NOREG.txt"
echo Registration Enabled!
pause
goto modeman

:EDB
cls
IF EXIST "%CD%\XSYS\SYSTEM\MODE\NOBOOT.txt" goto EBOOT
echo Boot Menu is currently enabled on this copy of X-DOS.
echo Would you like to disable it? (Y/N)
set /p input=:
if %input%==y goto DBOOT
if %input%==Y goto DBOOT
if %input%==n goto modeman
if %input%==N goto modeman
echo invalid.
pause
goto EDB

:DBOOT
echo %time%-%date%-%username%-(%user%)>>"%CD%\XSYS\SYSTEM\MODE\NOBOOT.txt"
echo Boot Menu Disabled!
pause
goto modeman


:EBOOT
cls
echo Boot Menu is currently disabled on this copy of X-DOS.
echo Would you like to enable it? (Y/N)
set /p input=:
if %input%==y goto EB
if %input%==Y goto EB
if %input%==n goto modeman
if %input%==N goto modeman
echo invalid.
pause
goto EDB

:EB
del "%CD%\XSYS\SYSTEM\MODE\NOBOOT.txt"
echo Boot Menu Enabled!
pause
goto modeman


:logman
echo Clear log? (Y/N)
echo Current log data will be lost.
set /p input:
if %input%==y goto dely
if %input%==Y goto dely
if %input%==n goto 6565
if %input%==N goto 6565
echo Invalid command.
pause
goto logman

:dely
del "%CD%\XSYS\USERS\logonrecord.txt"
echo Log cleared.
echo.
pause
goto 6565

:loglist
cls
type "%CD%\XSYS\USERS\logonrecord.txt"
pause
goto 6565


:acclist
cls
echo !WELCOME ADMINISTRATOR!
echo current user accounts are:
echo.
echo Time/date created
echo Username ^| Password
echo Real name

type "%CD%\XSYS\USERS\LOGIN.txt"
echo.
pause
goto 6565

:ujkl
cls
echo for security reasons continuing will exit the program
pause
echo safe mode was exited at %time% on %date% >>"%CD%\XSYS\SYSTEM\syslog.txt"
exit

:register
cls
IF EXIST "%CD%\XSYS\SYSTEM\MODE\NOREG.txt" goto noreg
echo Welcome to registration system!
echo Please follow steps, when prompted.
echo type "/q" in any propt to exit.
echo.
:unaa
echo Desired Username:
set /p UNAA=
if "%UNAA%" EQU "/q" goto X-DOS1
if "%UNAA%" EQU "/Q" goto X-DOS1
IF EXIST "%CD%\XSYS\USERS\%UNAA%-un.txt" goto ivunaa
echo O.K.
goto passaa
:ivunaa
echo Username already taken!
pause
goto register

:passaa
echo Desired Password:
set /p PASSAA=
if "%PASSAA%" EQU "/q" goto X-DOS1
if "%PASSAA%" EQU "/Q" goto X-DOS1

echo Re-enter password:
set /p PASSAA2=
if "%PASSAA2%" EQU "/q" goto X-DOS1
if "%PASSAA2%" EQU "/Q" goto X-DOS1


if "%PASSAA%" EQU "%PASSAA2%" goto rnaa
echo Passwords don't match!
pause
goto passaa

:rnaa
echo Real Name:
set /p RNAA=
if "%RNAA%" EQU "/q" goto X-DOS1
if "%RNAA%" EQU "/Q" goto X-DOS1

:pinfo
echo. >>"%CD%\XSYS\USERS\%UNAA%-un.txt"
echo %RNAA% >>"%CD%\XSYS\USERS\%UNAA%-un.txt"
echo %UNAA% >>"%CD%\XSYS\USERS\%UNAA%-un.txt"
echo %time%-%date% >>"%CD%\XSYS\USERS\%UNAA%-un.txt"
echo on comp. acc %username% >>"%CD%\XSYS\USERS\%UNAA%-un.txt"

echo. >>"%CD%\XSYS\USERS\%UNAA%-%PASSAA%-login.txt"
echo %RNAA% >>"%CD%\XSYS\USERS\%UNAA%-%PASSAA%-login.txt"
echo %UNAA% >>"%CD%\XSYS\USERS\%UNAA%-%PASSAA%-login.txt"
echo %time%-%date% >>"%CD%\XSYS\USERS\%UNAA%-%PASSAA%-login.txt"
echo on comp. acc %username% >>"%CD%\XSYS\USERS\%UNAA%-%PASSAA%-login.txt"

::for admins
echo. >>"%CD%\XSYS\USERS\LOGIN.txt"
echo %time%-%date% >>"%CD%\XSYS\USERS\LOGIN.txt"
echo %UNAA% ^| %PASSAA% >>"%CD%\XSYS\USERS\LOGIN.txt"
echo %RNAA% >>"%CD%\XSYS\USERS\LOGIN.txt"

echo Registration Complete!
echo You will be redirected to the login screen...
pause
goto X-DOS1

:noreg
echo Registration disabled by ADMIN.
pause
if "%LOGIN%" EQU "YES" goto P
goto X-DOS1

:noboot
echo Boot menu disabled by ADMIN.
if "%LOGIN%" EQU "YES" goto P
pause
goto X-DOS1
