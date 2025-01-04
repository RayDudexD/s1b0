@echo off
echo Thank you for downloading EZ Win 11!
echo     SSSSSSSSSSSSSSS       1111111   BBBBBBBBBBBBBBBBB   OOOOOOOOO     
echo   SS:::::::::::::::S     1::::::1   B::::::::::::::::B OO:::::::::OO   
echo  S:::::SSSSSS::::::S    1:::::::1   B::::::BBBBBB:::::BO:::::::OOO::::O  
echo  S:::::S     SSSSSSS    111:::::1   BB:::::B     B:::::BO::::::O   O::::O 
echo  S:::::S                   1::::1     B::::B     B:::::BO:::::O     O::::O
echo  S:::::S                   1::::1     B::::B     B:::::BO:::::O     O::::O
echo   S::::SSSS                1::::l     B::::BBBBBB:::::B O:::::O     O::::O
echo    SS::::::SSSSS           1::::l     B:::::::::::::BB  O:::::O     O::::O
echo      SSS::::::::SS         1::::l     B::::BBBBBB:::::B O:::::O     O::::O
echo         SSSSSS::::S        1::::l     B::::B     B:::::BO:::::O     O::::O
echo              S:::::S       1::::l     B::::B     B:::::BO:::::O     O::::O
echo              S:::::S       1::::l     B::::B     B:::::BO::::::O   O:::::O
echo  SSSSSSS     S:::::S    111::::::111BB:::::BBBBBB::::::BO:::::::OOO:::::::O
echo  S::::::SSSSSS:::::S    1::::::::::1B:::::::::::::::::B OO:::::::::::::OO 
echo  S:::::::::::::::SS     1::::::::::1B::::::::::::::::B    OO:::::::::OO   
echo   SSSSSSSSSSSSSSS       111111111111BBBBBBBBBBBBBBBBBB       OOOOOOOOO      
pause
goto :mainmenu

:mainmenu
cls
echo Welcome to s1b0!
echo --------------------------
echo 1) Go to the CMD section.
echo 2) Go to the fun stuff section.
echo 3) Go to the settings section.
echo 4) Go to the Easter eggs section.
echo 5) Go to the about s1b0 section.
echo 6) Exit.
echo --------------------------
choice /c 123456 /n /m "Choose your number: "
if errorlevel 6 goto :exit
if errorlevel 5 goto :about
if errorlevel 4 goto :secret
if errorlevel 3 goto :settings
if errorlevel 2 goto :funstuff
if errorlevel 1 goto :CMD

:secret
cls
echo Look in the source code, specifically in the ':secret' section, to find the passwords.
set /p "pass=Enter a password...: "
set "correctPassword=kencarson2025realinhindi"
set "turskueasteregg=goodbro2025"
set "cttpass=besttoolwin11"

if "%pass%"=="%correctPassword%" (
    echo Access granted.
    goto :easteregg
) else (
    if "%pass%"=="%turskueasteregg%" (
        echo Another easter egg?
        goto :tursku
    ) else (
        if "%pass%"=="%cttpass%" (
            echo Another one?
            goto :ctteg
        ) else (
            echo Incorrect password.
            goto :mainmenu
        )
    )
)



:settings
cls
echo This section is not finished yet!
goto :mainmenu

:IPPrem
echo Getting IP address...
for /f "delims=" %%A in ('curl -s ifconfig.me') do set "IP_ADDRESS=%%A"
echo Your IP address is %IP_ADDRESS%
pause
timeout /t 2 >nul
goto :CMD

:about
cls
echo -------------------------------------------------------------------------------
echo s1b0 - The definitive edition of sIbO.
echo -------------------------------------------------------------------------------
echo Made by RayDud3ze.
echo -------------------------------------------------------------------------------
pause
timeout /t 2 >nul
goto :mainmenu

:CMD
cls
echo 1) See your own IP Address.
echo 2) Curl.
echo 3) Ping.
echo 4) Disable Task Manager.
echo 5) Enable Task Manager.
echo 6) Go back.
choice /c 123456 /n /m "Choose your number: "
if errorlevel 6 goto :mainmenu
if errorlevel 5 goto :ETM
if errorlevel 4 goto :DTM
if errorlevel 3 goto :Ping
if errorlevel 2 goto :Curl
if errorlevel 1 goto :IPPrem

:DTM
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f
echo Task Manager is now disabled.
pause
timeout /t 2 >nul
goto :CMD

:ETM
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 0 /f
echo Task Manager is now enabled.
pause
timeout /t 2 >nul
goto :CMD

:Curl
cls
set /p "url=Enter the URL for the HTTP request: "
curl %url%
pause
timeout /t 2 >nul
goto :CMD

:Ping
cls
set /p "host=Enter the address to ping: "
ping -n 4 %host%
pause
timeout /t 2 >nul
goto :CMD

