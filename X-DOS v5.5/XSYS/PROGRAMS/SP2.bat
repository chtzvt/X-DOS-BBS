@echo off
title Mancala by William
color 02
:titlescreen
color 0A
Echo.
Echo.
Echo.
Echo                                *****************************************
Echo.
Echo                                  ##   ##
Echo                                  ### ###                       #
Echo                                  ## # ## ####  #### #### ####  # ####
Echo                                  ##   ## #  #  #  # #    #  #  # #  #
Echo                                  ##   ## ### # #  # #### ### # # ### #
Echo.
Echo                                *****************************************
Echo.
Echo                                                            By William
Echo.
Echo 1) Play Game
Echo 2) Instructions
echo 3) Exit
Echo.
set /p v=
If %v% EQU 1 goto :superstart
If %v% EQU 2 goto :instruct
if %v% EQU 3 goto finend
Echo.
:instruct
cls
Echo.
Echo.
Echo Welcome to Mancala By William. The goal of the game is to get the
Echo most "stones" into your side slots. There aren't any stones in 
Echo this game like a normal Mancala set, however, the amount of 
Echo stones is represented by a number in the correct slot. To move
Echo "stones" type in the column you wish to move (lowercase only).
Echo At the end, the person with the most amount of stones in their
Echo side slot wins. The end of the game is when all stones are in
Echo one of the side pockets. BTW, I do not claim to own Mancala, 
Echo this is just my representation of the game. First Player is
Echo on the bottom, and moves to the right. Second Player is on 
Echo the top and moves to the left. You receive an extra turn if your
Echo last "stone" lands in your side slot.
Echo.
pause
:superstart
cls
set /a p1s=0
set /a p2s=0
set /a draw=0
Echo.
Echo.
Echo Who is Player 1?
Echo.
set /p p1=
Echo.
cls
Echo.
Echo.
Echo Who is Player 2?
Echo.
set /p p2=
Echo.
cls


:start
set /a s1=0
set /a s2=0
set /a a1=4
set /a a2=4
set /a b1=4
set /a b2=4
set /a c1=4
set /a c2=4
set /a d1=4
set /a d2=4
set /a e1=4
set /a e2=4
set /a f1=4
set /a f2=4


:map1
cls
Echo.
Echo.
Echo                          Score: %p1%: %p1s%
Echo                                 %p2%: %p2s%
Echo                                 Draw: %draw%
Echo.
Echo                   %p2%  
Echo.
Echo                           A   B   C   D   E   F  
Echo.
Echo                          [%a2%] [%b2%] [%c2%] [%d2%] [%e2%] [%f2%]
Echo                       {*}                       {*}            
Echo                       {%s2%}        MANCALA        {%s1%}    
Echo                       {*}                       {*}
Echo                          [%a1%] [%b1%] [%c1%] [%d1%] [%e1%] [%f1%]
Echo.
Echo                           A   B   C   D   E   F  
Echo.
Echo                                                    %p1%
Echo.
goto P1


:map1extra
cls
Echo.
Echo.
Echo                          Score: %p1%: %p1s%
Echo                                 %p2%: %p2s%
Echo                                 Draw: %draw%
Echo.
Echo                   %p2%  
Echo.
Echo                           A   B   C   D   E   F    
Echo.
Echo                          [%a2%] [%b2%] [%c2%] [%d2%] [%e2%] [%f2%]
Echo                       {*}                       {*}            
Echo                       {%s2%}        MANCALA        {%s1%}    
Echo                       {*}                       {*}
Echo                          [%a1%] [%b1%] [%c1%] [%d1%] [%e1%] [%f1%]
Echo.
Echo                           A   B   C   D   E   F  
Echo.
Echo                                                    %p1%
Echo Extra Turn!!!
Echo.
goto p1



:map2
cls
Echo.
Echo.
Echo                          Score: %p1%: %p1s%
Echo                                 %p2%: %p2s%
Echo                                 Draw: %draw%
Echo.
Echo                   %p2%    
Echo.
Echo                           A   B   C   D   E   F  
Echo.
Echo                          [%a2%] [%b2%] [%c2%] [%d2%] [%e2%] [%f2%]
Echo                       {*}                       {*}            
Echo                       {%s2%}        MANCALA        {%s1%}    
Echo                       {*}                       {*}
Echo                          [%a1%] [%b1%] [%c1%] [%d1%] [%e1%] [%f1%]
Echo.
Echo                           A   B   C   D   E   F  
Echo.
Echo                                                    %p1%
Echo.
goto P2


