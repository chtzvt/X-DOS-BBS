@echo off
title Chat
color 07
cls

::Version 6.3
::By Captaincharles (Reddit UN) (From DSOFT) 4:45 PM 7/8/2012
::
::This application is freeware and the source may be
::Copied into other programs, edited, and all of that good stuff as
::long as the original credit goes to myself (Charlton Trezevant) and
::DSOFT. Visit dsoft.web44.net or telnet into dsoft.zapto.org, or E-Mail
::us at  differentialsoftware@gmail.com. 
::Thank you!

SET SNAMME=default_user
if "%SBRAND%" EQU "" goto ODLAUNCHER


:main
cls
echo Chat with other people on the network.
echo No account required.
echo.
set /p SNAMME=Screen name:
if "%SNAMME%" EQU "ROOT" goto RMENU1
if "%SNAMME%" EQU "FUNCT1" goto funct1
if "%SNAMME%" EQU "FUNCT2" goto funct2
goto CCHOICE
:CCHOICE
cls
echo Please choose a chatroom:
echo.
echo 1)Chatroom A
echo 2)Chatroom B
echo 3)Chatroom C
echo 4)Chatroom D
echo 5)Exit
set /p CROM=Chatroom:
if "%CROM%" EQU "1" goto LOBBY
if "%CROM%" EQU "2" goto LOBBY
if "%CROM%" EQU "3" goto LOBBY
if "%CROM%" EQU "4" goto LOBBY
if "%CROM%" EQU "5" goto main 
echo Invalid chatroom.
pause
goto CCHOICE

:LOBBY
cls
echo Anouncements:
echo.
type \\E026060n01\room308\SERVER\\ANONCHAT\ADMIN\ANOUNCEMENTS.txt
echo.
echo Press any key to continue to chat...
pause>nul
goto %CROM%

:1
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo user %SNAMME% is %username% >>\\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo %SNAMME% entered chat. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
goto chat

:chat
IF EXIST \\E026060n01\room308\SERVER\ANONCHAT\BANS\%USERNAME%.txt goto USERBAN
cls
echo Welcome to chat.
echo Type /q to exit.
echo type /r to refresh.
echo type /whois to see who you are.
echo.
type \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo.
echo %SNAMME% in Chat.
set /p MSG1=Message:
if "%MSG1%" EQU "/r" goto chat
IF "%MSG1%" EQU "/color" goto color1
if "%MSG1%" EQU "/whois" goto whoiam
if "%MSG1%" EQU "/ROOT" goto RMENU2
if "%MSG1%" EQU "/file" goto FILES
if "%MSG1%" EQU "/FILE" goto FILES
if "%MSG1%" EQU "/q" goto leave
echo SENDING...

echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo  %SNAMME% said: >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo  %MSG1% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo  %time% %date% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
goto chat

:leave
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo %SNAMME% left! >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
goto CCHOICE

:color1
color 17
goto chat

:RMENU2
set /p RPASS=Password:
if "%RPASS%" EQU "DSOFT" goto RMENU
echo Invalid Password.
echo.
pause
goto chat

:whoiam
echo You are %SNAMME% (%username%).
echo.
echo Everyone else is:
type \\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo.
pause
goto chat

::CHATROOM 22222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
 
:2
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo user %SNAMME% is %username% >>\\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo %SNAMME% entered chat. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
goto chat2

:chat2
IF EXIST \\E026060n01\room308\SERVER\ANONCHAT\BANS\%USERNAME%.txt goto USERBAN
cls
echo Welcome to Chatroom B.
echo Type /q to exit.
echo type /r to refresh.
echo type /whois to see who you are.
echo.
type \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo.
echo %SNAMME% in Chatroom B.
set /p MSG1=Message:
if "%MSG1%" EQU "/r" goto chat2
if "%MSG1%" EQU "/file" goto FILES2
if "%MSG1%" EQU "/FILE" goto FILES2
if "%MSG1%" EQU "/whois" goto whoiam2
IF "%MSG1%" EQU "/color" goto color12
if "%MSG1%" EQU "/ROOT" goto RMENU22
if "%MSG1%" EQU "/q" goto leave2
echo SENDING...

echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo  %SNAMME% said: >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo  %MSG1% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo  %time% %date% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
goto chat2

:leave2
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo %SNAMME% left! >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
goto CCHOICE

:color12
color 17
goto chat2

:RMENU22
set /p RPASS=Password:
if "%RPASS%" EQU "DSOFT" goto RMENU
echo Invalid Password.
echo.
pause
goto chat2

:whoiam2
echo You are %SNAMME% (%username%).
echo.
echo Everyone else is:
type \\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo.
pause
goto chat2

::CHATROOM 3 33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333

