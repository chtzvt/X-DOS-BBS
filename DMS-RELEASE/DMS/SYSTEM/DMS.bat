@echo off
color 17
cls

::DMS Changelog
::Please record changes to DMS here.
::
::V 3.0 Telnet (DSOFT HQ 2 ON SERVER 02)
::6:52 PM 3/18/2012 Centered title
::6:59 PM 3/18/2012 Removed "Color" Statements, color now controlled at top.
::7:09 PM 3/18/2012 Fixed userlist text does not disappear/color bleeding.
::7:24 AM 6/16/2012 Added a few Easter eggs :)
::7:30 AM 6/16/2012 Established a slogan for differential software, "Look to the future!"
::7:34 AM 6/16/2012 added date+time to the DMS login menu
::12:35 PM 6/16/2012 added ARC feature (account recovery code), along with extra steps to the registration process, plus minor improvements.
::2:43 AM 8/14/2012 Added update feature, and added nice new title screen. i plan on adding the ability to change your password in a future update.
::--
::FRI JUN 7 2013
::|Programming in batch 3 miles above the surface of the earth!
::|Revamped chat system w/ muliple rooms
::|Fixed title screen & added box for system information.
::|Added more customizability to the credits.
::|Changed admin to sysop
::|Removed some stuff
::|Cleaned up code
::|Changed directory so that its universal.
::|Added warnings to message input screen (Chat & MAil)
::|Added installer features.
::|Eventually going to add ability to ban mail coming from individual users. Screw it. i'll do it eventually...
::|Changed admin password to be set in a text file.
::|Added screen refresh feature to get rid of laggy bits that sometimes appear because of slow connections, etc...
::--
::Fixed variable handling by sanitizing. With certain types of input, this could cause crashing,
::Leading to a crash, which may, in most cases, drop telnet users to a command prompt, allowing them
::To execute DOS commands with the priveleges of the user running the DMS server.
::Sanitized all the vars in registration

:: ::::::::::::::::STARTUP SCRIPTS::::::::::::::::::::::
:STARTUPMODE

::Check to see if DMS should run in cloud mode from a cloud service like Dropbox.
:: ****!!!BE SURE TO CHANGE THE PATH TO REFLECT WHICH CLOUD ERVICE YOU CHOOSE TO USE!!!****
IF EXIST "C:\DSOFT\DMS\SYSTEM\MODE\CLOUDMODE-ENABLED.txt" call "C:\Documents and Settings\%username%\My Documents\Dropbox\SERVER_SYNC\CLOUDOP\DMS\SYSTEM\DMS.bat 

::Set up the username for login to the Administration Console.
::***********!!!!!!!!!!!!!Make sure you set that variable!!!!!**********
::If the file does not exist, default is "system1"
IF NOT EXIST "%C:\DSOFT\DMS\SYSTEM\MODE\VAULT\SYSTEMUN.txt" set SYSTEMUN=system1
IF NOT EXIST "%C:\DSOFT\DMS\SYSTEM\MODE\VAULT\SYSTEMUN.txt" goto SKIPSYSUNSET
set SYSTEMUN=<"%C:\DSOFT\DMS\SYSTEM\MODE\VAULT\SYSTEMUN.txt"
:SKIPSYSUNSET
::Initialize failed password try count.

:DMSLOGIN
color 17
cls
echo                            ##########################            %time% 
echo                            #DDDDD   MM    MM  SSSSS #           %date%
echo                            #DD  DD  MMM  MMM SS     #            v 3.0 T 
echo                            #DD   DD MM MM MM  SSSSS #
echo                            #DD   DD MM    MM      SS#
echo                            #DDDDDD  MM    MM  SSSSS #
echo                            #Dynamic Messaging System#
echo                            #########BY DSOFT#########
echo.

::Please entr the appropriate information into the title text file.
::For the love of all that is holy, MAKE THE BOX LOOK NEAT!
type "C:\DSOFT\DMS\SYSTEM\DMS_TITLE.txt"

