::DEBIOS INSTALLER (C)2017-2020 TWFVRCZ
::ALL RIGHTS RESERVED
::YOU CAN MODIFY IT/USE SOME PARTS WITH CREDITS

@echo off

SET mypath=%~dp0


::VER INFO
set verzicinka=25.5.20-dev
set kernelik=DebiOS One 2020
set titlik=DebiOS O25.5.20

::RESIZE WINDOW
mode con: cols=120 lines=30

::FORBIDDEN NAMES
set debiosjmeno=debios
set superuserjm=superuser

::TITLE
title DebiOS Installation    

::FIRST SCREEN
echo.
echo        ______________________________________________________________________________________________________
echo.      
echo         DebiOS Installation (v24.5.20-dev) - BETA INSTALLATION                                 (part 1 of 5)
echo        ______________________________________________________________________________________________________
echo.      
echo.
echo        Welcome to the first boot of DebiOS! 
echo.
echo        We need to set some settings before you start using it. 
echo        This setup program will prepare DebiOS to run on your computer.
echo.
echo         - Press ENTER to continue
echo         - Close the window to quit the setup
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.       DebiOS is still in development. You are now using a public beta. & pause >nul



::USERNAME DEFAULT SET
:jmeno
cls
color 07   
set "uzivatel=DebiOS%random%"


::USERNAME SELECT
echo.
echo        ______________________________________________________________________________________________________
echo.      
echo         DebiOS Installation (v24.5.20-dev) - BETA INSTALLATION                                 (part 2 of 5)
echo        ______________________________________________________________________________________________________
echo.      
echo.
echo        First of all, how we are supposed to call you? 
echo.
echo        Please enter your username and press ENTER to continue:
echo. 
set /p uzivatel=

::USERNAME PARSER
if "%uzivatel%" equ " " set "uzivatel=DebiOS%random%"
if "%uzivatel%" equ "" set "uzivatel=DebiOS%random%"
if "%uzivatel%" equ "%debiosjmeno%" goto jmenoS
if "%uzivatel%" equ "%superuserjm%" goto jmenoS   
if "%uzivatel%" equ "random" goto randomjmeno
if "%uzivatel%" equ "null" set "uzivatel=1"
if "%uzivatel%" equ "con" set "uzivatel=1"
if "%uzivatel%" equ "aux" set "uzivatel=1"
if "%uzivatel%" equ "1" goto chyba

goto jmenogood

::RANDOM USERNAME SET
:randomjmeno
set uzivatel=debiuser%random%
goto jmenogood

::FORBIDDEN USERNAME SCREEN
:jmenoS

echo.
echo        ______________________________________________________________________________________________________
echo.      
echo         DebiOS Installation (v24.5.20-dev) - BETA INSTALLATION                                 (part 2 of 5)
echo        ______________________________________________________________________________________________________
echo.      
echo.
echo        You can't use this username! Please select different one.
echo.
echo         - Press ENTER to select the username again
echo.
echo        TIP: If you leave the username blank, the system will asign you random username!    
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.       ERR: BAD_USERNAME & pause >nul
cls
goto jmeno


::USERNAME WRITE
:jmenogood
if not exist "%mypath:~0,-1%\data\" mkdir data
goto datafu

:datafu
cd data
cls
echo.
echo        ______________________________________________________________________________________________________
echo.      
echo         DebiOS Installation (v24.5.20-dev) - BETA INSTALLATION                                 (part 2 of 5)
echo        ______________________________________________________________________________________________________
echo.      
echo.
echo        Writing...
ping localhost >nul
echo %uzivatel% >> user.debidat
echo.
echo        Done! Press ENTER to continue...
echo.
echo.  
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.        & pause >nul


::INTERFACE COLOR
:barva
cls
color 07
cd..
cd system