:map2extra
cls
Echo.
Echo.
Echo                          Score: %p1%: %p1s%
Echo                                 %p2%: %p2s%
Echo                                 Draw: %draw%
Echo.
Echo                   %p2%    
Echo.
Echo                           A   B   C   D   E   F  
Echo.
Echo                          [%a2%] [%b2%] [%c2%] [%d2%] [%e2%] [%f2%]
Echo                       {*}                       {*}            
Echo                       {%s2%}        MANCALA        {%s1%}    
Echo                       {*}                       {*}
Echo                          [%a1%] [%b1%] [%c1%] [%d1%] [%e1%] [%f1%]
Echo.
Echo                           A   B   C   D   E   F  
Echo.
Echo                                                    %p1%
Echo Extra Turn!!!
Echo.
goto p2



:P1
If %a2%+%b2%+%c2%+%d2%+%e2%+%f2%+%a1%+%b1%+%c1%+%d1%+%e1%+%f1% EQU 0+0+0+0+0+0+0+0+0+0+0+0 goto end
If %a1%+%b1%+%c1%+%d1%+%e1%+%f1% EQU 0+0+0+0+0+0 goto map2
Echo.
Echo %p1%, it's your turn. Select the group you would like to move.
Echo.
set /p x=
If %x% EQU a goto A1
If %x% EQU b goto B1
If %x% EQU c goto C1
If %x% EQU d goto D1
If %x% EQU e goto E1
If %x% EQU f goto F1

:A1
If %a1% EQU 0 goto error1
:A11
If %a1% EQU 0 goto map2
set /a a1=%a1%-1
set /a b1=%b1%+1
:A12
If %a1% EQU 0 goto map2
set /a a1=%a1%-1
set /a c1=%c1%+1
:A13
If %a1% EQU 0 goto map2
set /a a1=%a1%-1
set /a d1=%d1%+1
:A14
If %a1% EQU 0 goto map2
set /a a1=%a1%-1
set /a e1=%e1%+1
:A15
If %a1% EQU 0 goto map2
set /a a1=%a1%-1
set /a f1=%f1%+1
:A16
If %a1% EQU 0 goto map2
set /a a1=%a1%-1
set /a s1=%s1%+1
:A17
If %a1% EQU 0 goto map1extra
set /a a1=%a1%-1
set /a f2=%f2%+1
:A18
If %a1% EQU 0 goto map2
set /a a1=%a1%-1
set /a e2=%e2%+1
:A19
If %a1% EQU 0 goto map2
set /a a1=%a1%-1
set /a d2=%d2%+1
:A110
If %a1% EQU 0 goto map2
set /a a1=%a1%-1
set /a c2=%c2%+1
:A111
If %a1% EQU 0 goto map2
set /a a1=%a1%-1
set /a b2=%b2%+1
:A112
If %a1% EQU 0 goto map2
set /a a1=%a1%-1
set /a a2=%a2%+1
:A13
If %a1% EQU 0 goto map2
set /a a1=%a1%-1
set /a a1=%a1%+1
goto A11



:B1
If %b1% EQU 0 goto error1
:B11
If %b1% EQU 0 goto map2
set /a b1=%b1%-1
set /a c1=%c1%+1
If %b1% EQU 0 goto map2
set /a b1=%b1%-1
set /a d1=%d1%+1
If %b1% EQU 0 goto map2
set /a b1=%b1%-1
set /a e1=%e1%+1
If %b1% EQU 0 goto map2
set /a b1=%b1%-1
set /a f1=%f1%+1
If %b1% EQU 0 goto map2
set /a b1=%b1%-1
set /a s1=%s1%+1
If %b1% EQU 0 goto map1extra
set /a b1=%b1%-1
set /a f2=%f2%+1
If %b1% EQU 0 goto map2
set /a b1=%b1%-1
set /a e2=%e2%+1
If %b1% EQU 0 goto map2
set /a b1=%b1%-1
set /a d2=%d2%+1
If %b1% EQU 0 goto map2
set /a b1=%b1%-1
set /a c2=%c2%+1
If %b1% EQU 0 goto map2
set /a b1=%b1%-1
set /a b2=%b2%+1
If %b1% EQU 0 goto map2
set /a b1=%b1%-1
set /a a2=%a2%+1
If %b1% EQU 0 goto map2
set /a b1=%b1%-1
set /a a1=%a1%+1
If %b1% EQU 0 goto map2
set /a b1=%b1%-1
set /a b1=%b1%+1
goto :B11