:3
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo user %SNAMME% is %username% >>\\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo %SNAMME% entered chat. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
goto chat3

:chat3
IF EXIST \\E026060n01\room308\SERVER\ANONCHAT\BANS\%USERNAME%.txt goto USERBAN
cls
echo Welcome to Chatroom C.
echo Type /q to exit.
echo type /r to refresh.
echo type /whois to see who you are.
echo.
type \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo.
echo %SNAMME% in Chatroom C.
set /p MSG1=Message:
if "%MSG1%" EQU "/r" goto chat3
if "%MSG1%" EQU "/whois" goto whoiam3
if "%MSG1%" EQU "/file" goto FILES3
if "%MSG1%" EQU "/FILE" goto FILES3
IF "%MSG1%" EQU "/color" goto color13
if "%MSG1%" EQU "/ROOT" goto RMENU23
if "%MSG1%" EQU "/q" goto leave3
echo SENDING...

echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo  %SNAMME% said: >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo  %MSG1% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo  %time% %date% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
goto chat3

:leave3
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo %SNAMME% left! >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
goto CCHOICE

:color13
color 17
goto chat3


:RMENU23
set /p RPASS=Password:
if "%RPASS%" EQU "DSOFT" goto RMENU
echo Invalid Password.
echo.
pause
goto chat3

:whoiam3
echo You are %SNAMME% (%username%).
echo.
echo Everyone else is:
type \\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo.
pause
goto chat3

::CHATROOM 4 444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444

:4
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo user %SNAMME% is %username% >>\\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo %SNAMME% entered chat. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
goto chat4

:chat4
IF EXIST \\E026060n01\room308\SERVER\ANONCHAT\BANS\%USERNAME%.txt goto USERBAN
cls
echo Welcome to Chatroom D.
echo Type /q to exit.
echo type /r to refresh.
echo type /whois to see who you are.
echo.
type \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo.
echo %SNAMME% in Chatroom D.
set /p MSG1=Message:
if "%MSG1%" EQU "/r" goto chat4
if "%MSG1%" EQU "/whois" goto whoiam4
if "%MSG1%" EQU "/file" goto FILES4
if "%MSG1%" EQU "/FILE" goto FILES4
IF "%MSG1%" EQU "/color" goto color14
if "%MSG1%" EQU "/ROOT" goto RMENU24
if "%MSG1%" EQU "/q" goto leave4
echo SENDING...

echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo  %SNAMME% said: >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo  %MSG1% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo  %time% %date% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
goto chat4

:leave4
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo %SNAMME% left! >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
goto CCHOICE

:color14
color 17
goto chat2


:RMENU24
set /p RPASS=Password:
if "%RPASS%" EQU "DSOFT" goto RMENU
echo Invalid Password.
echo.
pause
goto chat4

:whoiam4
echo You are %SNAMME% (%username%).
echo.
echo Everyone else is:
type \\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo.
pause
goto chat4

:WALL
goto main

:funct
cls
ECHO What is funct?
echo.
echo "funct" is short for function.
echo in this chat program, there are some hidden 
echo functions that do different things, such as clear
echo the chatroom, show the logged in users and time of
echo their login, as well as remove the chat server or program 
echo software from the LAN. These short commands were programmed 
echo into the software to make it easier for administrators to do
echo simple tasks without logging in as ROOT. some of these functions (The 
echo latter two) Require special passcodes in order to function, to protect people
echo that rely on the chatroom for communication. the root passcode is "DSOFT", which 
echo will let you view the current passcodes for the chat program.
echo.
echo How can i change the passcodes?
echo.
echo Login as username ROOT.
echo you will be promted to enter a password (DSOFT)
echo in the ROOT menu, select "1" (Change a passcode)
echo enter the old passcode.
echo enter the new passcode.
echo the program will tell you the status of the change, 
echo then reload the root menu.
echo.
echo Who are administrators?
echo.
echo Whoever installed the program. (Visible froom the ROOT menu)
ECHO.
echo list:
echo    FUNCT1=CLEAR CHATROOM
echo    FUNCT2=SHOW ACESS LIST
ECHO    FUNCT3=COPY CHATROOM TO DESKTOP
ECHO    FUNCT004=DEL CHAT FROM NETWORK (NEED PASSCODE)
ECHO    FUNCT032=DEL ENTIRE SERVER (NEED PASSCODE)
ECHO.
PAUSE
GOTO main

:funct1
cls
echo             FUNCT1
echo Please choose a chatroom to clear:
echo.
echo 1)Chatroom A
echo 2)Chatroom B
echo 3)Chatroom C
echo 4)Chatroom D
echo 5)Exit
set /p CROM=Chatroom:
if "%CROM%" EQU "1" goto 1CLS
if "%CROM%" EQU "2" goto 2CLS
if "%CROM%" EQU "3" goto 3CLS
if "%CROM%" EQU "4" goto 4CLS
if "%CROM%" EQU "5" goto lf1
echo Invalid chatroom.
pause
goto funct1


