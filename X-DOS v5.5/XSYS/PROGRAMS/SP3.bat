@echo off
title Rock, Paper, Scissors by William
color 0E
:titlescreen
color 0A
Echo.
Echo.
Echo.
Echo                                ************************************
Echo.
Echo                                      ####      ####     ####
Echo                                      ##  #     ##  #   #
Echo                                      ##  #     ##  #   #
Echo                                      ###       ####     ####
Echo                                      ## #      ##          #
Echo                                      ##  #  #  ##   #  ####  #
Echo.
Echo                                ************************************
Echo.
Echo                                                          By William
Echo.
Echo.
echo Start R.P.S?
echo Choosing "n" will exit the program.
set /p DOSTART=
if %DOSTART%==y goto start
if %DOSTART%==Y goto start
if %DOSTART%==n goto finend
if %DOSTART%==N goto finend
:start
color 0E
cls
Echo.
Echo.
Echo What is your name?
Echo.
set /p name=
Echo.
set /a wins=0
set /a losses=0
set /a draws=0

:choice
cls
color 0E
Echo.
Echo.
Echo   Wins: %wins%
Echo Losses: %losses%
Echo  Draws: %draws%
Echo.
Echo.
Echo Choose
Echo.
Echo 1) Rock
Echo 2) Paper
Echo 3) Scissors
Echo.
set /p cho=
Echo.


:a
set /a v=%random%*3/32767+1
If %v% EQU 1 goto rock
If %v% EQU 2 goto paper
If %v% EQU 3 goto scissor
goto a

:rock
If %cho% EQU 1 goto rockrock
If %cho% EQU 2 goto rockpaper
If %cho% EQU 3 goto rockscissor

:paper
If %cho% EQU 1 goto paperrock
If %cho% EQU 2 goto paperpaper
If %cho% EQU 3 goto paperscissor

:scissor
If %cho% EQU 1 goto scissorrock
If %cho% EQU 2 goto scissorpaper
If %cho% EQU 3 goto scissorscissor



:rockrock
color 0E
cls
set /a draws=%draws%+1
Echo.
Echo.
Echo You chose Rock
Echo.
Echo I chose Rock
Echo.
Echo We tied...yet life goes on
Echo.
pause
goto choice

:rockpaper
color 0A
cls
set /a wins=%wins%+1
Echo.
Echo.
Echo You chose Paper
Echo.
Echo I chose Rock
Echo.
Echo You Win :[
Echo.
pause
goto choice

:rockscissor
color 0C
cls
set /a losses=%losses%+1
Echo.
Echo.
Echo You chose Scissors
Echo.
Echo I chose Rock
Echo.
Echo You Lose :P
Echo.
pause
goto choice

:paperrock
color 0C
cls
set /a losses=%losses%+1
Echo.
Echo.
Echo You chose Rock
Echo.
Echo I chose Paper
Echo.
Echo Haha %name%, you Suck at this!
Echo.
pause
goto choice

:paperscissor
color 0A
cls
set /a wins=%wins%+1
Echo.
Echo.
Echo You chose Scissors
Echo.
Echo I chose Paper
Echo.
Echo Hmm you must have cheated....
Echo.
pause
goto choice

:paperpaper
color 0E
cls
set /a draws=%draws%+1
Echo.
Echo.
Echo You chose Paper
Echo.
Echo I too chose Paper
Echo.
Echo Ugh I can't believe I tied with a loser like you
Echo.
pause
goto choice

:scissorrock
color 0A
cls
set /a wins=%wins%+1
Echo.
Echo.
Echo Youu chose Rock
Echo.
Echo I chose Scissors
Echo.
Echo How the heck did I lose? I'm a freakin computer! 
Echo I can see what you pick!
Echo.
pause
goto choice

:scissorpaper
color 0C
cls
set /a losses=%losses%+1
Echo.
Echo.
Echo You chose Paper
Echo.
Echo I chose Scissors
Echo.
Echo I am Victorious because I AM THE SMARTEST MAN ALIVE
Echo.
pause
goto choice

:scissorscissor
color 0E
cls
set /a draws=%draws%+1
Echo.
Echo.
Echo You chose Scissors
Echo.
Echo I chose Scissors
Echo.
Echo Honestly %name%, this tying thing we've got going is
Echo getting old. How bout you just let me win?
Echo.
pause
goto choice


:finend