echo.
echo Please Log in To DMS.
echo Type "newuser" to register an account. 
echo Type "exit" to exit. Type "recover" to recover your
echo login information.
echo.
set /p user=Username:
IF EXIST "C:\DSOFT\DMS\USERS\%user%.txt" goto gooduser
if "%user%" EQU "exit" exit
if "%user%" EQU "recover" goto ACCRECOVERY
if "%user%" EQU "RECOVER" GOTO ACCRECOVERY
if "%user%" EQU "newuser" goto DMSNEWUSER1
if "%user%" EQU "NEWUSER" goto DMSNEWUSER1
if "%user%" EQU "%SYSTEMUN%" goto systemlog
echo invalid logon...
echo Type "newuser" to register...
pause>nul
goto DMSLOGIN

:gooduser
::if "%TRY%" EQU "3" goo LOCKOUT
set /p PASSWD=<"C:\DSOFT\DMS\USERS\%user%.txt"
set /p pass=Password for %user%:
IF "%pass%" EQU "%PASSWD%" goto good
::set /a tries=%TRY%+1
echo invalid logon...
echo Type "newuser" to register...
::echo Failed tries: %TRY% of 3 possible. 
pause>nul
goto DMSLOGIN

:good
echo. >>"C:\DSOFT\DMS\ADMINTOOLS\LOGINRECORD.txt"
echo %user% logged in at %time% on %date% >>"C:\DSOFT\DMS\ADMINTOOLS\LOGINRECORD.txt"
echo. >>"C:\DSOFT\DMS\ADMINTOOLS\LOGINRECORD.txt"
goto DMSLOBBY

:DMSLOBBY
cls
echo DMS Lobby.
echo.
echo Anouncements:
type "C:\DSOFT\DMS\ADMINTOOLS\ANOUNCEMENTS.txt"
echo.
echo Press any key to enter DMS...
pause>nul
goto DMSMAIN

:DMSMAIN
color 17
cls
echo Welcome to DMS!                                       %TIME%%date%
echo %user% is logged in to the system.
echo Select an option below:
echo.
echo 1)Inbox.
echo 2)Send Mail.
echo 3)Messageboard.
echo 4)Logout 
echo 5)More...
set /p input=DMS:
if "%input%" EQU "1" goto DMSINBOX
if "%input%" EQU "2" goto DMSSEND
if "%input%" EQU "3" goto DMSMESSAGE
if "%input%" EQU "4" goto DMSLOGOFF
if "%input%" EQU "5" goto DMSMORE
echo Command Invalid.
pause
goto DMSMAIN

:DMSLOGOFF
echo. >>"C:\DSOFT\DMS\ADMINTOOLS\LOGINRECORD.txt"
echo %user% logged out at %time% on %date% >>"C:\DSOFT\DMS\ADMINTOOLS\LOGINRECORD.txt"
echo. >>"C:\DSOFT\DMS\ADMINTOOLS\LOGINRECORD.txt"
goto DMSLOGIN

:DMSMORE
color 17
cls
echo More options:                                              %time%%Date%
echo.
echo 1)Credits
echo 2)Manual
echo 3)Report a Bug
echo 4)Report a User
echo 5)List Of Users
echo 6)Exit
set /p input=DMS:
if "%input%" "1" goto DMSCREDITS
if "%input%" "2" goto DMSMANUAL
if "%input%" "3" goto DMSBUGREPORT
if "%input%" "4" goto DMSREPORTABUSE
if "%input%" "5" goto DMSUSERSLIST
if "%input%" "6" goto DMSMAIN
::if "%input%" "cake" goto CAKE
::if "%input%" "h2g2" goto H2G2
::if "%input%" "H2G2" goto H2G2
echo Command Invalid
pause
goto DMSMORE

:: Easter egg
:H2G2
cls
echo Don't Panic!
@ping 127.0.0.1 -n 2 -w 1000 > nul
@ping 127.0.0.1 -n %1% -w 1000> nul
call HITCHHIK.exe
echo Press any key to return to DMS...
pause>nul
goto DMSMAIN

:: Other easter egg
:CAKE
echo.
echo the cake is a lie.
echo the cake is a lie.
echo the cake is a lie.
echo the cake is a lie.
echo                   \
pause>nul
goto DMSMORE