:lf1
if "%ROOT%" EQU "YES" goto RMENU
goto main

:1CLS
attrib \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt -h
del \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo [Chat refreshed at %time% %date%] >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
attrib \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt +h
echo Cleared
pause
goto funct1

:2CLS
attrib \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt -h
del \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo [Chat refreshed at %time% %date%] >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
attrib \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt +h
echo Cleared
pause
goto funct1

:3CLS
attrib \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt -h
del \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo [Chat refreshed at %time% %date%] >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
attrib \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt +h
echo Cleared
pause
goto funct1

:4CLS
attrib \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt -h
del \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo [Chat refreshed at %time% %date%] >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
attrib \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt +h
echo Cleared
pause
goto funct1

:funct2
echo FUNCT2 ENGAGED.
echo.
type \\E026060n01\room308\SERVER\ANONCHAT\names.txt
echo.
set /p vpie=Clear list? (Y/N)
if %vpie%==Y goto clr2
if %vpie%==y goto clr2
if %vpie%==n goto lf2
if %vpie%==N goto lf2
echo invalid.
pause
goto funct2

:lf2
if "%ROOT%" EQU "YES" goto RMENU
goto main

:clr2
attrib "\\E026060n01\room308\SERVER\ANONCHAT\names.txt" -h
del "\\E026060n01\room308\SERVER\ANONCHAT\names.txt"
echo [Cleared %time% %date%] >>\\E026060n01\room308\SERVER\ANONCHAT\names.txt
attrib "\\E026060n01\room308\SERVER\ANONCHAT\names.txt" +h
echo cleared.
pause
goto main

:funct3
cls
echo             FUNCT3
echo Please choose a chatroom to copy:
echo.
echo 1)Chatroom A
echo 2)Chatroom B
echo 3)Chatroom C
echo 4)Chatroom D
echo 5)Exit
set /p CROM=Chatroom:
if "%CROM%" EQU "1" goto 1CLS
if "%CROM%" EQU "2" goto 2CLS
if "%CROM%" EQU "3" goto 3CLS
if "%CROM%" EQU "4" goto 4CLS
if "%CROM%" EQU "5" goto f3l
echo Invalid chatroom.
pause
goto funct3

:f3l
if "%ROOT%" EQU "YES" goto RMENU
goto main

:1CLS
echo Copying chatroom to desktop, please wait...
xcopy \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt %userprofile%\Desktop 
echo Copied.
pause
goto funct3

:2CLS
echo Copying chatroom to desktop, please wait...
xcopy \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt %userprofile%\Desktop 
echo Copied.
pause
goto funct3

:3CLS
echo Copying chatroom to desktop, please wait...
xcopy \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt %userprofile%\Desktop 
echo Copied.
pause
goto funct3

:4CLS
echo Copying chatroom to desktop, please wait...
xcopy \\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt %userprofile%\Desktop 
echo Copied.
pause
goto funct3

:WALL
goto main

:RMENU1
set /p RPASS=Password:
if "%RPASS%" EQU "DSOFT" goto RMENU
echo Invalid Password.
echo.
pause
goto main

:RMENU
cls
set ROOT=YES
echo Root menu.     %time% %date% 
echo.
echo.
echo Root options:
echo 1)View a passcode
echo 2)FUNCT QuickStart
echo 3)Sysinfo
echo 4)Banned users
echo 5)Back up server to flashdisk.
echo 6)File options
echo 7)Add an anouncement
echo 8)Clear Chatroom
echo 9)Clear Users
echo 10)Copy a chatroom.
echo 11)Exit
echo.
set /p vpie=COM:
if %vpie%==1 goto CRPASS
if %vpie%==whoami goto ROOTWHO
if %vpie%==2 goto QSFUNCT
if %vpie%==3 goto ROOTINF
if %vpie%==4 goto BANMAN
if %vpie%==5 goto SBACKUP
if %vpie%==6 goto FOPT
if %vpie%==7 goto AMNTS
if %vpie%==8 goto funct1
if %vpie%==9 goto funct2
if %vpie%==10 goto funct3
if %vpie%==11 goto main
echo Command Is Invalid.
pause
goto RMENU

