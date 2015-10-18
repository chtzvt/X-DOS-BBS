@echo off
cls
color 17
:titlescreen
color 0A
Echo.
Echo.
Echo.
Echo                 *************************************
Echo.
Echo                     ########  ########  ########
Echo                        ##        ##        ##
Echo                        ##  ---   ##  ---   ##
Echo                        ##        ##        ##
Echo                        ##        ##        ##
Echo.
Echo                 *************************************
Echo.
Echo                                          By William
Echo.
Echo.
Echo.
pause

:Menu
cls
Echo.
Echo.
Echo    ***********************
Echo.
Echo        Select a Mode
Echo.
Echo        1) 2-Player
Echo        2) Single-Player
echo        3) Exit
Echo.
Echo    ***********************
Echo.
set /p mode=
If %mode% EQU 1 goto ultstart
If %mode% EQU 2 goto single
If %mode% EQU 3 goto finend

:ultstart
set /a xscore=0
set /a oscore=0
set /a draw=0
color 0F
cls
Echo. 
Echo.
Echo Who is playing X's?
Echo.
set /p xs=
cls
Echo.
Echo.
Echo Who is playing O's?
Echo.
set /p os=


:superstart
color 0F
cls
set /a moves=0
set /a TL=7
set /a TM=8
set /a TR=9
set /a ML=4
set /a MM=5
set /a MR=6
set /a BL=1
set /a BM=2
set /a BR=3
goto start2


:start1
IF %moves% EQU 9 goto draw
cls
Echo.
Echo.
Echo      Score: %xs%: %xscore%
Echo             %os%: %oscore%
Echo             Draw: %draw%
Echo.
Echo.
Echo                           ***********
Echo                          *           *
Echo                          *  %TL%  %TM%  %TR%  *        
Echo                          *           * 
Echo                          *  %ML%  %MM%  %MR%  *
Echo                          *           * 
Echo                          *  %BL%  %BM%  %BR%  *
Echo                          *           *
Echo                           ***********
Echo.
Echo.
goto B


:start2
IF %moves% EQU 9 goto draw
cls
Echo.
Echo.
Echo      Score: %xs%: %xscore%
Echo             %os%: %oscore%
Echo             Draw: %draw%
Echo.
Echo.
Echo                           ***********
Echo                          *           *
Echo                          *  %TL%  %TM%  %TR%  *        
Echo                          *           * 
Echo                          *  %ML%  %MM%  %MR%  *
Echo                          *           * 
Echo                          *  %BL%  %BM%  %BR%  *
Echo                          *           *
Echo                           ***********
Echo.
Echo.
goto A

:A
Echo.
Echo.
Echo %xs%'s Turn
Echo.
set /a moves=%moves%+1
set /p x=
If %x% EQU 7 goto A1
If %x% EQU 8 goto A2
If %x% EQU 9 goto A3
If %x% EQU 4 goto A4
If %x% EQU 5 goto A5
If %x% EQU 6 goto A6
If %x% EQU 1 goto A7
If %x% EQU 2 goto A8
If %x% EQU 3 goto A9


:A1
If %TL% EQU X goto errorx
If %TL% EQU O goto errorx
set TL=X
goto BC


:A2
If %TM% EQU X goto errorx
If %TM% EQU O goto errorx
set TM=X
goto BC


:A3
If %TR% EQU X goto errorx
If %TR% EQU O goto errorx
set TR=X
goto BC


:A4
If %ML% EQU X goto errorx
If %ML% EQU O goto errorx
set ML=X
goto BC


:A5
If %MM% EQU X goto errorx
If %MM% EQU O goto errorx
set MM=X
goto BC


:A6
If %MR% EQU X goto errorx
If %MR% EQU O goto errorx
set MR=X
goto BC


:A7
If %BL% EQU X goto errorx
If %BL% EQU O goto errorx
set BL=X
goto BC


:A8
If %BM% EQU X goto errorx
If %BM% EQU O goto errorx
set BM=X
goto BC


:A9
If %BR% EQU X goto errorx
If %BR% EQU O goto errorx
set BR=X
goto BC