echo.
echo        ______________________________________________________________________________________________________
echo.      
echo         DebiOS Installation (v24.5.20-dev) - BETA INSTALLATION                                 (part 3 of 5)
echo        ______________________________________________________________________________________________________
echo.      
echo.
echo        Now, we have to select color of your user interface!
echo.
echo        TIP: The color can be changed later in the system!
echo.
echo        Please select the color of text:  
echo.
CmdMenuSel F1F0 "        Blue" "        Green" "        Aqua" "        Red" "        Purple" "        Yellow" "        Gray" "        Dark gray" "        Light blue" "        Light green" "        Light aqua" "        Light red" "        Light purple" "        Light yellow" "        White"


:barvatest1
if %ERRORLEVEL% == 1 set barva=01
if %ERRORLEVEL% == 2 set barva=02
if %ERRORLEVEL% == 3 set barva=03
if %ERRORLEVEL% == 4 set barva=04
if %ERRORLEVEL% == 5 set barva=05
if %ERRORLEVEL% == 6 set barva=06
if %ERRORLEVEL% == 7 set barva=07
if %ERRORLEVEL% == 8 set barva=08
if %ERRORLEVEL% == 9 set barva=09
if %ERRORLEVEL% == 10 set barva=0A
if %ERRORLEVEL% == 11 set barva=0B
if %ERRORLEVEL% == 12 set barva=0C
if %ERRORLEVEL% == 13 set barva=0D
if %ERRORLEVEL% == 14 set barva=0E
if %ERRORLEVEL% == 15 set barva=0F
color %barva%
echo         Is this color right? Y/N
set /p spravnost=
set anooooo=Y
set neee=N

if "%spravnost%" equ "" set "spravnost=N"
if /i %spravnost%==%anooooo% goto anobarva
if /i %spravnost%==%neee% goto barva

msg * Use Y/N!
goto barva

:anobarva
cd..
if not exist "%mypath:~0,-1%\boot\" mkdir boot
goto fbootgud



::FINISHING SCREEN
:fbootgud
cls

echo.
echo        ______________________________________________________________________________________________________
echo.      
echo         DebiOS Installation (v24.5.20-dev) - BETA INSTALLATION                                 (part 4 of 5)
echo        ______________________________________________________________________________________________________
echo.      
echo.
echo        Finishing installation... 
echo.
echo        * Checking files errors
ping localhost -n 2 >nul

cd boot

::CHECKING FILES
if not exist vyp.debiins set vypnout=1
if not exist reset.debiins set reset=1
if not exist boot.debiins set boot=1
cd..
if not exist "%mypath:~0,-1%\core\" mkdir core
if not exist "%mypath:~0,-1%\system\" mkdir system
cd core
if not exist system.debiapp set systeminfo=1
cd..
cd system
if not exist program.debiins set program=1
if not exist system.debisysins set system=1
if not exist insb.bat set insb=1
cd..

if /i "%systeminfo%"=="1" goto chyba
if /i "%zrn%"=="1" goto chyba
if /i "%vypnout%"=="1" goto chyba
if /i "%boot%"=="1" goto chyba
if /i "%reset%"=="1" goto chyba
if /i "%brn%"=="1" goto chyba
if /i "%brnr%"=="1" goto chyba
if /i "%program%"=="1" goto chyba
if /i "%system%"=="1" goto chyba
if /i "%srn%"=="1" goto chyba
if /i "%insb%"=="1" goto chyba
if /i "%ire%"=="1" goto chyba

::IRE RENAMING
echo        * COMPLETE!
echo.
echo        * Applying iRE filesystem changes
:pohodkab
cd boot
rename vyp.debiins vyp.debi
rename reset.debiins reset.debi
rename boot.debiins boot.debi
cd..
goto fsystemgud

ping -n 1 localhost >nul

:fsystemgud
cd system
rename program.debiins program.debi
rename system.debisysins system.debi
cd..
goto fzdrojgud

  
:fzdrojgud
echo        * COMPLETE!
echo.    
cd core
echo        * Saving configuration
cd..
cd data
echo %barva%>>color.debidat
echo        * COMPLETE!
echo.
echo.