:AMNTS
cls
echo Current Anouncements:
echo.
type \\E026060n01\room308\SERVER\\ANONCHAT\ADMIN\ANOUNCEMENTS.txt
echo.
echo Type /q to exit.
set /p ACONT=Anouncement:
if "%ACONT%" EQU "/q" goto RMENU
if "%ACONT%" EQU "/Q" goto RMENU
echo Processing, please wait...
echo. >>\\E026060n01\room308\SERVER\\ANONCHAT\ADMIN\ANOUNCEMENTS.txt
echo %time%/%date%: >>\\E026060n01\room308\SERVER\\ANONCHAT\ADMIN\ANOUNCEMENTS.txt
echo %ACONT% >>\\E026060n01\room308\SERVER\\ANONCHAT\ADMIN\ANOUNCEMENTS.txt
echo Finished! 
echo Anouncement has been posted!
pause
goto RMENU

:FOPT
cls
echo File Options.
echo.
echo Please choose an option below:
echo.
echo 1)View Posts.
echo 2)View Downloads.
echo 3)Download a file
echo 4)Exit
set /p vpie=File:
if %vpie%==1 goto VPOSTS
if %vpie%==2 goto DPOSTS 
if %vpie%==3 goto VDOWN
if %vpie%==4 goto RMENU
echo Invalid.
pause
goto FOPT

:VPOSTS
cls
echo File posts:
echo.
type \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo.
pause
goto FOPT

:DPOSTS
cls
echo Downloads as of %time%/%date%:
echo.
type \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\DOWNLOADLIST.txt
echo.
pause
goto FOPT

:VDOWN
cls
echo.
echo Type "/q" in the name bar to return to
echo the main menu.
echo.
echo Posted files:
type \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo.
set /p DFNAME=File to download?
if %DFNAME%==/q goto FOPT

IF EXIST \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\%DFNAME% goto RDOWNLOAD

Echo Oops! That file name is invalid!
echo.
echo Check that the file name is correct.
pause
goto VDOWN

:RDOWNLOAD
cls 
echo Downloading file, please wait...

echo %SNAMME% (%username%) Downloaded a file: %DFNAME%. >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\DOWNLOADLIST.txt

xcopy \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\%DFNAME% %userprofile%\Desktop >nul
echo File was downloaded to Desktop successfully!

:RDYNMENU
set /p vpie=Download another file? (Y/N)
if %vpie%==y goto VDOWN
if %vpie%==n goto FOPT
if %vpie%==Y goto VDOWN
if %vpie%==N goto FOPT
echo Command is invalid!
pause
goto RDYNMENU


:BANMAN
cls
echo Banned Users:
type \\E026060n01\room308\SERVER\ANONCHAT\BANS\BANNEDUSERS.txt
echo.
echo Please choose an option:
echo.
echo 1)Add ban
echo 2)Remove ban
echo 3)Exit
set /p vpie=BANMAN:
if %vpie%==1 goto ADDBAN1
if %vpie%==2 goto REMBAN1
if %vpie%==3 goto RMENU
echo Command Invalid.
pause
goto BANMAN

:ADDBAN1
cls
echo Please type the username of the person you wish
echo to ban. This must be the COMPUTER LOGIN USERNAME
echo that they are logged into the computer with.
echo For example, the username for john galt would
echo be jgalt.
echo.
echo current bans:
type \\E026060n01\room308\SERVER\ANONCHAT\BANS\BANNEDUSERS.txt
echo.
set /p BANNED1=Username of banned user:
if %BANNED1%==/q goto BANMAN
echo Creating User block, please wait...
echo.
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\BANS\%BANNED1%.txt
echo %BANNED1% %USERNAME% %TIME% %DATE% >>\\E026060n01\room308\SERVER\ANONCHAT\BANS\%BANNED1%.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\BANS\%BANNED1%.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\BANS\BANNEDUSERS.txt
echo A ban was enacted on %BANNED1% at %time% on %date% by %username% >>\\E026060n01\room308\SERVER\ANONCHAT\BANS\BANNEDUSERS.txt
echo Banned.
pause
goto ADDBAN1

:REMBAN1
cls
echo Current bans:
echo.
type \\E026060n01\room308\SERVER\ANONCHAT\BANS\BANNEDUSERS.txt
echo.
echo Type /q to exit.
echo Only the username, not the .txt
echo is nessecary.
echo.
set /p BANNAME=Remove which ban?
if %BANNAME%==/q goto BANMAN
del \\E026060n01\room308\SERVER\ANONCHAT\BANS\%BANNAME%.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\BANS\BANNEDUSERS.txt
echo A ban was removed from %BANNED1% at %time% on %date% by %username% >>\\E026060n01\room308\SERVER\ANONCHAT\BANS\BANNEDUSERS.txt
echo Removed.
pause
goto REMBAN1



:ROOTINF
cls
echo.
echo Current logged in user is: %USERNAME%
echo current location is: %CD%
echo System root is: %systemroot%
echo.
pause
goto RMENU

:ROOTWHO
echo ROOT (%userprofile%)
pause
goto RMENU

