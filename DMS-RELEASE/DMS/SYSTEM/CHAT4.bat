@echo off
title DMS Chat (Room 4: Arts ^& Music)
color 17

::This is from my integrated file transfer/chat program I wrote a while back.
::Feel free to modify it to suit your needs.
::Took out the ability to ban users via a file. you must do it manually.

:enterchat
echo. >>"C:\DSOFT\DMS\MAILSERVER\CHATROOMS\CHATROOM4.txt"
echo ^%user% entered chat. >>"C:\DSOFT\DMS\MAILSERVER\CHATROOMS\CHATROOM4.txt"
echo. >>"C:\DSOFT\DMS\MAILSERVER\CHATROOMS\CHATROOM4.txt"
echo Welcome to Chatroom 1.
echo The topic here is "Art/Music"
echo.
echo COMMANDS:
echo ***New messages do not appear automatically.*** 
echo !!!!!You must constantly refresh the chat session.!!!!!
echo Type /q to exit.
echo type /r to refresh.
echo type /termclear to remove any laggy strings of text you may see.
echo ---------------------------------------------------------------
echo This notice will reappear at the top of the chatroom.
goto chat

:chat
:: IF EXIST "C:\DSOFT\DMS\MAILSERVER\CHATROOMS\BANS\%USERNAME%.txt" goto USERBAN
if "%user%" EQU "banned_person's_name_here" goto bannotice
cls
echo Welcome to Chatroom 1.
echo The topic here is "Art/Music"
echo.
echo COMMANDS:
echo ***New messages do not appear automatically.*** 
echo !!!!!You must constantly refresh the chat session.!!!!!
echo Type /q to exit.
echo type /r to refresh.
echo type /termclear to remove any laggy strings of text you may see.
echo.
type "C:\DSOFT\DMS\MAILSERVER\CHATROOMS\CHATROOM4.txt"
echo.
echo ^%user% in Chat.
set /p MSG1=Message:
if "%MSG1%" EQU "/r" goto chat
IF "%MSG1%" EQU "/termclear" goto color1
if "%MSG1%" EQU "/q" goto leave
echo SENDING...

echo. >>"C:\DSOFT\DMS\MAILSERVER\CHATROOMS\CHATROOM4.txt"
echo  ^%user% said: >>"C:\DSOFT\DMS\MAILSERVER\CHATROOMS\CHATROOM4.txt"
echo  ^%MSG1% >>"C:\DSOFT\DMS\MAILSERVER\CHATROOMS\CHATROOM4.txt"
echo  %time% %date% >>"C:\DSOFT\DMS\MAILSERVER\CHATROOMS\CHATROOM4.txt"
echo. >>"C:\DSOFT\DMS\MAILSERVER\CHATROOMS\CHATROOM4.txt"
goto chat

:leave
echo. >>"C:\DSOFT\DMS\MAILSERVER\CHATROOMS\CHATROOM4.txt"
echo ^%user% left! >>"C:\DSOFT\DMS\MAILSERVER\CHATROOMS\CHATROOM4.txt"
echo. >>"C:\DSOFT\DMS\MAILSERVER\CHATROOMS\CHATROOM4.txt"
goto eof

:color1
echo Set color to 17.
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo ###########################################################################
echo Attempted to clear screen. It may or may not have worked.
echo At the least it should have cut the laggy text away from your screen.
pause
color 17
goto chat


