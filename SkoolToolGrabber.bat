@echo off
chcp 65001 >nul
color 5
goto intro


:intro
cls
echo.
echo.
echo                                 _________             ______ ______              
echo                                 __  ____/____________ ___  /____  /______________
echo                                 _  / __ __  ___/  __ `/_  __ \_  __ \  _ \_  ___/
echo                                 / /_/ / _  /   / /_/ /_  /_/ /  /_/ /  __/  /    
echo                                 \____/  /_/    \__,_/ /_.___//_.___/\___//_/     
echo.
echo.   
echo.
set /p VideoY/N= Would You Like A Video Tutorial On This Program (Yes Or No)? 
if /I "%VideoY/N%"=="yes" goto Video
if /I "%VideoY/N%"=="No" goto Wifi_name
if /I "%VideoY/N%"=="no" goto Wifi_name
if /I "%VideoY/N%"=="Yes" goto Video
if /I "%VideoY/N%"=="Debug" goto debugmenu
pause >nul
goto Wifi_name


:Wifi_name
cls
echo.
echo.
echo                                 _________             ______ ______              
echo                                 __  ____/____________ ___  /____  /______________
echo                                 _  / __ __  ___/  __ `/_  __ \_  __ \  _ \_  ___/
echo                                 / /_/ / _  /   / /_/ /_  /_/ /  /_/ /  __/  /    
echo                                 \____/  /_/    \__,_/ /_.___//_.___/\___//_/     
echo.
echo.   
echo.
netsh wlan show profile key=clear
set /p WifiName= What is the name of the wifi? Use any of the above!  
goto verify
pause >nul