:QSFUNCT
cls
echo funct quickstart
echo starting another function will exit the ROOT menu. 
echo Type "exit" to go back.
echo.
set /p SNAMME=FUNCTION:
if "%SNAMME%" EQU "FUNCT" goto funct
if "%SNAMME%" EQU "exit" goto RMENU
if "%SNAMME%" EQU "FUNCT1" goto funct1
if "%SNAMME%" EQU "FUNCT2" goto funct2
if "%SNAMME%" EQU "FUNCT3" goto funct3
if "%SNAMME%" EQU "FUNCTMAP" goto functmaP
echo Invalid.
pause
goto QSFUNCT

:CRPASS
cls
echo Choose the passcode you would like to view:
echo.
echo 1)Del Chat!.bat
echo 2)Remove the Chat! server
echo 3)Exit
echo. 
set /p vpie=COM:
if %vpie%==1 goto CDELPASS
if %vpie%==2 goto CDEL2PASS
if %vpie%==3 goto RMENU
echo Command Is Invalid.
pause
goto RMENU

:CDELPASS
cls 
echo Current Password for 
echo Chat removal:
echo.
echo adm1nDEL1
echo.
pause
goto RMENU

:CDEL2PASS
cls 
echo Current Password for 
echo server removal:
echo.
echo disco2
echo.
pause
goto RMENU

:WALL
goto main

:funct004
cls
echo Chat removal.
echo.
set /p %VPASS1%=Password:
if "%VPASS%"==adm1nDEL1 goto removechat1
echo Invalid Password.
pause
goto main

:WALL
goto main

:removechat1
color 0e
del \\E026060n01\room308\SERVER\ANONCHAT
echo  ----------------
echo {Program Removed.}
echo  ----------------
pause
del Chat! v2.0.bat

:funct032
cls
echo Disabled By administrator.
echo Function is not available at this time.
echo.
pause
goto main
::set /p %VPASS1%=Password:
::if "%VPASS%"==disco2 goto removeserver1

:WALL
goto main

:removeserver1
::del \\E026060n01\room308\SERVER\
color 0e
echo  ---------------
echo {Server Removed.}
echo  ---------------
pause
del Chat! v2.0.bat


:USERBAN
cls
color 17
echo %USERNAME% Has been banned from chat.
echo Please talk to an administrator to 
echo become unbanned.
echo.
pause
exit

:SBACKUP
cls
set /p SBAC=Password:
if %SBAC%==ctbak goto SBAKGOOD
echo INVALID.
pause
goto RMENU


:SBAKGOOD
cls
echo Backing up, Please wait...
echo.
xcopy \\E026060n01\room308\SERVER\ANONCHAT %userprofile%\Desktop
xcopy \\E026060n01\room308\SERVER\ANONCHAT\CHATSERVER.bat %userprofile%\Desktop
attrib %userprofile%\Desktop\CHATSERVER.bat -h
echo Copied to desktop.
pause
goto RMENU

:FILES
title DMS File Transfering Service V1.0
cls
echo Welcome to file transfer!
echo Please choose an option:
echo.
echo 1)Send File
echo 2)Download File
echo 3)Help
ECHO 4)exit
echo.
set /p FILEOP=FILE:
if %FILEOP%==1 goto SENDFILE
if %FILEOP%==2 GOTO GETFILE
if %FILEOP%==3 GOTO FHELP
if %FILEOP%==4 goto chat
echo Invalid command.
pause
goto FILES

:FHELP
cls
echo File Transfering Service Help V1.0
echo.
echo Acessing the FTS menu:
echo.
echo Type "/file" in any chatroom
echo.
echo Sending files:
echo.
echo In the main menu, type "1".
echo.
echo Drag the file to the Desktop.
echo Make sure that the file is not in a folder.
echo THE FILE SYSTEM CAN NOT TRANSFER FOLDERS!
echo NOTE: POSTED FILES CAN NOT BE REMOVED!
echo follow the onscreen instructions.
echo.
echo Downloading files:
echo.
echo in the main menu, type 2.
echo follow the onscreen instructions.
echo.
pause
goto FILES

:GETFILE
cls
echo Chat! file downloader V1.0
echo.
echo Type "/q" in the name bar to return to
echo the main menu.
echo.
echo Posted files:
type \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo.
set /p DFNAME=File to download?
if %DFNAME%==/q goto FILES

IF EXIST \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\%DFNAME% goto DOWNLOAD

Echo Oops! That file name is invalid!
echo.
echo Check that the file name is correct.
pause
goto GETFILE

:DOWNLOAD
cls 
echo Downloading file, please wait...

echo %SNAMME% (%username%) Downloaded a file: %DFNAME%. [%time%-%date%] >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\DOWNLOADLIST.txt

xcopy \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\%DFNAME% %userprofile%\Desktop >nul
echo File was downloaded to Desktop successfully!