:C1
If %c1% EQU 0 goto error1
:C11
If %c1% EQU 0 goto map2
set /a c1=%c1%-1
set /a d1=%d1%+1
If %c1% EQU 0 goto map2
set /a c1=%c1%-1
set /a e1=%e1%+1
If %c1% EQU 0 goto map2
set /a c1=%c1%-1
set /a f1=%f1%+1
If %c1% EQU 0 goto map2
set /a c1=%c1%-1
set /a s1=%s1%+1
If %c1% EQU 0 goto map1extra
set /a c1=%c1%-1
set /a f2=%f2%+1
If %c1% EQU 0 goto map2
set /a c1=%c1%-1
set /a e2=%e2%+1
If %c1% EQU 0 goto map2
set /a c1=%c1%-1
set /a d2=%d2%+1
If %c1% EQU 0 goto map2
set /a c1=%c1%-1
set /a c2=%c2%+1
If %c1% EQU 0 goto map2
set /a c1=%c1%-1
set /a b2=%b2%+1
If %c1% EQU 0 goto map2
set /a c1=%c1%-1
set /a a2=%a2%+1
If %c1% EQU 0 goto map2
set /a c1=%c1%-1
set /a a1=%a1%+1
If %c1% EQU 0 goto map2
set /a c1=%c1%-1
set /a b1=%b1%+1
If %c1% EQU 0 goto map2
set /a c1=%c1%-1
set /a c1=%c1%+1
goto C11


:D1
If %d1% EQU 0 goto error1
:D11
If %d1% EQU 0 goto map2
set /a d1=%d1%-1
set /a e1=%e1%+1
If %d1% EQU 0 goto map2
set /a d1=%d1%-1
set /a f1=%f1%+1
If %d1% EQU 0 goto map2
set /a d1=%d1%-1
set /a s1=%s1%+1
If %d1% EQU 0 goto map1extra
set /a d1=%d1%-1
set /a f2=%f2%+1
If %d1% EQU 0 goto map2
set /a d1=%d1%-1
set /a e2=%e2%+1
If %d1% EQU 0 goto map2
set /a d1=%d1%-1
set /a d2=%d2%+1
If %d1% EQU 0 goto map2
set /a d1=%d1%-1
set /a c2=%c2%+1
If %d1% EQU 0 goto map2
set /a d1=%d1%-1
set /a b2=%b2%+1
If %d1% EQU 0 goto map2
set /a d1=%d1%-1
set /a a2=%a2%+1
If %d1% EQU 0 goto map2
set /a d1=%d1%-1
set /a a1=%a1%+1
If %d1% EQU 0 goto map2
set /a d1=%d1%-1
set /a b1=%b1%+1
If %d1% EQU 0 goto map2
set /a d1=%d1%-1
set /a c1=%c1%+1
If %d1% EQU 0 goto map2
set /a d1=%d1%-1
set /a d1=%d1%+1
goto D11



:E1
If %e1% EQU 0 goto error1
:E11
If %e1% EQU 0 goto map2
set /a e1=%e1%-1
set /a f1=%f1%+1
If %e1% EQU 0 goto map2
set /a e1=%e1%-1
set /a s1=%s1%+1
If %e1% EQU 0 goto map1extra
set /a e1=%e1%-1
set /a f2=%f2%+1
If %e1% EQU 0 goto map2
set /a e1=%e1%-1
set /a e2=%e2%+1
If %e1% EQU 0 goto map2
set /a e1=%e1%-1
set /a d2=%d2%+1
If %e1% EQU 0 goto map2
set /a e1=%e1%-1
set /a c2=%c2%+1
If %e1% EQU 0 goto map2
set /a e1=%e1%-1
set /a b2=%b2%+1
If %e1% EQU 0 goto map2
set /a e1=%e1%-1
set /a a2=%a2%+1
If %e1% EQU 0 goto map2
set /a e1=%e1%-1
set /a a1=%a1%+1
If %e1% EQU 0 goto map2
set /a e1=%e1%-1
set /a b1=%b1%+1
If %e1% EQU 0 goto map2
set /a e1=%e1%-1
set /a c1=%c1%+1
If %e1% EQU 0 goto map2
set /a e1=%e1%-1
set /a d1=%d1%+1
If %e1% EQU 0 goto map2
set /a e1=%e1%-1
set /a e1=%e1%+1
goto E11