:DMSMANUAL
cls
IF NOT EXIST "C:\DSOFT\DMS\NETWORK\RESOURCES\DMS_MANUAL.txt" goto NOMANUALFOUND
echo **********Dynamic Messaging system**********
echo ****************User Manual*****************
type "C:\DSOFT\DMS\NETWORK\RESOURCES\DMS_MANUAL.txt" | MORE
pause
goto DMSMORE

:NOMANUALFOUND
cls
echo A manual for DMS could not be found on this system.
echo Please contact the Sysop.
pause
goto DMSMORE

:DMSUSERSLIST
cls
echo List of registered users on this system:
echo.
type "C:\DSOFT\DMS\USERS\USERDATA\USERLIST.txt"
echo.
pause
goto DMSMORE

:DMSCREDITS
cls
echo  ########################################
echo  X-DOS Dynamic Messaging System

echo  Original code created by: Charlton Trezevant          
echo  Server setup: HW_ADMINS      
echo  Admin(s) of this installation:        
type "C:\DSOFT\DMS\ADMINTOOLS\SYSOPINFO.txt"                 
echo  ######################################## 
echo  location of this setup:                 
echo.                                          
type "C:\DSOFT\DMS\ADMINTOOLS\SERVERLOCATIONINFO.txt"       

::You may add more stuff to the credits as you see fit.

::echo  ########################################
::echo  I would like to thank all of my friends 
::echo  for their help and support, especially  
::echo  these people:                           
::echo.                                         
::echo  David D.                                
::echo  Paul A.                                 
::echo  Brett M.                                
::echo  Jay M.  
::echo  The fine folks at 777 Computers and Games
::echo.                                 
pause
goto DMSMORE


:DMSREPORTABUSE
cls
echo User report system.
echo Use this to contact an admin
echo about abuse of the program
echo and/or other users. type "/q"
echo in any feild to exit.
echo.
set /p ABUSER=Username of abuser:
echo.
set /p RSON=Reason for reporting:
echo.
echo Describe the offense:
echo Press ENTER key to send report.
set /p OF1=^>
:OFFYN1
set /p LN1S1=Send message? (Y/N):
if "%LN1S1%" EQU "y" goto DMSSENDMSGO
if "%LN1S1%" EQU "Y" goto DMSSENDMSGO
if "%LN1S1%" EQU "yes" goto DMSSENDMSGO
if "%LN1S1%" EQU "YES" goto DMSSENDMSGO
if "%LN1S1%" EQU "n" goto DMSMAIN
if "%LN1S1%" EQU "N" goto DMSMAIN
if "%LN1S1%" EQU "no" goto DMSMAIN
if "%LN1S1%" EQU "NO" goto DMSMAIN
echo Invalid.
pause
goto OFFYN1

:DMSSENDMSGO
cls
echo Your Problem was reported.
echo You will probably recieve a message
echo from the Sysop at a later time.
pause 
echo. >>"C:\DSOFT\DMS\ADMINTOOLS\USERREPORT.txt"
echo %user% reported %ABUSER% at %time% %date% >>"C:\DSOFT\DMS\ADMINTOOLS\USERREPORT.txt"
echo Reason for reporting: %RSON% >>"C:\DSOFT\DMS\ADMINTOOLS\USERREPORT.txt"
echo Description: >>"C:\DSOFT\DMS\ADMINTOOLS\USERREPORT.txt"
echo. >>"C:\DSOFT\DMS\ADMINTOOLS\USERREPORT.txt"
echo %OF1% >>"C:\DSOFT\DMS\ADMINTOOLS\USERREPORT.txt"
echo ***END*** >>"C:\DSOFT\DMS\ADMINTOOLS\USERREPORT.txt"
goto DMSMORE

:DMSBUGREPORT
cls
echo Bug report system.
echo Use this to contact an admin
echo about glitches the program
echo and/or account issues.
echo type "back" to go back.
echo.
set /p PROBLEM=
echo.
set /p WHAT=What were you doing:
echo.
echo Describe the problem:
echo Press ENTER key to send.
set /p BG1=^>