:DYNMENU
set /p vpie=Download another file? (Y/N)
if %vpie%==y goto GETFILE
if %vpie%==n goto FILES
if %vpie%==Y goto GETFILE
if %vpie%==N goto FILES
echo Command is invalid!
pause
goto DYNMENU




:SENDFILE
cls
Echo Drag the file you want to send on to the 
echo Desktop, then press any key...
pause>nul
cls
echo Please type the name of the file, plus
echo its extension (.jpeg, .bat, .txt, etc...)
echo Type "/q" to exit. 
echo.
set /p FNAME=File name (+ extension):
if %FNAME%==/q goto chat

IF EXIST %USERPROFILE%\Desktop\%FNAME% goto FILEISVALID

Echo Oops! That file name is invalid!
echo.
echo Check that the file is on the desktop, 
echo and that the file name is correct.
pause
goto SENDFILE

:FILEISVALID
cls
echo Would you like to add a message? (Y/N)
set /p MSGYN=
if %MSGYN%==y goto MSGY 
if %MSGYN%==n goto MSGN 
if %MSGYN%==Y goto MSGY 
if %MSGYN%==N goto MSGN 
echo Command is invalid.
pause
goto FILEISVALID

:MSGY
cls
echo Enter a message to send with your file:
set /p FMSG=
goto SENDAGENT

:MSGN
set FMSG=Check out this cool file: %FNAME%!
goto SENDAGENT

:SENDAGENT
cls
echo Please wait while your file is being processed...
echo.
xcopy %USERPROFILE%\Desktop\%FNAME% \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD
echo Posting to chatroom...
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo  %SNAMME% Posted a file! : >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo  %FNAME% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo  Message: >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo  %FMSG% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo  %time% %date% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM.txt

echo. >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %SNAMME% Posted a file! : >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %FNAME% >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  Message: >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %FMSG% >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %time% %date% >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo File Posted!
echo Press any key to return to chatroom...
goto chat



:FILES2
title DMS File Transfering Service V1.0
cls
echo Welcome to file transfer!
echo Please choose an option:
echo.
echo 1)Send File
echo 2)Download File
echo 3)Help
ECHO 4)exit
echo.
set /p FILEOP=FILE:
if %FILEOP%==1 goto SENDFILE2
if %FILEOP%==2 GOTO GETFILE2
if %FILEOP%==3 GOTO FHELP2
if %FILEOP%==4 goto chat2
echo Invalid command.
pause
goto FILES2

:FHELP2
cls
echo File Transfering Service Help V1.0
echo.
echo Acessing the FTS menu:
echo.
echo Type "/file" in any chatroom
echo.
echo Sending files:
echo.
echo In the main menu, type "1".
echo.
echo Drag the file to the Desktop.
echo Make sure that the file is not in a folder.
echo THE FILE SYSTEM CAN NOT TRANSFER FOLDERS!
echo NOTE: POSTED FILES CAN NOT BE REMOVED!
echo follow the onscreen instructions.
echo.
echo Downloading files:
echo.
echo in the main menu, type 2.
echo follow the onscreen instructions.
echo.
pause
goto FILES2

:GETFILE2
cls
echo Chat! file downloader V1.0
echo.
echo Type "/q" in the name bar to return to
echo the main menu.
echo.
echo Posted files:
type \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo.
set /p DFNAME=File to download?
if %DFNAME%==/q goto FILES2

IF EXIST \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\%DFNAME% goto DOWNLOAD2

Echo Oops! That file name is invalid!
echo.
echo Check that the file name is correct.
pause
goto GETFILE2

:DOWNLOAD2
cls 
echo Downloading file, please wait...

echo %SNAMME% (%username%) Downloaded a file: %DFNAME%. [%time%-%date%] >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\DOWNLOADLIST.txt

xcopy \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\%DFNAME% %userprofile%\Desktop >nul
echo File was downloaded to Desktop successfully!

:DYNMENU2
set /p vpie=Download another file? (Y/N)
if %vpie%==y goto GETFILE2
if %vpie%==n goto FILES2
if %vpie%==Y goto GETFILE2
if %vpie%==N goto FILES2
echo Command is invalid!
pause
goto DYNMENU2




:SENDFILE2
cls
Echo Drag the file you want to send on to the 
echo Desktop, then press any key...
pause>nul
cls
echo Please type the name of the file, plus
echo its extension (.jpeg, .bat, .txt, etc...)
echo Type "/q" to exit. 
echo.
set /p FNAME=File name (+ extension):
if %FNAME%==/q goto chat2

IF EXIST %USERPROFILE%\Desktop\%FNAME% goto FILEISVALID2

Echo Oops! That file name is invalid!
echo.
echo Check that the file is on the desktop, 
echo and that the file name is correct.
pause
goto SENDFILE2

