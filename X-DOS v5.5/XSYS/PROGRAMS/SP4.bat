@echo off
title William's Calculator
color 1F
:menu
cls
Echo.
Echo.
Echo --------------------
Echo  1) Calculator
Echo  2) Temp Converter
Echo  3) Geometry
Echo  4) Notes
Echo  5) Exit
Echo --------------------
set /p menu=
If %menu% EQU 1 goto start
If %menu% EQU 2 goto temp
If %menu% EQU 3 goto geo
if %menu% EQU 4 goto notes
if %menu% EQU 5 goto closezx
goto menu
:notes
cls
Echo.
Echo.
Echo -------------------------------------------------
Echo  All answers generated will be within 1 of their
Echo  true value. The reason for the chance of error
Echo  is that batch files cannot handle decimals. If
Echo  I find away around this I will fix it. 
Echo -------------------------------------------------
Echo      Press any key to go back to the menu
pause>nul
goto menu
:start
cls
Echo.
Echo ----------------------------------------------------------------------
Echo   +    -      *        /       ans       menu      
Echo  add minus multiply Divide  Prev. Ans Goto Menu
Echo ----------------------------------------------------------------------
Echo.
Echo                                               Answer: %ans%
Echo.
set /p equ=Equation:
if %equ% EQU menu goto menu
set /a ans=%equ%
cls
goto start

:divide
Echo SUCCESS!
pause
del check.txt
goto start
:exponent
echo success
pause 
del check.txt
goto start

:temp
cls
Echo.
Echo.
Echo -------------------
Echo  1) F to C
Echo  2) C to F
Echo  3) F to K
Echo  4) C to K
Echo  5) K to F
Echo  6) K to C
Echo  7) Menu
Echo -------------------
set /p menu=
if %menu% EQU 1 goto FC
if %menu% EQU 2 goto CF
if %menu% EQU 3 goto FK
if %menu% EQU 4 goto CK
if %menu% EQU 5 goto KF
if %menu% EQU 6 goto KC
if %menu% EQU 7 goto menu
if %menu% GTR 7 goto temp
if %menu% LSS 1 goto temp
:FC
Echo -------------------
Echo Temp Fahrenheit:
set /p temp=
Echo -------------------
set /a temp=%temp%-32
set /a temp=%temp%*5
set /a temp=%temp%/9
Echo.
Echo Temp Celcius: %temp%
Echo.
Echo -------------------
Echo.
Echo Press Enter
pause>nul
goto temp
:CF
Echo -------------------
Echo Temp Celcius:
set /p temp=
Echo -------------------
set /a temp=%temp%*9
set /a temp=%temp%/5
set /a temp=%temp%+32
Echo.
Echo Temp Fahrenheit: %temp%
Echo.
Echo -------------------
Echo.
Echo Press Enter
pause>nul
goto temp
:FK
Echo -------------------
Echo Temp Fahrenheit:
set /p temp=
Echo -------------------
set /a temp=%temp%-32
set /a temp=%temp%*5
set /a temp=%temp%/9
set /a temp=%temp%+273
Echo.
Echo Temp Kelvin: %temp%
Echo.
Echo -------------------
Echo.
Echo Press Enter
pause>nul
goto temp
:CK
Echo -------------------
Echo Temp Celcius:
set /p temp=
Echo -------------------
set /a temp=%temp%+273
Echo.
Echo Temp Kelvin: %temp%
Echo.
Echo -------------------
Echo.
Echo Press Enter
pause>nul
goto temp
:KF
Echo -------------------
Echo Temp Kelvin:
set /p temp=
Echo -------------------
set /a temp=%temp%-273
set /a temp=%temp%*9
set /a temp=%temp%/5
set /a temp=%temp%+32
Echo.
Echo Temp Fahrenheit: %temp%
Echo.
Echo -------------------
Echo.
Echo Press Enter
pause>nul
goto temp
:KC
Echo -------------------
Echo Temp Kelvin:
set /p temp=
Echo -------------------
set /a temp=%temp%-273
Echo.
Echo Temp Celcius: %temp%
Echo.
Echo -------------------
Echo.
Echo Press Enter
pause>nul
goto temp


:geo
cls
Echo.
Echo.
Echo --------------------
Echo  1) Area
Echo  2) Volume
Echo  3) Surface Area
Echo  4) Circumference
Echo  5) Menu
Echo --------------------
Echo.
Echo Choose a Category
Echo.
set /p choice=
if %choice% EQU 1 goto area
if %choice% EQU 2 goto volume
if %choice% EQU 3 goto sarea
if %choice% EQU 4 goto circum
if %choice% EQU 5 goto menu
goto geo