:B
Echo.
Echo.
Echo %os%'s Turn
Echo.
set /a moves=%moves%+1
set /p x=
If %x% EQU 7 goto B1
If %x% EQU 8 goto B2
If %x% EQU 9 goto B3
If %x% EQU 4 goto B4
If %x% EQU 5 goto B5
If %x% EQU 6 goto B6
If %x% EQU 1 goto B7
If %x% EQU 2 goto B8
If %x% EQU 3 goto B9

:B1
If %TL% EQU X goto erroro
If %TL% EQU O goto erroro
set TL=O
goto AC


:B2
If %TM% EQU X goto erroro
If %TM% EQU O goto erroro
set TM=O
goto AC


:B3
If %TR% EQU X goto erroro
If %TR% EQU O goto erroro
set TR=O
goto AC


:B4
If %ML% EQU X goto erroro
If %ML% EQU O goto erroro
set ML=O
goto AC


:B5
If %MM% EQU X goto erroro
If %MM% EQU O goto erroro
set MM=O
goto AC


:B6
If %MR% EQU X goto erroro
If %MR% EQU O goto erroro
set MR=O
goto AC


:B7
If %BL% EQU X goto erroro
If %BL% EQU O goto erroro
set BL=O
goto AC


:B8
If %BM% EQU X goto erroro
If %BM% EQU O goto erroro
set BM=O
goto AC


:B9
If %BR% EQU X goto erroro
If %BR% EQU O goto erroro
set BR=O
goto AC


:AC
If %TL%+%TM%+%TR% EQU O+O+O goto wino
If %TL%+%ML%+%BL% EQU O+O+O goto wino
If %TL%+%MM%+%BR% EQU O+O+O goto wino
If %TM%+%MM%+%BM% EQU O+O+O goto wino
If %TR%+%MR%+%BR% EQU O+O+O goto wino
If %TR%+%MM%+%BL% EQU O+O+O goto wino
If %ML%+%MM%+%MR% EQU O+O+O goto wino
If %BL%+%BM%+%BR% EQU O+O+O goto wino
goto start2


:BC
If %TL%+%TM%+%TR% EQU X+X+X goto winx
If %TL%+%ML%+%BL% EQU X+X+X goto winx
If %TL%+%MM%+%BR% EQU X+X+X goto winx
If %TM%+%MM%+%BM% EQU X+X+X goto winx
If %TR%+%MR%+%BR% EQU X+X+X goto winx
If %TR%+%MM%+%BL% EQU X+X+X goto winx
If %ML%+%MM%+%MR% EQU X+X+X goto winx
If %BL%+%BM%+%BR% EQU X+X+X goto winx
goto start1

:errorx
Echo.
Echo Invalid Move
Echo.
pause
goto start2

:erroro
Echo.
Echo Invalid Move
Echo.
pause
goto start1


:winx
cls
color 0A
set /a xscore=%xscore%+1
Echo.
Echo.
Echo Congrats %xs%, because...
Echo.
Echo.
Echo                **
Echo   ****    ****  *   *********      **        **  **  **** **
Echo    ****  ****      **              **        **  **  **** **
Echo     ********       **              **   **   **  **  ** * **
Echo      ******        *********       **   **   **  **  ** * **
Echo     ********              **       **   **   **  **  ** * **
Echo    ****  ****             **       ************  **  ** * **
Echo   ****    ****     ********        ************  **  ** ****
Echo.
Echo.
pause
goto ending


:wino
cls
Color 0C
set /a oscore=%oscore%+1
Echo.
Echo.
Echo Congrats %os%, because...
Echo.
Echo.
Echo                **
Echo   ************  *   *********      **        **  **  **** **
Echo   ************     **              **        **  **  **** **
Echo   **        **     **              **   **   **  **  ** * **
Echo   **        **     *********       **   **   **  **  ** * **
Echo   **        **            **       **   **   **  **  ** * **
Echo   ************            **       ************  **  ** * **
Echo   ************     ********        ************  **  ** ****
Echo.   
Echo.
pause 
goto ending

:draw
cls
color 0E
set /a draw=%draw%+1
Echo.
Echo.
Echo Sorry %xs% and %os%, but it's a...
Echo.
Echo.
Echo  ######
Echo  ##    #  
Echo  ##    #   ####    #####  #     #
Echo  ##    #  #    #  #    #  #     #
Echo  ##    #  #       #    #  #  #  #
Echo  ######   #        #### #  #####
Echo.
Echo.
pause
goto ending