:LQWE
set /p LN1S12=Send message? (Y/N):
if "%LN1S12%" EQU "y" goto DMSSENDMSGO1
if "%LN1S12%" EQU "Y" goto DMSSENDMSGO1
if "%LN1S12%" EQU "yes" goto DMSSENDMSGO1
if "%LN1S12%" EQU "YES" goto DMSSENDMSGO1
if "%LN1S12%" EQU "n" goto DMSMAIN
if "%LN1S12%" EQU "N" goto DMSMAIN
if "%LN1S12%" EQU "no" goto DMSMAIN
if "%LN1S12%" EQU "NO" goto DMSMAIN
echo Invalid.
pause
goto LQWE

:DMSSENDMSGO1
cls
echo Your Problem was reported.
echo You will probably recieve a message
echo from the Sysop at a later time.
echo. >>"C:\DSOFT\DMS\ADMINTOOLS\BUGREPORT.txt
echo %user% reported %PROBLEM% at %time% %date% >>"C:\DSOFT\DMS\ADMINTOOLS\BUGREPORT.txt
echo While Doing %WHAT% >>"C:\DSOFT\DMS\ADMINTOOLS\BUGREPORT.txt
echo Description: >>"C:\DSOFT\DMS\ADMINTOOLS\BUGREPORT.txt
echo. >>"C:\DSOFT\DMS\ADMINTOOLS\BUGREPORT.txt
echo %BG1% >>"C:\DSOFT\DMS\ADMINTOOLS\BUGREPORT.txt
echo ***END*** >>"C:\DSOFT\DMS\ADMINTOOLS\BUGREPORT.txt
pause
goto DMSMORE

:::DMSMESSAGE
::echo. >>"C:\DSOFT\DMS\MAILSERVER\DMSMESSAGEBOARD.txt"
::echo %user% entered! >>"C:\DSOFT\DMS\MAILSERVER\DMSMESSAGEBOARD.txt"
::echo. >>"C:\DSOFT\DMS\MAILSERVER\DMSMESSAGEBOARD.txt"
::goto DMSMSG1

:DMSMSG1
:DMSMESSAGE
cls
Echo Welcome to the DMS Messageboard!
echo It's like IRC (IM for you young whippersnappers). But on a BBS.
echo.
echo Please select a chatroom:
echo.
echo Chatroom 1 (Random)
echo Chatroom 2 (Science/Technology)
echo Chatroom 3 (Politics/World News)
echo Chatroom 4 (Arts/Music)
echo.
echo Type /q to exit
echo Chatroom number [1-4]:
set /p ROOM=Room to join:
if "%ROOM%" EQU "1" goto CR1
if "%ROOM%" EQU "2" goto CR2
if "%ROOM%" EQU "3" goto CR3
if "%ROOM%" EQU "4" goto CR4
Echo the choice is invalid.
echo Choose a number between 1 and for that
echo corresponds with the catroom that you want to join.
pause
goto DMSMESSAGE

:CR1
call C:\DSOFT\DMS\SYSTEM\CHAT1.bat 
goto DMSMSG1

:CR2
call C:\DSOFT\DMS\SYSTEM\CHAT2.bat 
goto DMSMSG1

:CR3
call C:\DSOFT\DMS\SYSTEM\CHAT3.bat 
goto DMSMSG1

:CR4
call C:\DSOFT\DMS\SYSTEM\CHAT4.bat 
goto DMSMSG1

:DMSSEND
cls 
echo Send Mail.
echo Type "/q" in any field to exit.
echo.
echo Enter Username:
set /p UNAMME=User:
IF EXIST "C:\DSOFT\DMS\USERS\%UNAMME%.txt" goto GOODRECIPENT
if "%UNAMME%" EQU "/q" goto DMSMAIN
echo ?Invalid Username
echo Please try again...
pause>nul
goto DMSSEND