:area
cls
Echo.
Echo.
Echo -----------------------
Echo  1)Square or Rectangle
Echo  2)Triangle
Echo  3)Trapezoid
Echo  4)Circle
Echo  5)Menu
Echo -----------------------
Echo.
set /p choice=
if %choice% EQU 1 goto rect
if %choice% EQU 2 goto tri
if %choice% EQU 3 goto trap
if %choice% EQU 4 goto cir
if %choice% EQU 5 goto menu
goto area

:rect
cls
Echo.
Echo.
Echo ------------------
Echo     RECTANGLE
Echo ------------------
Echo.
Echo.
Echo   Length=
set /p len=
Echo.
Echo   Width=
set /p wid=
set /a area=%len%*%wid%
Echo.
Echo Area=%area%
Echo.
Echo Press Enter
pause>nul
goto area

:tri
cls
Echo.
Echo.
Echo -----------------
Echo     Triangle
Echo -----------------
Echo.
Echo.
Echo   Base=
set /p base=
Echo.
Echo   Height=
set /p hei=
set /a area=%base%*%hei%
set /a area=%area%/2
Echo.
Echo Area=%area%
Echo.
Echo Press Enter
pause>nul
goto area


:trap
cls
Echo.
Echo.
Echo -----------------
Echo     Trapezoid
Echo -----------------
Echo.
Echo.
Echo   Base 1=
set /p base1=
Echo.
Echo   Base 2=
set /p base2=
Echo.
Echo   Height=
set /p hei=
set /a area=%base1%*%base2%
set /a area=%area%/2
set /a area=%area%*%hei%
Echo.
Echo Area=%area%
Echo.
Echo Press Enter
pause>nul
goto area

:cir
cls
Echo.
Echo.
Echo ----------------
Echo      Circle
Echo ----------------
Echo.
Echo.
Echo   Radius=
set /p rad=
Echo.
set /a area=%rad%*%rad%
set /a area=%area%*22
set /a area=%area%/7
Echo.
Echo Area=%area%
Echo.
Echo Press Enter
pause>nul
goto area

:volume
cls
Echo.
Echo.
Echo -----------------------------
Echo  1)Cube or Rectangular Prism
Echo  2)Triangular Prism
Echo  3)Square Pyramid
Echo  4)Triangular Pyramid
Echo  5)Cone
Echo  6)Sphere
Echo  7)Cylinder
Echo  8)Menu
Echo -----------------------------
Echo.
set /p choice=
if %choice% EQU 1 goto cube
if %choice% EQU 2 goto trip
if %choice% EQU 3 goto spyr
if %choice% EQU 4 goto tpyr
if %choice% EQU 5 goto cone
if %choice% EQU 6 goto sphere
if %choice% EQU 7 goto cyl
if %choice% EQU 8 goto menu
goto volume

:cube
cls
Echo.
Echo.
Echo ----------------
Echo    RECT Prism
Echo ----------------
Echo.
Echo.
Echo   Length=
set /p len=
Echo.
Echo   Width=
set /p wid=
Echo.
Echo   Height=
set /p hei=
set /a vol=%len%*%wid%*%hei%
Echo.
Echo Volume=%vol%
Echo.
Echo Press Enter
pause>nul
goto volume

:trip
cls
Echo.
Echo.
Echo -----------------
Echo     TRI Prism
Echo -----------------
Echo.
Echo.
Echo   Base=
set /p base=
Echo.
Echo   Height (of Base)=
set /p hei=
Echo.
Echo   Height (of Prism)=
set /p hei2=
set /a vol=%base%*%hei%
set /a vol=%vol%/2
set /a vol=%vol%*%hei2%
Echo.
Echo Volume=%vol%
Echo.
Echo Press Enter
pause>nul
goto volume

:spyr
cls
Echo.
Echo.
Echo ---------------
Echo     Sq. Pyr
Echo ---------------
Echo.
Echo.
Echo   Length=
set /p len=
Echo.
Echo   Width=
set /p wid=
Echo.
Echo   Height=
set /p hei=
set /a vol=%len%*%wid%*%hei%
set /a vol=%vol%/3
Echo.
Echo Volume=%vol%
Echo.
Echo Press Enter
pause>nul
goto volume

:tpyr
cls
Echo.
Echo.
Echo ---------------
Echo     Tri Pyr
Echo ---------------
Echo.
Echo.
Echo   Base=
set /p base=
Echo.
Echo   Height (of Base)=
set /p hei=
Echo.
Echo   Height (of Prism)=
set /p hei2=
set /a vol=%base%*%hei%
set /a vol=%vol%/2
set /a vol=%vol%*%hei2%
set /a vol=%vol%/3
Echo.
Echo Volume=%vol%
Echo.
Echo Press Enter
pause>nul
goto volume