:ending
cls
color 0F
Echo.
Echo.
Echo Press 1 to Play Again
Echo Press 2 to Change Players
Echo Press 3 to Exit
Echo.
set /p v=
IF %v% EQU 1 goto superstart
IF %v% EQU 2 goto ultstart
IF %v% EQU 3 goto close





:single
set /a cscore=0
set /a xscore=0
set /a cdraw=0
cls
:name
Echo.
Echo.
Echo What is your name?
Echo.
set /p xs=
Echo.

:sultstart
cls
color 0F
cls
set /a moves=0
set /a TL=7
set /a TM=8
set /a TR=9
set /a ML=4
set /a MM=5
set /a MR=6
set /a BL=1
set /a BM=2
set /a BR=3

:sstart

cls
Echo.
Echo.
Echo      Score: %xs%: %xscore%
Echo             Computer: %cscore%
Echo             Draw: %cdraw%
Echo.
Echo.
Echo                           ***********
Echo                          *           *
Echo                          *  %TL%  %TM%  %TR%  *        
Echo                          *           * 
Echo                          *  %ML%  %MM%  %MR%  *
Echo                          *           * 
Echo                          *  %BL%  %BM%  %BR%  *
Echo                          *           *
Echo                           ***********
Echo.
Echo.
goto CC

:SA

Echo.
Echo.
Echo %xs%'s Turn
Echo.
set /a moves=%moves%+1
set /p x=
If %x% EQU 1 goto SA7
If %x% EQU 2 goto SA8
If %x% EQU 3 goto SA9
If %x% EQU 4 goto SA4
If %x% EQU 5 goto SA5
If %x% EQU 6 goto SA6
If %x% EQU 7 goto SA1
If %x% EQU 8 goto SA2
If %x% EQU 9 goto SA3


:SA1
IF %moves% EQU 9 goto draws
If %TL% EQU X goto errors
If %TL% EQU O goto errors
set TL=X
goto CCC


:SA2
IF %moves% EQU 9 goto draws
If %TM% EQU X goto errors
If %TM% EQU O goto errors
set TM=X
goto CCC


:SA3
IF %moves% EQU 9 goto draws
If %TR% EQU X goto errors
If %TR% EQU O goto errors
set TR=X
goto CCC


:SA4
IF %moves% EQU 9 goto draws
If %ML% EQU X goto errors
If %ML% EQU O goto errors
set ML=X
goto CCC


:SA5
IF %moves% EQU 9 goto draws
If %MM% EQU X goto errors
If %MM% EQU O goto errors
set MM=X
goto CCC


:SA6
IF %moves% EQU 9 goto draws
If %MR% EQU X goto errors
If %MR% EQU O goto errors
set MR=X
goto CCC


:SA7
IF %moves% EQU 9 goto draws
If %BL% EQU X goto errors
If %BL% EQU O goto errors
set BL=X
goto CCC


:SA8
IF %moves% EQU 9 goto draws
If %BM% EQU X goto errors
If %BM% EQU O goto errors
set BM=X
goto CCC


:SA9
IF %moves% GEQ 9 goto draws
If %BR% EQU X goto errors
If %BR% EQU O goto errors
set BR=X
goto CCC

:CC
If %TL%+%TM%+%TR% EQU O+O+O goto loses
If %TL%+%ML%+%BL% EQU O+O+O goto loses
If %TL%+%MM%+%BR% EQU O+O+O goto loses
If %TM%+%MM%+%BM% EQU O+O+O goto loses
If %TR%+%MR%+%BR% EQU O+O+O goto loses
If %TR%+%MM%+%BL% EQU O+O+O goto loses
If %ML%+%MM%+%MR% EQU O+O+O goto loses
If %BL%+%BM%+%BR% EQU O+O+O goto loses
goto SA

:CCC

If %moves% EQU 1 goto 1turn
If %moves% GTR 1 goto 2turn
goto 2turn


:1turn
set /a moves=%moves%+1
If %TL% EQU X goto pcenter
If %TR% EQU X goto pcenter
If %BL% EQU X goto pcenter
If %BR% EQU X goto pcenter
If %MM% EQU X goto pcorner
If %TM% EQU X goto pcenter
If %ML% EQU X goto pcenter
If %MR% EQU X goto pcenter
If %BM% EQU X goto pcenter