:F1
If %f1% EQU 0 goto error1
:F11
If %f1% EQU 0 goto map2
set /a f1=%f1%-1
set /a s1=%s1%+1
If %f1% EQU 0 goto map1extra
set /a f1=%f1%-1
set /a f2=%f2%+1
If %f1% EQU 0 goto map2
set /a f1=%f1%-1
set /a e2=%e2%+1
If %f1% EQU 0 goto map2
set /a f1=%f1%-1
set /a d2=%d2%+1
If %f1% EQU 0 goto map2
set /a f1=%f1%-1
set /a c2=%c2%+1
If %f1% EQU 0 goto map2
set /a f1=%f1%-1
set /a b2=%b2%+1
If %f1% EQU 0 goto map2
set /a f1=%f1%-1
set /a a2=%a2%+1
If %f1% EQU 0 goto map2
set /a f1=%f1%-1
set /a a1=%a1%+1
If %f1% EQU 0 goto map2
set /a f1=%f1%-1
set /a b1=%b1%+1
If %f1% EQU 0 goto map2
set /a f1=%f1%-1
set /a c1=%c1%+1
If %f1% EQU 0 goto map2
set /a f1=%f1%-1
set /a d1=%d1%+1
If %f1% EQU 0 goto map2
set /a f1=%f1%-1
set /a e1=%e1%+1
If %f1% EQU 0 goto map2
set /a f1=%f1%-1
set /a f1=%f1%+1
goto F11




:P2
If %a2%+%b2%+%c2%+%d2%+%e2%+%f2%+%a1%+%b1%+%c1%+%d1%+%e1%+%f1% EQU 0+0+0+0+0+0+0+0+0+0+0+0 goto end
If %a2%+%b2%+%c2%+%d2%+%e2%+%f2% EQU 0+0+0+0+0+0 goto map1
Echo.
Echo %p2%, it's your turn. Select the group you would like to move.
Echo.
set /p x=
If %x% EQU a goto A2
If %x% EQU b goto B2
If %x% EQU c goto C2
If %x% EQU d goto D2
If %x% EQU e goto E2
If %x% EQU f goto F2


:A2
If %a2% EQU 0 goto error2
:A22
If %a2% EQU 0 goto map1
set /a a2=%a2%-1
set /a s2=%s2%+1
If %a2% EQU 0 goto map2extra
set /a a2=%a2%-1
set /a a1=%a1%+1
If %a2% EQU 0 goto map1
set /a a2=%a2%-1
set /a b1=%b1%+1
If %a2% EQU 0 goto map1
set /a a2=%a2%-1
set /a c1=%c1%+1
If %a2% EQU 0 goto map1
set /a a2=%a2%-1
set /a d1=%d1%+1
If %a2% EQU 0 goto map1
set /a a2=%a2%-1
set /a e1=%e1%+1
If %a2% EQU 0 goto map1
set /a a2=%a2%-1
set /a f1=%f1%+1
If %a2% EQU 0 goto map1
set /a a2=%a2%-1
set /a f2=%f2%+1
If %a2% EQU 0 goto map1
set /a a2=%a2%-1
set /a e2=%e2%+1
If %a2% EQU 0 goto map1
set /a a2=%a2%-1
set /a d2=%d2%+1
If %a2% EQU 0 goto map1
set /a a2=%a2%-1
set /a c2=%c2%+1
If %a2% EQU 0 goto map1
set /a a2=%a2%-1
set /a b2=%b2%+1
If %a2% EQU 0 goto map1
set /a a2=%a2%-1
set /a a2=%a2%+1
goto A22