:cone
cls
Echo.
Echo.
Echo --------------
Echo      Cone
Echo --------------
Echo.
Echo.
Echo   Radius=
set /p rad=
Echo.
Echo   Height=
set /p hei=
set /a vol=%rad%*%rad%
set /a vol=%vol%*22
set /a vol=%vol%/7
set /a vol=%vol%*hei
set /a vol=%vol%/3
Echo.
Echo Volume=%vol%
Echo.
Echo Press Enter
pause>nul
goto volume

:sphere
cls
Echo.
Echo.
Echo --------------
Echo     Sphere
Echo --------------
Echo.
Echo.
Echo   Radius=
set /p rad=
set /a vol=%rad%*%rad%*%rad%
set /a vol=%vol%*22
set /a vol=%vol%/7
set /a vol=%vol%*4
set /a vol=%vol%/3
Echo.
Echo Volume=%vol%
Echo.
Echo Press Enter
pause>nul
goto volume

:cyl
cls
Echo.
Echo.
Echo ----------------
Echo     Cylinder
Echo ----------------
Echo.
Echo.
Echo   Radius=
set /p rad=
Echo.
Echo   Height=
set /p hei=
set /a vol=%rad%*%rad%
set /a vol=%vol%*22
set /a vol=%vol%/7
set /a vol=%vol%*%hei%
Echo.
Echo Volume=%vol%
Echo.
Echo Press Enter
pause>nul
goto volume

:sarea
cls
Echo.
Echo.
Echo -----------------------------
Echo  1)Cube or Rectangular Prism
Echo  2)Triangular Prism
Echo  3)Sphere
Echo  4)Cylinder
Echo  5)Menu
Echo -----------------------------
Echo.
set /p choice=
if %choice% EQU 1 goto cubes
if %choice% EQU 2 goto trips
if %choice% EQU 3 goto spheres
if %choice% EQU 4 goto cyls
if %choice% EQU 5 goto menu
goto sarea

:cubes
cls
Echo.
Echo.
Echo ----------------
Echo    RECT Prism
Echo ----------------
Echo.
Echo.
Echo   Length (base)=
set /p len=
Echo.
Echo   Width (base)=
set /p wid=
Echo.
Echo   Height=
set /p hei=
set /a vol=%len%+%wid%+%len%+%wid%
set /a vol=%vol%*hei
set /a b=%len%*%wid%
set /a b=%b%*2
set /a vol=%vol%+%b%
Echo.
Echo Surface Area=%vol%
Echo.
Echo Press Enter
pause>nul
goto sarea

:trips
cls
Echo.
Echo.
Echo -----------------
Echo     TRI Prism
Echo -----------------
Echo.
Echo.
Echo   Base=
set /p base=
Echo.
Echo   Side 2=
set /p base2=
Echo.
Echo   Side 3=
set /p base3=
Echo.
Echo   Height (or Base)=
set /p hei=
Echo.
Echo   Height (of Prism)=
set /p hei2=
set /a vol=%base%+%base2%+%base3%
set /a vol=%vol%*hei2
set /a b=%base%*%hei%
set /a b=%b%/2
set /a vol=%vol%+%b%
Echo.
Echo Surface Area=%vol%
Echo.
Echo Press Enter
pause>nul
goto sarea

:spheres
cls
Echo.
Echo.
Echo --------------
Echo     Sphere
Echo --------------
Echo.
Echo.
Echo   Radius=
set /p rad=
set /a vol=%rad%*%rad%
set /a vol=%vol%*22
set /a vol=%vol%/7
set /a vol=%vol%*4
Echo.
Echo Surface Area=%vol%
Echo.
Echo Press Enter
pause>nul
goto sarea

:cyls
cls
Echo.
Echo.
Echo ----------------
Echo     Cylinder
Echo ----------------
Echo.
Echo.
Echo   Radius=
set /p rad=
Echo.
Echo   Height=
set /p hei=
set /a vol=%rad%*%rad%
set /a vol=%vol%*22
set /a vol=%vol%/7
set /a vol=%vol%*2
set /a c=%rad%*%hei%
set /a c=%c%*22
set /a c=%c%/7
set /a c=%c%*2
set /a vol=%vol%+%c%
Echo.
Echo Surface Area=%vol%
Echo.
Echo Press Enter
pause>nul
goto sarea

:circum
cls
Echo.
Echo.
Echo -----------------------
Echo  Diamter:
set /p dia=
set /a cir=%dia%*22
set /a cir=%cir%/7
Echo.
Echo  Circumference: %cir%
Echo -----------------------
Echo.
Echo Press Enter
Echo.
pause>nul
goto menu

:closezx