cls

::COMPLETE SCREEN
echo.
echo        ______________________________________________________________________________________________________
echo.      
echo         DebiOS Installation (v24.5.20-dev) - BETA INSTALLATION                                 (part 5 of 5)
echo        ______________________________________________________________________________________________________
echo.
echo.
echo        Finishing installation...
echo.
echo        * Checking files errors
echo        * COMPLETE!
echo.
echo        * Applying iRE filesystem changes
echo        * COMPLETE!
echo.
echo        * Saving configuration
echo        * COMPLETE!
echo.
echo.
echo         - Press ENTER to complete installation...
pause >nul

::BOOTABLE EDITS
cd.. 
move "%mypath:~0,-1%\system\insb.bat" "%mypath:~0,-1%"
rename insb.bat DebiOS.bat
cd data
mkdir info
cd info
echo %titlik%>>title.debidat
echo %kernelik%>>kernel.debidat
echo %verzicinka%>>ver.debidat
cd..
cd..
if not exist "%cd%\LOG" mkdir LOG
msg * Installation complete!
start DebiOS.bat
exit


::ERROR MESSAGES
:chyba
cls
color 1F
echo DEBIOS ONE %verzicinka% - ERROR
echo.
echo Collecting informations...
for %%d in ( A L Z ) do echo.|set /p=.
ping -n 1 localhost >nul
for %%d in ( A L Z A L Z A L Z A L ) do echo.|set /p=.
ping -n 1 localhost >nul
for %%d in ( A ) do echo.|set /p=.
ping -n 1 localhost >nul
for %%d in ( A A A A A A A ) do echo.|set /p=.
ping -n 2 localhost >nul
echo.
echo There was an error attempting to boot the system!
echo Error report:
ping -n 2 localhost >nul
echo.
echo DEBIOS ONE %verzicinka%
echo KERNEL: %kernelik%
echo VERSION: %titlik%
echo TIME: %date% %time%
set idcko=%random%
echo ID: %idcko%
echo List of errors:
echo.

:vypis
if /i "%vypnout%"=="1" goto chybav
if /i "%boot%"=="1" goto chybab
if /i "%reset%"=="1" goto chybar
if /i "%program%"=="1" goto chybap
if /i "%system%"=="1" goto chybas
if /i "%systeminfo%"=="1" goto chybasi
if /i "%brn%"=="1" goto chybabr
if /i "%brnr%"=="1" goto chybabrr
if /i "%zrn%"=="1" goto chybazr
if /i "%srn%"=="1" goto chybasr
if /i "%uzivatel%"=="1" goto chybajm
if /i "%insb%"=="1" goto chybaib
if /i "%insb%"=="1" goto chybair


:konecvypisu
echo.
echo Please fix these errors and start again!
cd data
rem user.debidat
pause >nul
exit

:chybav
echo Missing file - /boot/vyp.debiins
set vypnout=0
goto vypis

:chybab
echo Missing file - /boot/boot.debiins
set boot=0
goto vypis

:chybabr
echo Missing file - /boot/rn.exe
set brn=0
goto vypis

:chybabrr
echo Missing file - /boot/rnr.exe
set brnr=0
goto vypis

:chybar
echo Missing file - /boot/reset.debiins
set reset=0
goto vypis

:chybas
echo Missing file - /system/system.debisysins
set system=0
goto vypis

:chybap
echo Missing file - /system/program.debiins
set program=0
goto vypis

:chybair
echo Missing file - /system/ire.exe
set ire=0
goto vypis

:chybaib
echo Missing file - /core/insb.exe
set insb=0
goto vypis

:chybasi
echo Missing file - /core/system.debiapp
set systeminfo=0
goto vypis

:chybazr
echo Missing file - /core/rn.exe
set zrn=0
goto vypis

:chybajm
echo INVALID USERNAME - null, con, aux are forbidden usernames. Please select different
set uzivatel=0
goto vypis