:GOODRECIPENT
set /p SUBJ=Subject:
if "%SUBJ%" EQU "/q" goto DMSMAIN
echo.
:ENTERMSGCONTENT
set LN1=" "
echo Word wrap is automatic. DO NOT press ENTER to start a new line.
echo You may not come back and edit messages once you press ENTER.
echo.
set /p LN1=Message Text:
if "%LN1%" EQU "/q" goto DMSMAIN
::echo Maximum Message Content!
echo.
:ASDW
set /p LN1S=Send message? (Y/N):
if "%LN1S%" EQU "y" goto DMSSENDMSG
if "%LN1S%" EQU "Y" goto DMSSENDMSG
if "%LN1S%" EQU "yes" goto DMSSENDMSG
if "%LN1S%" EQU "YES" goto DMSSENDMSG
if "%LN1S%" EQU "n" goto ENTERMSGCONTENT
if "%LN1S%" EQU "N" goto ENTERMSGCONTENT
if "%LN1S%" EQU "no" goto ENTERMSGCONTENT
if "%LN1S%" EQU "NO" goto ENTERMSGCONTENT
echo Invalid.
pause
goto ASDW

:DMSSENDMSG
cls
echo Sending...
echo. >>"C:\DSOFT\DMS\MAILSERVER\%UNAMME%-INBOX.txt"
echo  Message from %user% %time% %date%>>"C:\DSOFT\DMS\MAILSERVER\%UNAMME%-INBOX.txt"
echo  Subject: %SUBJ%>>"C:\DSOFT\DMS\MAILSERVER\%UNAMME%-INBOX.txt"
echo  %LN1%>>"C:\DSOFT\DMS\MAILSERVER\%UNAMME%-INBOX.txt"
::echo  %LN2%>>"C:\DSOFT\DMS\MAILSERVER\%UNAMME%-INBOX.txt"
echo ***END OF MESSAGE***>>"C:\DSOFT\DMS\MAILSERVER\%UNAMME%-INBOX.txt"
echo.
echo Message sent!
echo What would you like to do?
echo.
:SMSGMENUU
echo 1)Main Menu
echo 2)Send another message
set /p input=:
if "%input%" EQU "1" goto DMSMAIN
if "%input%" EQU "2" goto DMSSEND
echo Invalid.
pause
goto SMSGMENUU

:DMSINBOX
cls
echo Welcome to INBOX.
echo Showing mail for %user%:
type "C:\DSOFT\DMS\MAILSERVER\%user%-INBOX.txt"
echo.
echo Choose an option:
echo 1)Main Menu
echo 2)Clear Inbox
echo 3)Check for new mail.
set /p input=DMS:
if %input%==1 goto DMSMAIN
if %input%==2 goto DMSINBOXCLR
if %input%==3 goto DMSINBOX
echo Command Invalid.
pause 
goto DMSINBOX

:DMSCOPYINBOX
::xcopy "C:\DSOFT\DMS\MAILSERVER\%user%-INBOX.txt" %userprofile%\Desktop
::echo Inbox copied to Desktop.
::pause
::goto DMSINBOX
goto FATALERROR

:DMSINBOXCLR
cls
del "C:\DSOFT\DMS\MAILSERVER\%user%-INBOX.txt"
echo Inbox: %user%. >>"C:\DSOFT\DMS\MAILSERVER\%user%-INBOX.txt"
echo. >>"C:\DSOFT\DMS\MAILSERVER\%user%-INBOX.txt"
echo Inbox Cleared!
pause
goto DMSMAIN

:WALL
goto DMSMAIN

:systemlog
set /p CSYSPASS=<"C:\DSOFT\DMS\ADMINTOOLS\SYSPASSWD.txt"
set /p SYSTEMPASSWD=Password:
if "%CSYSPASS%" EQU "%SYSTEMPASSWD%" goto systemcall
echo invalid.
pause 
goto DMSLOGIN

:systemcall
cls
color 07
call admin.bat
goto DMSLOGIN

:WALL
goto FATALEROR

:DMSNEWUSER1
cls
echo User Registration system.            %time% %date%
echo.
echo Please enter required information below.
echo Required fields are marked with an "!".
echo Type "/q" in any field to exit registration.
echo.
echo.

:NEWUSER1
set /p DESUN=! Desired username:
if "%DESUN%" EQU "/q" goto DMSLOGIN
IF EXIST "C:\DSOFT\DMS\USERS\%user%-acc.txt" goto INVALIDDESUN
echo Username O.K.
echo.
goto NEWUSER2