:pcenter
set MM=O
goto sstart

:pcorner
set /a moves=%moves%+1
set /a corn=%random%*3/32767+1
If %corn% EQU 1 set TL=O
If %corn% EQU 2 set TR=O
If %corn% EQU 3 set BL=O
If %corn% EQU 4 set BR=O
goto sstart

:2turn
IF %moves% EQU 9 goto draws
If %TL%+%TM%+%TR% EQU X+X+X goto wins
If %TL%+%ML%+%BL% EQU X+X+X goto wins
If %TL%+%MM%+%BR% EQU X+X+X goto wins
If %TM%+%MM%+%BM% EQU X+X+X goto wins
If %TR%+%MR%+%BR% EQU X+X+X goto wins
If %TR%+%MM%+%BL% EQU X+X+X goto wins
If %ML%+%MM%+%MR% EQU X+X+X goto wins
If %BL%+%BM%+%BR% EQU X+X+X goto wins

:offense
set /a moves=%moves%+1
If %TL%+%TM%+%TR% EQU O+O+9 goto Ota
If %TL%+%TM%+%TR% EQU O+8+O goto Otb
If %TL%+%TM%+%TR% EQU 7+O+O goto Otc
If %ML%+%MM%+%MR% EQU O+O+6 goto Otd
If %ML%+%MM%+%MR% EQU O+5+O goto Ote
If %ML%+%MM%+%MR% EQU 4+O+O goto Otf
If %BL%+%BM%+%BR% EQU O+O+3 goto Otg
If %BL%+%BM%+%BR% EQU O+2+O goto Oth
If %BL%+%BM%+%BR% EQU 1+O+O goto Oti

If %TL%+%ML%+%BL% EQU O+O+1 goto Oti
If %TL%+%ML%+%BL% EQU O+4+O goto Otf
If %TL%+%ML%+%BL% EQU 7+O+O goto Otc
If %TM%+%MM%+%BM% EQU O+O+2 goto Oth
If %TM%+%MM%+%BM% EQU O+5+O goto Ote
If %TM%+%MM%+%BM% EQU 8+O+O goto Otb
If %TR%+%MR%+%BR% EQU O+O+3 goto Otg
If %TR%+%MR%+%BR% EQU O+6+O goto Otd
If %TR%+%MR%+%BR% EQU 9+O+O goto Ota

If %TL%+%MM%+%BR% EQU O+O+3 goto Otg
If %TL%+%MM%+%BR% EQU O+5+O goto Ote
If %TL%+%MM%+%BR% EQU 7+O+O goto Otc
If %BL%+%MM%+%TR% EQU O+O+9 goto Ota
If %BL%+%MM%+%TR% EQU O+5+O goto Ote
If %BL%+%MM%+%TR% EQU 1+O+O goto Oti

goto defense

:Ota
set TR=O 
goto sstart
:Otb
set TM=O
goto sstart 
:Otc
set TL=O
goto sstart
:Otd
set MR=O
goto sstart
:Ote
set MM=O
goto sstart
:Otf
set ML=O
goto sstart
:Otg
set BR=O
goto sstart
:Oth
set BM=O
goto sstart
:Oti
set BL=O
goto sstart


:defense
If %TL%+%TM%+%TR% EQU X+X+9 goto 2ta
If %TL%+%TM%+%TR% EQU X+8+X goto 2tb
If %TL%+%TM%+%TR% EQU 7+X+X goto 2tc
If %ML%+%MM%+%MR% EQU X+X+6 goto 2td
If %ML%+%MM%+%MR% EQU X+5+X goto 2te
If %ML%+%MM%+%MR% EQU 4+X+X goto 2tf
If %BL%+%BM%+%BR% EQU X+X+3 goto 2tg
If %BL%+%BM%+%BR% EQU X+2+X goto 2th
If %BL%+%BM%+%BR% EQU 1+X+X goto 2ti