:FILEISVALID2
cls
echo Would you like to add a message? (Y/N)
set /p MSGYN=
if %MSGYN%==y goto MSGY2
if %MSGYN%==n goto MSGN2
if %MSGYN%==Y goto MSGY2 
if %MSGYN%==N goto MSGN2 
echo Command is invalid.
pause
goto FILEISVALID2

:MSGY2
cls
echo Enter a message to send with your file:
set /p FMSG=
goto SENDAGENT2

:MSGN2
set FMSG=Check out this cool file: %FNAME%!
goto SENDAGENT2

:SENDAGENT2
cls
echo Please wait while your file is being processed...
echo.
xcopy %USERPROFILE%\Desktop\%FNAME% \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD
cls
echo Posting to chatroom...
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo  %SNAMME% Posted a file! : >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo  %FNAME% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo  Message: >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo  %FMSG% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo  %time% %date% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM2.txt

echo. >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %SNAMME% Posted a file! : >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %FNAME% >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  Message: >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %FMSG% >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %time% %date% >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo File Posted!
echo Press any key to return to chatroom...
goto chat2


:FILES3
title DMS File Transfering Service V1.0 (C3)
cls
echo Welcome to file transfer!
echo Please choose an option:
echo.
echo 1)Send File
echo 2)Download File
echo 3)Help
ECHO 4)exit
echo.
set /p FILEOP=FILE:
if %FILEOP%==1 goto SENDFILE3
if %FILEOP%==2 GOTO GETFILE3
if %FILEOP%==3 GOTO FHELP3
if %FILEOP%==4 goto chat3
echo Invalid command.
pause
goto FILES3

:FHELP3
cls
echo File Transfering Service Help V1.0
echo.
echo Acessing the FTS menu:
echo.
echo Type "/file" in any chatroom
echo.
echo Sending files:
echo.
echo In the main menu, type "1".
echo.
echo Drag the file to the Desktop.
echo Make sure that the file is not in a folder.
echo THE FILE SYSTEM CAN NOT TRANSFER FOLDERS!
echo NOTE: POSTED FILES CAN NOT BE REMOVED!
echo follow the onscreen instructions.
echo.
echo Downloading files:
echo.
echo in the main menu, type 2.
echo follow the onscreen instructions.
echo.
pause
goto FILES3

:GETFILE3
cls
echo Chat! file downloader V1.0
echo.
echo Type "/q" in the name bar to return to
echo the main menu.
echo.
echo Posted files:
type \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo.
set /p DFNAME=File to download?
if %DFNAME%==/q goto FILES3

IF EXIST \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\%DFNAME% goto DOWNLOAD3

Echo Oops! That file name is invalid!
echo.
echo Check that the file name is correct.
pause
goto GETFILE3

:DOWNLOAD3
cls 
echo Downloading file, please wait...

echo %SNAMME% (%username%) Downloaded a file: %DFNAME%. [%time%-%date%] >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\DOWNLOADLIST.txt

xcopy \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\%DFNAME% %userprofile%\Desktop >nul
echo File was downloaded to Desktop successfully!

:DYNMENU3
set /p vpie=Download another file? (Y/N)
if %vpie%==y goto GETFILE3
if %vpie%==n goto FILES3
if %vpie%==Y goto GETFILE3
if %vpie%==N goto FILES3
echo Command is invalid!
pause
goto DYNMENU3




:SENDFILE3
cls
Echo Drag the file you want to send on to the 
echo Desktop, then press any key...
pause>nul
cls
echo Please type the name of the file, plus
echo its extension (.jpeg, .bat, .txt, etc...)
echo Type "/q" to exit. 
echo.
set /p FNAME=File name (+ extension):
if %FNAME%==/q goto chat3

IF EXIST %USERPROFILE%\Desktop\%FNAME% goto FILEISVALID3

Echo Oops! That file name is invalid!
echo.
echo Check that the file is on the desktop, 
echo and that the file name is correct.
pause
goto SENDFILE3

:FILEISVALID3
cls
echo Would you like to add a message? (Y/N)
set /p MSGYN=
if %MSGYN%==y goto MSGY3
if %MSGYN%==n goto MSGN3
if %MSGYN%==Y goto MSGY3
if %MSGYN%==N goto MSGN3
echo Command is invalid.
pause
goto FILEISVALID3

:MSGY3
cls
echo Enter a message to send with your file:
set /p FMSG=
goto SENDAGENT3

:MSGN3
set FMSG=Check out this cool file: %FNAME%!
goto SENDAGENT3