:INVALIDDESUN
echo #!Username has already been taken!
echo Try another one...
echo.
pause
goto NEWUSER1

::42 br0
:NEWUSER2
echo First name and first letter of last.
echo Example: Arthur D. 
echo (Just initials are also fine.)
echo.
set /p RNAM=! First name/Last initial:
if "%RNAM%" EQU "/q'" goto DMSLOGIN
echo O.K.
echo.
goto NEWUSER3

:NEWUSER3
set /p DESPASS=! Desired Password:
if "%DESPASS%" EQU "/q" goto DMSLOGIN
echo O.K.
echo.
goto NEWUSER4

:NEWUSER4
echo E-Mail is requested for password recovery
echo and/or contact from the Sysop concerning your
echo DMS account. The Sysop should not give this 
echo information to others, but it may not be guaranteed.
echo it is, however, highly suggested 
echo that this information be given, but, if you do
echo not want to give it, type a "." in the prompt.
echo.
set /p USEML=E-Mail:
if "%USEML%" EQU "/q" goto DMSLOGIN
echo O.K.
echo.
goto NEWUSER5

:NEWUSER5
echo Please type your country and
echo State/Province:
echo.
set /p UCON=! Country name:
if "%UCON%" EQU "/q" goto DMSLOGIN
set /p USTAT=! State/Province:
if "%USTAT%" EQU "/q" goto DMSLOGIN
echo O.K.
GOTO NEWUSER6

:NEWUSER6
echo.
echo Now generating a unique Account Recovery Code...
set ARC=%random%-%random%
echo.
echo Your ARC: %ARC%
echo.
echo This code will be used to recover your credentials
echo should they ever be lost or stolen. This code will be used
echo to identify you as a valid user of the DMS, and to aid in the 
echo password recovery process. Please, store this code in a safe place.
echo You will not be able to get a new ARC once you leave this screen.
echo.
pause
echo Press any key if you have stored your ARC safeley.
pause
goto NEWUSER7 

:NEWUSER7
echo.
echo Privacy policy:
echo.
echo Your information will be safely stored on the Sysop's
echo own servers. The Sysop will NOT give your personal data
echo to ANYONE. DSOFT will not contact you with advertisements of any kind at all
echo whatsoever. All important information will be stored in
echo the "Anouncements" page in the DMS lobby. the sole purpose
echo of this system is to supply users with a free alternative to 
echo commercial e-mail services.
echo.
echo Terms of use:
echo.
::Add additional legalese/T&C here.
echo Behave. In the chatroom, mind your manners. Going off on an
echo all-out rant will A)Result in an IP Ban and B)Make you look 
echo like an idiot. 
echo IN REGARDS TO HACKING: Please, don't try and 
echo hack our stuff. Were trying to run an innocent service here
echo that lets people send messages back and forth. If you really want
echo to cause some damage to a server(s), then try a website/service
echo that is destructive or evil in some way. you will have made the 
echo Interblag just that much of a better place. 
echo Keep your cool. Mind your manners. 
echo Thats all we ask of you, mmmkay?
echo.
echo Do you accept these terms? (Y/N)
echo Disagreement will result in a
echo redirect to the login screen.
set /p input=(Y/N)?
if "%input%" EQU "y" goto PROCESSUSERDATA
if "%input%" EQU "n" goto DMSLOGIN  
if "%input%" EQU "Y" goto PROCESSUSERDATA
if "%input%" EQU "N" goto DMSLOGIN
echo Invalid.
pause
goto NEWUSER7

:PROCESSUSERDATA
echo Thank-You for registering!
echo Please wait while we process your data...

