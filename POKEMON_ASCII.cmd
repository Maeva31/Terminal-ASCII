@echo off
setlocal EnableExtensions
title MaEvA - Pokemon ASCII
color 0A

:menu
cls
echo ================================================
echo              POKEMON ASCII
echo ================================================
echo.
echo Quelques numeros:
echo   001 Bulbizarre
echo   004 Salameche
echo   006 Dracaufeu
echo   007 Carapuce
echo   025 Pikachu
echo   094 Ectoplasma
echo   133 Evoli
echo   150 Mewtwo
echo   151 Mew
echo.
echo Entre un numero Pokedex sur 3 chiffres.
echo Exemple : 025
echo.
echo Q = Retour
echo.
set "dex="
set /p "dex=Numero : "
if /I "%dex%"=="Q" exit /b
if "%dex%"=="" goto menu

cls
echo Pokemon #%dex%
echo.
curl.exe -L -s "https://raw.githubusercontent.com/shinya/pokemon-terminal-art/main/compact/256color/diamond/%dex%.txt"
echo.
echo.
pause
goto menu