:funstuff
cls
echo Welcome to the Fun Stuff section!
echo 1) QR Generator.
echo 2) Generate PaySafeCard-like code.
echo 3) Force a Bluescreen.
echo 4) Beep sound.
echo 5) s1b0 Quiz.
echo 6) ASCII art generator.
echo 7) Random Jokes.
echo 8) Go back.
choice /c 12345678 /n /m "Choose your number: "
if errorlevel 8 goto :mainmenu
if errorlevel 7 goto :joke
if errorlevel 6 goto :ascii_art
if errorlevel 5 goto :quiz
if errorlevel 4 goto :beeep
if errorlevel 3 goto :bluescreen
if errorlevel 2 goto :paysafecode
if errorlevel 1 goto :qrgenerator

:joke
setlocal enabledelayedexpansion
set /a "rand=%random% %% 3"
if !rand!==0 echo Why did the computer go to therapy? It had too many bytes!
if !rand!==1 echo What's a computer's favorite snack? Microchips!
if !rand!==2 echo Why did the programmer quit his job? Because he didn't get arrays!
endlocal
pause
goto :funstuff



:quiz
@echo off
echo Welcome to the s1b0 Quiz!
set /a score=0
echo.

echo Question 1: When was the first version of s1b0 released?
choice /c AB /m "A) 2023 B) 2022"
if errorlevel 1 set /a score+=1
echo.

echo Question 2: What does CMD stand for?
choice /c AB /m "A) Command B) Common Driver"
if errorlevel 1 set /a score+=1
echo.

echo Question 3: Who is the developer of s1b0?
choice /c AB /m "A) OpenAI B) RayDude"
if errorlevel 2 set /a score+=1
echo.

echo Your final score: %score% point(s)!
pause
goto :funstuff


:ascii_art
echo Welcome to the ASCII Art Generator!
set /p "art_text=Enter the text you want in ASCII Art: "
echo.
echo %art_text% in ASCII Art!
echo _______________________________________
echo /  %art_text%
echo \_______________________________________
echo.

pause
goto :funstuff



:qrgenerator
cls
echo The page to which the QR code should refer:
set /p page="Enter URL for the QR code: "

curl "https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=%page%" -o "%USERPROFILE%\Desktop\QRCode.png"

echo QR code has been generated and saved on your desktop as 'QRCode.png'.
pause
timeout /t 2 >nul
goto :funstuff

:paysafecode
cls
setlocal enabledelayedexpansion
set "code="
for /l %%i in (1,1,16) do (
    set /a "digit=!random! %% 10"
    set "code=!code!!digit!"
)
echo Generated Paysafecard-like Code: %code%
endlocal
pause
timeout /t 2 >nul
goto :funstuff

:bluescreen
cls
echo Are you sure you want to continue? This will cause a crash!
pause
goto :crash

:crash
taskkill /f /im svchost.exe

:beeep
powershell [console]::beep(1000, 1000)
goto :funstuff

:easteregg
cls
start "" https://www.youtube.com/watch?v=xvFZjo5PgG0&pp=ygUmbmV2ZXIgZ29uYW4gZ2l2ZSB5b3UgdXAgZGlmZmVyZW50IGxpbms%3D
goto :mainmenu

:tursku
cls
echo Thank you Tursku for being an amazing friend!
pause
goto :watchtursku

:watchtursku
start "" https://www.youtube.com/watch?v=C4VMVBHiz58
goto :mainmenu


:ctteg
echo    CCCCCCCCCCCCCTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo CCC::::::::::::CT:::::::::::::::::::::TT:::::::::::::::::::::T
echo CC:::::::::::::::CT:::::::::::::::::::::TT:::::::::::::::::::::T
echo C:::::CCCCCCCC::::CT:::::TT:::::::TT:::::TT:::::TT:::::::TT:::::T
echo C:::::C       CCCCCCTTTTTT  T:::::T  TTTTTTTTTTTT  T:::::T  TTTTTT
echo C:::::C                     T:::::T                T:::::T
echo C:::::C                     T:::::T                T:::::T
echo C:::::C                     T:::::T                T:::::T
echo C:::::C                     T:::::T                T:::::T
echo C:::::C                     T:::::T                T:::::T
echo C:::::C                     T:::::T                T:::::T
echo C:::::C       CCCCCC        T:::::T                T:::::T
echo C:::::CCCCCCCC::::C      TT:::::::TT            TT:::::::TT
echo CC:::::::::::::::C       T:::::::::T            T:::::::::T
echo CCC::::::::::::C         T:::::::::T            T:::::::::T
echo  CCCCCCCCCCCCC          TTTTTTTTTTT            TTTTTTTTTTT
echo Use the amazing CTT tool on your Windows 11 PC/Laptop!
pause
goto :mainmenu