:B2
If %b2% EQU 0 goto error2
:B22
If %b2% EQU 0 goto map1
set /a b2=%b2%-1
set /a a2=%a2%+1
If %b2% EQU 0 goto map1
set /a b2=%b2%-1
set /a s2=%s2%+1
If %b2% EQU 0 goto map2extra
set /a b2=%b2%-1
set /a a1=%a1%+1
If %b2% EQU 0 goto map1
set /a b2=%b2%-1
set /a b1=%b1%+1
If %b2% EQU 0 goto map1
set /a b2=%b2%-1
set /a c1=%c1%+1
If %b2% EQU 0 goto map1
set /a b2=%b2%-1
set /a d1=%d1%+1
If %b2% EQU 0 goto map1
set /a b2=%b2%-1
set /a e1=%e1%+1
If %b2% EQU 0 goto map1
set /a b2=%b2%-1
set /a f1=%f1%+1
If %b2% EQU 0 goto map1
set /a b2=%b2%-1
set /a f2=%f2%+1
If %b2% EQU 0 goto map1
set /a b2=%b2%-1
set /a e2=%e2%+1
If %b2% EQU 0 goto map1
set /a b2=%b2%-1
set /a d2=%d2%+1
If %b2% EQU 0 goto map1
set /a b2=%b2%-1
set /a c2=%c2%+1
If %b2% EQU 0 goto map1
set /a b2=%b2%-1
set /a b2=%b2%+1
goto :B22


:C2
If %c2% EQU 0 goto error2
:C22
If %c2% EQU 0 goto map1
set /a c2=%c2%-1
set /a b2=%b2%+1
If %c2% EQU 0 goto map1
set /a c2=%c2%-1
set /a a2=%a2%+1
If %c2% EQU 0 goto map1
set /a c2=%c2%-1
set /a s2=%s2%+1
If %c2% EQU 0 goto map2extra
set /a c2=%c2%-1
set /a a1=%a1%+1
If %c2% EQU 0 goto map1
set /a c2=%c2%-1
set /a b1=%b1%+1
If %c2% EQU 0 goto map1
set /a c2=%c2%-1
set /a c1=%c1%+1
If %c2% EQU 0 goto map1
set /a c2=%c2%-1
set /a d1=%d1%+1
If %c2% EQU 0 goto map1
set /a c2=%c2%-1
set /a e1=%e1%+1
If %c2% EQU 0 goto map1
set /a c2=%c2%-1
set /a f1=%f1%+1
If %c2% EQU 0 goto map1
set /a c2=%c2%-1
set /a f2=%f2%+1
If %c2% EQU 0 goto map1
set /a c2=%c2%-1
set /a e2=%e2%+1
If %c2% EQU 0 goto map1
set /a c2=%c2%-1
set /a d2=%d2%+1
If %c2% EQU 0 goto map1
set /a c2=%c2%-1
set /a c2=%c2%+1
goto C22


:D2
If %d2% EQU 0 goto error2
:D22
If %d2% EQU 0 goto map1
set /a d2=%d2%-1
set /a c2=%c2%+1
If %d2% EQU 0 goto map1
set /a d2=%d2%-1
set /a b2=%b2%+1
If %d2% EQU 0 goto map1
set /a d2=%d2%-1
set /a a2=%a2%+1
If %d2% EQU 0 goto map1
set /a d2=%d2%-1
set /a s2=%s2%+1
If %d2% EQU 0 goto map2extra
set /a d2=%d2%-1
set /a a1=%a1%+1
If %d2% EQU 0 goto map1
set /a d2=%d2%-1
set /a b1=%b1%+1
If %d2% EQU 0 goto map1
set /a d2=%d1%-1
set /a c1=%c1%+1
If %d2% EQU 0 goto map1
set /a d2=%d2%-1
set /a d1=%d1%+1
If %d2% EQU 0 goto map1
set /a d2=%d2%-1
set /a e1=%e1%+1
If %d2% EQU 0 goto map1
set /a d2=%d2%-1
set /a f1=%f1%+1
If %d2% EQU 0 goto map1
set /a d2=%d2%-1
set /a f2=%f2%+1
If %d2% EQU 0 goto map1
set /a d2=%d2%-1
set /a e2=%e2%+1
If %d2% EQU 0 goto map1
set /a d2=%d2%-1
set /a d2=%d2%+1
goto D22



