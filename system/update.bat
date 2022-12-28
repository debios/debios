@echo off

::BASIC INITIALIZATION
title DebiAPPs Store UPDATER -- (Initializing)
SET mypath=%~dp0  
chcp 65001
mode con: cols=120 lines=30
echo %TIME% UPDATER: Initializing Updater...
ping localhost -n 1 >nul

::VERSION CHECK
title DebiAPPs Store UPDATER -- (Contacting the update servers)
echo %TIME% UPDATER: Contacting the update servers...
cd..
cd data
cd debiappstore
set pathdl=%mypath:~0,-3%\download.exe
"%pathdl%" http://raw.githubusercontent.com/debios/debios.github.io/master/_verdata/appstore.md current.debidat >nul
if not exist "%cd%\current.debidat" goto nointernet
set currentver=<current.debidat
del current.debidat >nul
del ver.debidat
echo %currentver% >ver.debidat
cd..
cd..
cd system
ping localhost -n 1 >nul

::DOWNLOAD AND REPLACE
title DebiAPPs Store UPDATER -- (Downloading current version)
echo %TIME% UPDATER: Updating the store...
del program.debi
download http://raw.githubusercontent.com/debios/debios.github.io/master/_dastore/DebiOS/currentstore.bat program.debi >nul
if not exist "%cd%\program.debi" goto nointernet
ping localhost -n 1 >nul
echo %TIME% UPDATER: Done!
echo.
echo The update has been succesful. You can now close this window and open your DebiAPPs store.
pause >nul


:nointernet
echo %TIME% UPDATER: We can't connect to the update servers, so we were unable to update DebiAPPs Store.
echo.
pause