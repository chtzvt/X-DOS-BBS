@echo off
title Genius by William
color 0A

:titlescreen
cls
Echo.
Echo.
Echo.
Echo.
Echo          **********************************************
Echo.          
Echo            ######## 
Echo            ##
Echo            ##          ####   ####  # #    #  #####
Echo            ##         #    # #    # # #    # #
Echo            ##    ###  ###### #    # # #    # ######
Echo            ##     #   #      #    # # #    #      #
Echo            ########    ####  #    # #  ####  #####
Echo.
Echo          **********************************************
Echo.
Echo.
Echo                                           by William
Echo.
Echo.
pause

:level
cls
Echo.
Echo.
Echo Pick a level:
Echo.
Echo   1)Easy
Echo   2)Medium
Echo   3)Hard
echo   4)Exit
Echo.
set /p level=
Echo.
if %level% EQU 1 goto start
if %level% EQU 2 goto medium
if %level% EQU 3 goto hard
if %level% EQU 4 goto finend
goto :level

:hard
cls
Echo.
Echo.
Echo.
Echo.
Echo                      ********************************
Echo.
Echo                           Try and Guess My Number
Echo.
Echo                           It's between 1 and 1000
Echo.
Echo                      ********************************
goto A3


:medium
cls
Echo.
Echo.
Echo.
Echo.
Echo                      ********************************
Echo.
Echo                           Try and Guess My Number
Echo.
Echo                           It's between 1 and 500
Echo.
Echo                      ********************************
goto A2


:start
cls
Echo.
Echo.
Echo.
Echo.
Echo                      ********************************
Echo.
Echo                           Try and Guess My Number
Echo.
Echo                           It's between 1 and 100
Echo.
Echo                      ********************************


:A
set /a guess=1
set /a num=%random%*99/32767+1


:b2
Echo.
Echo.
Echo What's your Guess?
Echo.

:B
Echo.
set /p g2=
IF %g2% EQU W goto G
If %g2% LSS 1 goto moron
If %g2% GTR 100 goto moron
IF %g2% LSS %num% goto H
IF %g2% GTR %num% goto L
If %g2% EQU %num% goto startf2

:moron
Echo.
Echo Idiot! It says between 1 and 100! Try again.
Echo.
set /a guess=%guess%+1
goto :B


:H
Echo.
Echo Higher!
Echo.
set /a guess=%guess%+1
goto :B


:L
Echo.
Echo Lower!
Echo.
set /a guess=%guess%+1
goto :B


:end
if %guess% LSS 5 goto S
if %guess% GTR 4 goto s1

:A2
set /a guess=1
set /a num=%random%*499/32767+1

:b22
Echo.
Echo.
Echo What's your Guess?
Echo.
goto b2
:moron2
Echo.
Echo Idiot! It says between 1 and 500! Try again.
Echo.
set /a guess=%guess%+1
goto :B2

:H2
Echo.
Echo Higher!
Echo.
set /a guess=%guess%+1
goto :B2

:L2
Echo.
Echo Lower!
Echo.
set /a guess=%guess%+1
goto :B2

:B2
Echo.
set /p g2=
IF %g2% EQU W goto G
If %g2% LSS 1 goto moron2
If %g2% GTR 500 goto moron2
IF %g2% LSS %num% goto H2
IF %g2% GTR %num% goto L2
If %g2% EQU %num% goto startf2

:startf2

:S
cls
if %guess% EQU 1 goto G
if %guess% GTR 5 goto s1
Echo.
Echo                        ********************************
Echo.
Echo                                Congratulations!  
Echo                             You Guessed My Number!
Echo.
Echo                              It took you %guess% tries
Echo                                You're a Genius!
Echo.
Echo                        ********************************
Echo.
Echo.
pause
goto :blah


:s1
cls
if %guess% GTR 10 goto s2
Echo.
Echo                        ********************************
Echo.
Echo                                Congratulations!  
Echo                             You Guessed My Number!
Echo.
Echo                              It took you %guess% tries
Echo                             You almost didn't suck
Echo.
Echo                        ********************************
Echo.
Echo.
pause
goto :blah



:s2
cls
if %guess% GTR 15 goto s3
Echo.
Echo                        ********************************
Echo.
Echo                                Congratulations!  
Echo                             You Guessed My Number!
Echo.
Echo                              It took you %guess% tries
Echo                                    You Suck
Echo.     
Echo                        ********************************
Echo.
Echo.
pause
goto :blah


:s3
cls
if %guess% GTR 20 goto s4
Echo.
Echo                        ********************************
Echo.
Echo                                Congratulations!  
Echo                             You Guessed My Number!
Echo.
Echo                              It took you %guess% tries
Echo                                God man try again
Echo.
Echo                        ********************************
Echo.
Echo.
pause
goto :blah


:s4
cls
Echo.
Echo                        ********************************
Echo.
Echo                                Congratulations!  
Echo                             You Guessed My Number!
Echo.
Echo                              It took you %guess% tries
Echo                                You fail at life
Echo.
Echo                        ********************************
Echo.
Echo.
pause
goto :blah

:G
cls
Echo.
Echo                        ********************************
Echo.
Echo                                Congratulations!  
Echo                             You Guessed My Number!
Echo.
Echo                               It took you 1 try
Echo                             You're a Super-Genius!
Echo.
Echo                        ********************************
Echo.
Echo.
pause
goto :blah

:A3
set /a guess=1
set /a num=%random%*999/32767+1


:b23
Echo.
Echo.
Echo What's your Guess?
Echo.

:B3
Echo.
set /p g2=
IF %g2% EQU W goto G
If %g2% LSS 1 goto moron3
If %g2% GTR 1000 goto moron3
IF %g2% LSS %num% goto H3
IF %g2% GTR %num% goto L3
If %g2% EQU %num% goto startf2

:moron3
Echo.
Echo Idiot! It says between 1 and 1000! Try again.
Echo.
set /a guess=%guess%+1
goto :B


:H3
Echo.
Echo Higher!
Echo.
set /a guess=%guess%+1
goto :B3


:L3
Echo.
Echo Lower!
Echo.
set /a guess=%guess%+1
goto :B3

:blah
goto level

:finend