:E2
If %e2% EQU 0 goto error2
:E22
If %e2% EQU 0 goto map1
set /a e2=%e2%-1
set /a d2=%d2%+1
If %e2% EQU 0 goto map1
set /a e2=%e2%-1
set /a c2=%c2%+1
If %e2% EQU 0 goto map1
set /a e2=%e2%-1
set /a b2=%b2%+1
If %e2% EQU 0 goto map1
set /a e2=%e2%-1
set /a a2=%a2%+1
If %e2% EQU 0 goto map1
set /a e2=%e2%-1
set /a s2=%s2%+1
If %e2% EQU 0 goto map2extra
set /a e2=%e2%-1
set /a a1=%a1%+1
If %e2% EQU 0 goto map1
set /a e2=%e2%-1
set /a b1=%b1%+1
If %e2% EQU 0 goto map1
set /a e2=%e2%-1
set /a c1=%c1%+1
If %e2% EQU 0 goto map1
set /a e2=%e2%-1
set /a d1=%d1%+1
If %e2% EQU 0 goto map1
set /a e2=%e2%-1
set /a e1=%e1%+1
If %e2% EQU 0 goto map1
set /a e2=%e2%-1
set /a f1=%f1%+1
If %e2% EQU 0 goto map1
set /a e2=%e2%-1
set /a f2=%f2%+1
If %e2% EQU 0 goto map1
set /a e2=%e2%-1
set /a e2=%e2%+1
goto E22


:F2
If %f2% EQU 0 goto error2
:F22
If %f2% EQU 0 goto map1
set /a f2=%f2%-1
set /a e2=%e2%+1
If %f2% EQU 0 goto map1
set /a f2=%f2%-1
set /a d2=%d2%+1
If %f2% EQU 0 goto map1
set /a f2=%f2%-1
set /a c2=%c2%+1
If %f2% EQU 0 goto map1
set /a f2=%f2%-1
set /a b2=%b2%+1
If %f2% EQU 0 goto map1
set /a f2=%f2%-1
set /a a2=%a2%+1
If %f2% EQU 0 goto map1
set /a f2=%f2%-1
set /a s2=%s2%+1
If %f2% EQU 0 goto map2extra
set /a f2=%f2%-1
set /a a1=%a1%+1
If %f2% EQU 0 goto map1
set /a f2=%f2%-1
set /a b1=%b1%+1
If %f2% EQU 0 goto map1
set /a f2=%f2%-1
set /a c1=%c1%+1
If %f2% EQU 0 goto map1
set /a f2=%f2%-1
set /a d1=%d1%+1
If %f2% EQU 0 goto map1
set /a f2=%f2%-1
set /a e1=%e1%+1
If %f2% EQU 0 goto map1
set /a f2=%f2%-1
set /a f1=%f1%+1
If %f2% EQU 0 goto map1
set /a f2=%f2%-1
set /a f2=%f2%+1
goto F22

:error1
Echo.
Echo Sorry, %p1%, but that move is invalid. Please select another group.
Echo.
pause
goto map1


:error2
Echo.
Echo Sorry, %p2%, but that move is invalid. Please select another group
Echo.
pause
goto map2

:end
If %s1% GTR %s2% goto win1
If %s1% LSS %S2% goto win2
If %s1% EQU %s2% goto draw

:win1
set /a p1s=%p1s%+1
cls
Echo.
Echo.
Echo Congratulations %p1%, you have won this round of Mancala.
Echo Please play again.
Echo.
pause
goto :ending

:win2
set /a p2s=%p2s%+1
cls
Echo.
Echo.
Echo Congratulations %p2%, you have won this round of Mancala. 
Echo Please play again.
Echo.
pause
goto :ending

:draw
cls
set /a draw=%draw%+1
Echo.
Echo.
Echo Sorry %p1% and %p2% but it's a draw. 
Echo.
pause
goto ending

:ending
cls
Echo.
Echo.
Echo 1)Play Again
Echo 2)Change Players
Echo 3)Close
set /p v2=
If %v2% EQU 1 goto start
If %v2% EQU 2 goto superstart
If %v2% EQU 3 goto done
:done

:finend
