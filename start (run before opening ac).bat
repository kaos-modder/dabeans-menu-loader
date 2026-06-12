@echo off
:frida

color 9
title 7s menu (start.bat by Rodeos)
echo setting up paths
set PATH=%PATH%;%APPDATA%\Python\Python312\Scripts
set PATH=%PATH%;C:\Users\%USERNAME%\AppData\Local\Python\pythoncore-3.14-64\Scripts
set PATH=%PATH%;%LOCALAPPDATA%\Python\pythoncore-3.14-64\Scripts
echo ----------------------------------

echo installing and updating dependeties
pip install frida-tools
echo ----------------------------------
python -m pip install frida-tools
echo ----------------------------------
echo press enter when you are loading into the game
pause >nul

frida -l frida-il2cpp-bridge.js -l sy.ts -l m4.ts -l da.ts "AnimalCompany.exe"

color 4
echo ----------------------------------
echo failed to inject!!!
echo press enter to inject the 7s menu and quest servers again!
pause > nul
cls
goto frida