::Total account information file.
::Contains ALL user data
echo. >>"C:\DSOFT\DMS\USERS\USERDATA\INF-%DESUN%-%DESPASS%-%RNAM%.DMS"
echo ^%RNAM%:>>"C:\DSOFT\DMS\USERS\USERDATA\INF-%DESUN%-%DESPASS%-%RNAM%.DMS"
echo Country: ^%UCON% >>"C:\DSOFT\DMS\USERS\USERDATA\INF-%DESUN%-%DESPASS%-%RNAM%.DMS"
echo State/Province: ^%USTAT% >>"C:\DSOFT\DMS\USERS\USERDATA\INF-%DESUN%-%DESPASS%-%RNAM%.DMS"
echo E-MAIL: ^%USEML% >>"C:\DSOFT\DMS\USERS\USERDATA\INF-%DESUN%-%DESPASS%-%RNAM%.DMS"
echo.>>"C:\DSOFT\DMS\USERS\USERDATA\INF-%DESUN%-%DESPASS%-%RNAM%.DMS"
echo ^%DESUN%/^%DESPASS% >>"C:\DSOFT\DMS\USERS\USERDATA\INF-%DESUN%-%DESPASS%-%RNAM%.DMS"
echo ARC: ^%ARC% >>"C:\DSOFT\DMS\USERS\USERDATA\INF-%DESUN%-%DESPASS%-%RNAM%.DMS"
echo. >>"C:\DSOFT\DMS\USERS\USERDATA\INF-%DESUN%-%DESPASS%-%RNAM%.DMS"
pause
::Add user to user list
echo ^%DESUN% ! ^%RNAM% >>"C:\DSOFT\DMS\USERS\USERDATA\USERLIST.txt"
echo Joined: %time% %date% >>"C:\DSOFT\DMS\USERS\USERDATA\USERLIST.txt"


::Create login file for new user.
echo ^%DESPASS% >>"C:\DSOFT\DMS\USERS\^%DESUN%.txt"

::Create inbox for new user
echo Inbox: ^%user%. >>"C:\DSOFT\DMS\MAILSERVER\^%DESUN%-INBOX.txt"
echo. >>"C:\DSOFT\DMS\MAILSERVER\^%DESUN%-INBOX.txt"

::Create an ARC account recovery info file
echo Username: ^%DESUN% >>"C:\DSOFT\DMS\USERS\USERDATA\ARC\%ARC%.dat"
echo Password: ^%DESPASS% >>"C:\DSOFT\DMS\USERS\USERDATA\ARC\%ARC%.dat"
echo Real Name: ^%RNAM% >>"C:\DSOFT\DMS\USERS\USERDATA\ARC\%ARC%.dat"
echo E-mail: ^%USEML% >>"C:\DSOFT\DMS\USERS\USERDATA\ARC\%ARC%.dat"
echo Country: ^%UCON% >>"C:\DSOFT\DMS\USERS\USERDATA\ARC\%ARC%.dat"
echo User State/Province: ^%USTAT% >>"C:\DSOFT\DMS\USERS\USERDATA\ARC\%ARC%.dat"

echo Data Was processed successfully.
echo You are now a registered user of DSOFT's
echo Dynamic Messaging System!
echo.
echo !!WRITE THIS DOWN!!
echo This code is used to recover your account information, should it 
echo become lost.
echo.
echo Your ARC:%ARC%
echo.
pause 
goto DMSLOGIN

:ACCRECOVERY
cls
echo Please enter your Account Recovery Code (ARC) below:
echo To leave this screen, type "exit".
set /p %RCVR%=ARC:
if "%ARC%" EQU "exit" goto DMSLOGIN
if "%ARC%" EQU "EXIT" goto DMSLOGIN
IF EXIST "C:\DSOFT\DMS\USERS\USERDATA\ARC\%ARC%.dat" goto GOODARC
echo That ARC is invalid.
echo Please make sure that you entered your ARC correctly, and try again.
pause
goto ACCRECOVERY

:GOODARC
cls
echo Your credentials are:
echo.
type "C:\DSOFT\DMS\USERS\USERDATA\ARC\%ARC%.dat"
echo Please, store these credentials in a safe place!
echo Press any key to return to login...
pause>nul
goto DMSLOGIN

:%ERRORLEVEL%
:CRITICALERROR
:FATALERROR
echo OK, i admit it, you have some kind of skill.
echo this is the bumper at the END OF THE PROGRAM, bud.
echo This is the SERIOUS ERROR MESSAGE!!
echo wow. Please report this to an admin.
echo You will be redirected to the login screen...
pause
goto DMSLOGIN