:verify
set /p VerifyName= Is %WifiName% correct (Yes Or No)? 
if /I "%VerifyName%"=="yes" goto main
if /I "%VerifyName%"=="No" goto :Wifi_name
if /I "%VerifyName%"=="no" goto :Wifi_name
if /I "%VerifyName%"=="Yes" goto main
if /I "%VerifyName%"=="Debug" goto debugmenu
pause >nul
:main
cls
echo.
echo.
echo                                 _________             ______ ______              
echo                                 __  ____/____________ ___  /____  /______________
echo                                 _  / __ __  ___/  __ `/_  __ \_  __ \  _ \_  ___/
echo                                 / /_/ / _  /   / /_/ /_  /_/ /  /_/ /  __/  /    
echo                                 \____/  /_/    \__,_/ /_.___//_.___/\___//_/     
echo.
echo.   
echo A bunch of code will show up, you need to look for "Key Content" and there you will find the password
timeout /t 15 /nobreak >nul
netsh wlan show profile %WifiName% key=clear
timeout /t 10 /nobreak >nul    
cls
goto qrY/N

:qrY/N
cls
set /p qr= Do You Want To Make This Into A QR Code? 
if /I "%qr%"=="yes" goto QR
if /I "%qr%"=="No" goto :EXIT
if /I "%qr%"=="no" goto :EXIT
if /I "%qr%"=="Yes" goto QR
pause >nul


:QR
cls
echo In the network name section, put %WifiName%, and in the password area, put the password that you copied!
timeout /t 1 /nobreak >nul  
echo new page will open in 20
timeout /t 1 /nobreak >nul  
echo new page will open in 19
timeout /t 1 /nobreak >nul  
echo new page will open in 18
timeout /t 1 /nobreak >nul  
echo new page will open in 17
timeout /t 1 /nobreak >nul  
echo new page will open in 16
timeout /t 1 /nobreak >nul  
echo new page will open in 15
timeout /t 1 /nobreak >nul  
echo new page will open in 14
timeout /t 1 /nobreak >nul  
echo new page will open in 13
timeout /t 1 /nobreak >nul  
echo new page will open in 12
timeout /t 1 /nobreak >nul  
echo new page will open in 11
timeout /t 1 /nobreak >nul  
echo new page will open in 10
timeout /t 1 /nobreak >nul  
echo new page will open in 9
timeout /t 1 /nobreak >nul  
echo new page will open in 8
timeout /t 1 /nobreak >nul  
echo new page will open in 7
timeout /t 1 /nobreak >nul  
echo new page will open in 6
timeout /t 1 /nobreak >nul  
echo new page will open in 5
timeout /t 1 /nobreak >nul  
echo new page will open in 4
timeout /t 1 /nobreak >nul  
echo new page will open in 3
timeout /t 1 /nobreak >nul  
echo new page will open in 2
timeout /t 1 /nobreak >nul  
echo new page will open in 1
timeout /t 1 /nobreak >nul  
start "" https://www.qr-code-generator.com/solutions/wifi-qr-code/
goto EXIT
pause >nul

:debugmenu
cls
Echo.
Echo.
echo                      ▓█████▄ ▓█████  ▄▄▄▄    █    ██   ▄████     ███▄ ▄███▓▓█████  ███▄    █  █    ██ 
echo                      ▒██▀ ██▌▓█   ▀ ▓█████▄  ██  ▓██▒ ██▒ ▀█▒   ▓██▒▀█▀ ██▒▓█   ▀  ██ ▀█   █  ██  ▓██▒
echo                      ░██   █▌▒███   ▒██▒ ▄██▓██  ▒██░▒██░▄▄▄░   ▓██    ▓██░▒███   ▓██  ▀█ ██▒▓██  ▒██░
echo                      ░▓█▄   ▌▒▓█  ▄ ▒██░█▀  ▓▓█  ░██░░▓█  ██▓   ▒██    ▒██ ▒▓█  ▄ ▓██▒  ▐▌██▒▓▓█  ░██░
echo                      ░▒████▓ ░▒████▒░▓█  ▀█▓▒▒█████▓ ░▒▓███▀▒   ▒██▒   ░██▒░▒████▒▒██░   ▓██░▒▒█████▓ 
echo                       ▒▒▓  ▒ ░░ ▒░ ░░▒▓███▀▒░▒▓▒ ▒ ▒  ░▒   ▒    ░ ▒░   ░  ░░░ ▒░ ░░ ▒░   ▒ ▒ ░▒▓▒ ▒ ▒ 
echo                       ░ ▒  ▒  ░ ░  ░▒░▒   ░ ░░▒░ ░ ░   ░   ░    ░  ░      ░ ░ ░  ░░ ░░   ░ ▒░░░▒░ ░ ░ 
echo                       ░ ░  ░    ░    ░    ░  ░░░ ░ ░ ░ ░   ░    ░      ░      ░      ░   ░ ░  ░░░ ░ ░ 
echo                         ░       ░  ░ ░         ░           ░           ░      ░  ░         ░    ░     
echo                       ░                   ░                                                                                  
Echo.
Echo.
set /p Debug= Where do you want to go? 
if /I "%Debug%"=="WifiName" goto Wifi_name
if /I "%Debug%"=="exit" goto :EXIT
if /I "%Debug%"=="video" goto Video
if /I "%Debug%"=="main" goto main

pause >nul

:Video
timeout /t 1 /nobreak >nul  
cls
echo Coming Soon.
timeout /t 1 /nobreak >nul  
cls
echo Coming Soon..
timeout /t 1 /nobreak >nul  
cls
echo Coming Soon...
timeout /t 1 /nobreak >nul  
cls
echo Coming Soon.
timeout /t 1 /nobreak >nul  
cls
echo Coming Soon..
timeout /t 1 /nobreak >nul  
cls
echo Coming Soon...
timeout /t 1 /nobreak >nul  
cls
echo Coming Soon.
goto Wifi_name
pause >nul


:EXIT
timeout /t 1 /nobreak >nul  
cls
echo Closing In 5
timeout /t 1 /nobreak >nul  
cls
echo Closing In 4
timeout /t 1 /nobreak >nul  
cls
echo Closing In 3
timeout /t 1 /nobreak >nul  
cls
echo Closing In 2
timeout /t 1 /nobreak >nul 
cls 
echo Closing In 1
timeout /t 1 /nobreak >nul 
cls 
echo Closing...
timeout /t 2 /nobreak >nul 
exit