If %TL%+%ML%+%BL% EQU X+X+1 goto 2ti
If %TL%+%ML%+%BL% EQU X+4+X goto 2tf
If %TL%+%ML%+%BL% EQU 7+X+X goto 2tc
If %TM%+%MM%+%BM% EQU X+X+2 goto 2th
If %TM%+%MM%+%BM% EQU X+5+X goto 2te
If %TM%+%MM%+%BM% EQU 8+X+X goto 2tb
If %TR%+%MR%+%BR% EQU X+X+3 goto 2tg
If %TR%+%MR%+%BR% EQU X+6+X goto 2td
If %TR%+%MR%+%BR% EQU 9+X+X goto 2ta

If %TL%+%MM%+%BR% EQU X+X+3 goto 2tg
If %TL%+%MM%+%BR% EQU X+5+X goto 2te
If %TL%+%MM%+%BR% EQU 7+X+X goto 2tc
If %BL%+%MM%+%TR% EQU X+X+9 goto 2ta
If %BL%+%MM%+%TR% EQU X+5+X goto 2te
If %BL%+%MM%+%TR% EQU 1+X+X goto 2ti

If %BL%+%MM%+%TR% EQU X+O+X goto 2tj
If %TL%+%MM%+%BR% EQU X+O+X goto 2tj
If %ML%+%MM%+%MR% EQU X+O+X goto 2tk
If %TM%+%MM%+%BM% EQU X+O+X goto 2tk

:omg
set /a omg=%random%*8/32767+1
if %omg% EQU 1 goto u1
if %omg% EQU 2 goto u2
if %omg% EQU 3 goto u3
if %omg% EQU 4 goto u4
if %omg% EQU 5 goto u5
if %omg% EQU 6 goto u6
if %omg% EQU 7 goto u7
if %omg% EQU 8 goto u8
if %omg% EQU 9 goto u9
goto omg


:u1
If %TL% EQU X goto omg
if %TL% EQU O goto omg
set TL=O
goto sstart
:u2
If %TM% EQU X goto omg
if %TM% EQU O goto omg
set TM=O
goto sstart
:u3
If %TR% EQU X goto omg
if %TR% EQU O goto omg
set TR=O
goto sstart
:u4
If %ML% EQU X goto omg
if %ML% EQU O goto omg
set ML=O
goto sstart
:u5
If %MM% EQU X goto omg
if %MM% EQU O goto omg
set MM=O
goto sstart
:u6
If %MR% EQU X goto omg
if %MR% EQU O goto omg
set MR=O
goto sstart
:u7
If %BM% EQU X goto omg
if %BM% EQU O goto omg
set BM=O
goto sstart
:u8
If %BL% EQU X goto omg
if %BL% EQU O goto omg
set BL=O
goto sstart
:u9
If %BR% EQU X goto omg
if %BR% EQU O goto omg
set BR=O
goto sstart


:2ta
set TR=O
goto sstart
:2tb
set TM=O
goto sstart 
:2tc
set TL=O
goto sstart
:2td
set MR=O
goto sstart
:2te
set MM=O
goto sstart
:2tf
set ML=O
goto sstart
:2tg
set BR=O
goto sstart
:2th
set BM=O
goto sstart
:2ti
set BL=O
goto sstart
:2tj
set /a piece=%random%*3/32767+1
if %piece% EQU 1 goto setml 
if %piece% EQU 2 goto settm 
if %piece% EQU 3 goto setmr 
if %piece% EQU 4 goto setbm 
:setml
if %ML% EQU X goto :2tj
if %ML% EQU O goto :2tj
if %ML% EQU 4 set ML=O
goto sstart
:settm
if %TM% EQU X goto :2tj
if %TM% EQU O goto :2tj
if %TM% EQU 8 set TM=O
goto sstart
:setmr
if %MR% EQU X goto :2tj
if %MR% EQU O goto :2tj
if %MR% EQU 6 set MR=O
goto sstart
:setbm
if %BM% EQU X goto :2tj
if %BM% EQU O goto :2tj
if %BM% EQU 2 set BM=O
goto sstart

:2tk
set /a piece=%random%*3/32767+1
if %piece% EQU 1 goto settl 
if %piece% EQU 2 goto settr 
if %piece% EQU 3 goto setbl 
if %piece% EQU 4 goto setbr 
:settl
if %TL% EQU X goto :2tk
if %TL% EQU O goto :2tk
if %TL% EQU 7 set ML=O
goto sstart
:settr
if %TR% EQU X goto :2tk
if %TR% EQU O goto :2tk
if %TR% EQU 9 set TM=O
goto sstart
:setbl
if %BL% EQU X goto :2tk
if %BL% EQU O goto :2tk
if %BL% EQU 1 set MR=O
goto sstart
:setbr
if %BR% EQU X goto :2tk
if %BR% EQU O goto :2tk
if %BR% EQU 3 set BM=O
goto sstart