:SENDAGENT3
cls
echo Please wait while your file is being processed...
echo.
xcopy %USERPROFILE%\Desktop\%FNAME% \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD
cls
echo Posting to chatroom...
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo  %SNAMME% Posted a file! : >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo  %FNAME% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo  Message: >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo  %FMSG% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo  %time% %date% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM3.txt

echo. >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %SNAMME% Posted a file! : >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %FNAME% >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  Message: >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %FMSG% >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %time% %date% >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo File Posted!
echo Press any key to return to chatroom...
goto chat3


:FILES4
title DMS File Transfering Service V1.0
cls
echo Welcome to file transfer!
echo Please choose an option:
echo.
echo 1)Send File
echo 2)Download File
echo 3)Help
ECHO 4)exit
echo.
set /p FILEOP=FILE:
if %FILEOP%==1 goto SENDFILE4
if %FILEOP%==2 GOTO GETFILE4
if %FILEOP%==3 GOTO FHELP4
if %FILEOP%==4 goto chat4
echo Invalid command.
pause
goto FILES4

:FHELP4
cls
echo File Transfering Service Help V1.0
echo.
echo Acessing the FTS menu:
echo.
echo Type "/file" in any chatroom
echo.
echo Sending files:
echo.
echo In the main menu, type "1".
echo.
echo Drag the file to the Desktop.
echo Make sure that the file is not in a folder.
echo THE FILE SYSTEM CAN NOT TRANSFER FOLDERS!
echo NOTE: POSTED FILES CAN NOT BE REMOVED!
echo follow the onscreen instructions.
echo.
echo Downloading files:
echo.
echo in the main menu, type 2.
echo follow the onscreen instructions.
echo.
pause
goto FILES4

:GETFILE4
cls
echo Chat! file downloader V1.0
echo.
echo Type "/q" in the name bar to return to
echo the main menu.
echo.
echo Posted files:
type \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo.
set /p DFNAME=File to download?
if %DFNAME%==/q goto FILES4

IF EXIST \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\%DFNAME% goto DOWNLOAD4

Echo Oops! That file name is invalid!
echo.
echo Check that the file name is correct.
pause
goto GETFILE4

:DOWNLOAD4
cls 
echo Downloading file, please wait...

echo %SNAMME% (%username%) Downloaded a file: %DFNAME%. [%time%-%date%] >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\DOWNLOADLIST.txt

xcopy \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\%DFNAME% %userprofile%\Desktop >nul
echo File was downloaded to Desktop successfully!

:DYNMENU4
set /p vpie=Download another file? (Y/N)
if %vpie%==y goto GETFILE4
if %vpie%==n goto FILES4
if %vpie%==Y goto GETFILE4
if %vpie%==N goto FILES4
echo Command is invalid!
pause
goto DYNMENU4




:SENDFILE4
cls
Echo Drag the file you want to send on to the 
echo Desktop, then press any key...
pause>nul
cls
echo Please type the name of the file, plus
echo its extension (.jpeg, .bat, .txt, etc...)
echo Type "/q" to exit. 
echo.
set /p FNAME=File name (+ extension):
if %FNAME%==/q goto chat4

IF EXIST %USERPROFILE%\Desktop\%FNAME% goto FILEISVALID4

Echo Oops! That file name is invalid!
echo.
echo Check that the file is on the desktop, 
echo and that the file name is correct.
pause
goto SENDFILE4

:FILEISVALID4
cls
echo Would you like to add a message? (Y/N)
set /p MSGYN=
if %MSGYN%==y goto MSGY4 
if %MSGYN%==n goto MSGN4 
if %MSGYN%==Y goto MSGY4 
if %MSGYN%==N goto MSGN4 
echo Command is invalid.
pause
goto FILEISVALID4

:MSGY4
cls
echo Enter a message to send with your file:
set /p FMSG=
goto SENDAGENT4

:MSGN4
set FMSG=Check out this cool file: %FNAME%!
goto SENDAGENT4

:SENDAGENT4
cls
echo Please wait while your file is being processed...
echo.
xcopy %USERPROFILE%\Desktop\%FNAME% \\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD >nul
cls
echo Posting to chatroom...
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo  %SNAMME% Posted a file! : >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo  %FNAME% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo  Message: >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo  %FMSG% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo  %time% %date% >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\CHATROOM4.txt

echo. >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %SNAMME% Posted a file! : >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %FNAME% >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  Message: >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %FMSG% >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo  %time% %date% >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo. >>\\E026060n01\room308\SERVER\ANONCHAT\DOWNLOAD\POSTS.txt
echo File Posted!
echo Press any key to return to chatroom...
goto chat4

:ODLAUNCHER
cls
echo Outdated launcher detected.
set "DETECTLAUNCHER" EQU "OUTDATED"
call \\E026060n01\room308\SERVER\SYSTEM\PLUGBOARD.bat
echo Program will now exit.
pause
exit



