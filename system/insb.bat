@echo off

if not exist "DebiOS Install.bat" goto boot
del "DebiOS Install.bat"

:boot
cd boot
rename boot.debi boot.bat
start boot.bat
exit