:wins2
cls
color 0A
set /a xscore=%xscore%+1
Echo.
Echo.
Echo Congrats %xs%, because...
Echo.
Echo.
Echo                **
Echo   ****    ****  *   *********      **        **  **  **** **
Echo    ****  ****      **              **        **  **  **** **
Echo     ********       **              **   **   **  **  ** * **
Echo      ******        *********       **   **   **  **  ** * **
Echo     ********              **       **   **   **  **  ** * **
Echo    ****  ****             **       ************  **  ** * **
Echo   ****    ****     ********        ************  **  ** ****
Echo.
Echo.
pause
goto endings

:wins
cls
Echo.
Echo.
Echo      Score: %xs%: %xscore%
Echo             Computer: %cscore%
Echo             Draw: %cdraw%
Echo.
Echo.
Echo                           ***********
Echo                          *           *
Echo                          *  %TL%  %TM%  %TR%  *        
Echo                          *           * 
Echo                          *  %ML%  %MM%  %MR%  *
Echo                          *           * 
Echo                          *  %BL%  %BM%  %BR%  *
Echo                          *           *
Echo                           ***********
Echo.
Echo.
pause
goto wins2


:loses2
cls
color 0C
set /a cscore=%cscore%+1
Echo.
Echo.
Echo Sorry %xs%, because...
Echo.
Echo.
Echo    ****    ****             ****   
Echo     ****  ****              ****
Echo      ******** ***** *   *   ****     ***** ***** ****
Echo       ******  *   * *   *   ****     *   * *     *
Echo        ****   *   * *   *   ****     *   * ***** ***
Echo        ****   *   * *   *   ******** *   *     * *
Echo        ****   ***** *****   ******** ***** ***** *****
Echo.
Echo.
pause
goto endings



:draws2
cls
color 0E
set /a cdraw=%craw%+1
Echo.
Echo.
Echo Sorry %xs% but you failed to beat the computer. It's a.....
Echo.
Echo.
Echo  ######
Echo  ##    #  
Echo  ##    #   ####    #####  #     #
Echo  ##    #  #    #  #    #  #     #
Echo  ##    #  #       #    #  #  #  #
Echo  ######   #        #### #  #####
Echo.
Echo.
pause
goto endings

:draws
cls
Echo.
Echo.
Echo      Score: %xs%: %xscore%
Echo             Computer: %cscore%
Echo             Draw: %cdraw%
Echo.
Echo.
Echo                           ***********
Echo                          *           *
Echo                          *  %TL%  %TM%  %TR%  *        
Echo                          *           * 
Echo                          *  %ML%  %MM%  %MR%  *
Echo                          *           * 
Echo                          *  %BL%  %BM%  %BR%  *
Echo                          *           *
Echo                           ***********
Echo.
Echo.
pause
goto draws2


:endings
cls
color 0F
Echo.
Echo.
Echo Press 1 to Play Again
Echo Press 2 to Go to the main menu
Echo Press 3 to Exit
Echo.
set /p v=
IF %v% EQU 1 goto sultstart
IF %v% EQU 2 goto menu9
IF %v% EQU 3 goto close

:menu9
if %tyu%


:errors
Echo.
Echo Hey you dingbat! That's an invalid move!
Echo.
pause
goto sstart

:loses
cls
Echo.
Echo.
Echo      Score: %xs%: %xscore%
Echo             Computer: %cscore%
Echo             Draw: %cdraw%
Echo.
Echo.
Echo                           ***********
Echo                          *           *
Echo                          *  %TL%  %TM%  %TR%  *        
Echo                          *           * 
Echo                          *  %ML%  %MM%  %MR%  *
Echo                          *           * 
Echo                          *  %BL%  %BM%  %BR%  *
Echo                          *           *
Echo                           ***********
Echo.
Echo.
pause
goto loses2

:close
goto 1

:finend

