@echo off
setlocal EnableExtensions
title MaEvA - Terminal Fun
color 0A

:menu
cls
echo =====================================================
echo               MaEvA - TERMINAL FUN
echo =====================================================
echo.
echo  1. Liste ASCII.LIVE actuelle
echo  2. Lancer une animation ASCII.LIVE
echo  3. Party Parrot
echo  4. Aquarium ASCII
echo  5. Matrix local
echo  6. Meteo
echo  7. Lune
echo  8. Pokemon ASCII
echo  9. Star Wars ASCII via Telnet
echo 10. Cheat.sh - aide terminal/code
echo 11. QR Code dans le terminal
echo 12. Mon IP publique
echo 13. Crypto - tableau principal
echo 14. Crypto - graphique Bitcoin
echo.
echo  C. Changer les couleurs CMD
echo  Q. Quitter
echo.
set "choix="
set /p "choix=Choix : "

if "%choix%"=="1" goto asciilist
if "%choix%"=="2" goto asciirun
if "%choix%"=="3" goto parrot
if "%choix%"=="4" goto aquarium
if "%choix%"=="5" goto matrix
if "%choix%"=="6" goto meteo
if "%choix%"=="7" goto moon
if "%choix%"=="8" goto pokemon
if "%choix%"=="9" goto starwars
if "%choix%"=="10" goto cheat
if "%choix%"=="11" goto qr
if "%choix%"=="12" goto ip
if "%choix%"=="13" goto crypto
if "%choix%"=="14" goto btc
if /I "%choix%"=="C" goto colors
if /I "%choix%"=="Q" exit /b
goto menu

:asciilist
cls
echo Liste actuelle fournie directement par ascii.live:
echo.
curl.exe -s https://ascii.live/list
echo.
echo.
pause
goto menu

:asciirun
cls
echo Liste actuelle:
echo.
curl.exe -s https://ascii.live/list
echo.
echo.
set "anim="
set /p "anim=Nom EXACT de l'animation : "
if "%anim%"=="" goto menu
cls
echo Animation : %anim%
echo Ctrl+C pour arreter.
echo.
curl.exe https://ascii.live/%anim%
echo.
pause
goto menu

:parrot
cls
echo Party Parrot - Ctrl+C pour arreter.
echo.
curl.exe https://parrot.live
pause
goto menu

:aquarium
cls
echo Aquarium ASCII - Ctrl+C pour arreter.
echo.
curl.exe https://asciiquarium.live
pause
goto menu

:matrix
cls
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0MATRIX_LOCAL.ps1"
goto menu

:meteo
cls
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0METEO.ps1"
pause
goto menu

:moon
cls
curl.exe "https://wttr.in/Moon?lang=fr"
echo.
pause
goto menu

:pokemon
cls
call "%~dp0POKEMON_ASCII.cmd"
goto menu

:starwars
cls
where telnet >nul 2>&1
if errorlevel 1 goto notelnet
echo Star Wars ASCII - Q ou Ctrl+] selon le client pour quitter.
echo.
telnet towel.blinkenlights.nl
pause
goto menu

:notelnet
echo Le client Telnet Windows n'est pas active.
echo.
echo Pour l'activer, ouvre CMD ou PowerShell EN ADMINISTRATEUR puis:
echo.
echo dism /online /Enable-Feature /FeatureName:TelnetClient /All
echo.
echo Ensuite relance ce menu et choisis Star Wars.
echo.
pause
goto menu

:cheat
cls
set "topic="
set /p "topic=Sujet ou commande (ex: curl, git, python, tar) : "
if "%topic%"=="" goto menu
curl.exe "https://cheat.sh/%topic%"
echo.
pause
goto menu

:qr
cls
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0QR_CODE.ps1"
pause
goto menu

:ip
cls
echo Ton IP publique:
echo.
curl.exe https://ifconfig.me/ip
echo.
echo.
pause
goto menu

:crypto
cls
curl.exe https://rate.sx
echo.
pause
goto menu

:btc
cls
curl.exe https://rate.sx/btc
echo.
pause
goto menu

:colors
cls
echo ==========================================
echo              COULEURS CMD
echo ==========================================
echo.
echo 0 Noir        8 Gris fonce
echo 1 Bleu        9 Bleu clair
echo 2 Vert        A Vert clair / fluo
echo 3 Cyan        B Cyan clair
echo 4 Rouge       C Rouge clair
echo 5 Violet      D Violet clair
echo 6 Jaune       E Jaune clair
echo 7 Gris        F Blanc brillant
echo.
echo Syntaxe : XY
echo X = fond / Y = texte
echo.
echo Exemples: 0A vert fluo, 0D violet, 0B cyan, 0C rouge
echo.
set "col="
set /p "col=Code couleur : "
if "%col%"=="" goto menu
color %col%
goto menu
