@echo off

::zadat
::cls
::echo deprecated
::pause

title DebiAPP Store (alpha interface)
::BASIC INITIALIZATION
SET mypath=%~dp0  
chcp 65001
mode con: cols=120 lines=30
set ver=xdev1




::FIRST START CHECK
cd..
cd data
if not exist "%cd%\debiappstore" mkdir "debiappstore"
cd debiappstore
if not exist "%cd%\ver.debidat" echo %ver% >ver.debidat
cd..
cd..
cd system
if not exist "%cd%\update.bat" ( goto store_updatedownload
) else ( goto updatecheck )

::VERSION MISMATCH CHECK
::cd..
::cd data
::cd debiappstore
::set mismatchtest=<ver.debidat
::if NOT "%ver%" == "%mismatchtest%" echo Your DebiAPPs Store versions are mismatched. Make sure you got the official DebiAPPs Store. & ping localhost -n 4 >nul
::cd..
::cd..
::cd system

:store_updatedownload
download http://raw.githubusercontent.com/debios/debios.github.io/master/_dastore/update.bat update.bat >nul

::UPDATE CHECK
:updatecheck
download http://raw.githubusercontent.com/debios/debios.github.io/master/_verdata/appstore.md currentstore.debidat >nul
set /p currentver=<currentstore.debidat
del currentstore.debidat >nul
if NOT "%ver%" == "%currentver%" goto store_update_ask
goto store_update_skip

:store_update_ask
echo There is a new version of DebiAPP Store. Do you want to download it?
echo Disclaimer: Without the latest version, some apps might be unavailable.
echo.
CmdMenuSel F8F0 "Update DebiAPP store" "Not now" 
echo.
if %ERRORLEVEL% == 1 goto store_update_proceed
if %ERRORLEVEL% == 2 goto store_update_skip

:store_update_proceed
update.bat
call exit
call rename program.bat program.debi

:store_update_skip
echo Updateskip
cls

:store_splashscreen
cls
echo.
echo ------------------------------------------------------------------------------    _____ __          
echo                                                                                  / ___// /_____  ________ 
echo Welcome to the DebiAPPs Store.                                        DebiAPPs   \__ \/ __/ __ \/ ___/ _ \
echo Here, you can install third party apps!                         version: %ver%  ___/ / /_/ /_/ / /  /  __/
echo                                                                                /____/\__/\____/_/   \___/ 
echo ------------------------------------------------------------------------------ 
echo.
echo.
echo Welcome to the main menu. Pick one item.
echo.
echo.
CmdMenuSel F8F0 "Browse available DebiAPPs" "Installed DebiAPPs" "Update DebiAPPs" "Settings" "Quit DebiAPPs Store"
echo.
if %ERRORLEVEL% == 1 goto store_browse
if %ERRORLEVEL% == 2 goto store_installed
if %ERRORLEVEL% == 3 goto store_update
if %ERRORLEVEL% == 4 goto store_settings
if %ERRORLEVEL% == 5 goto store_quit

:store_quit
echo.
echo Quitting DebiAPPs Store...
ping localhost -n 2 >nul
call exit
call rename program.bat program.debi

:store_browse
echo.
echo This feature is under construction!
echo Hit ENTER to continue...
echo.
pause >null
goto store_splashscreen

:store_installed
echo.
echo This feature is under construction!
echo Hit ENTER to continue...
echo.
pause >null
goto store_splashscreen

:store_update
echo.
echo This feature is under construction!
echo Hit ENTER to continue...
echo.
pause >null
goto store_splashscreen

:store_settings
echo.
echo This feature is under construction!
echo Hit ENTER to continue...
echo.
pause >null
goto store_splashscreenS