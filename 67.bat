@echo off
title Controller Window

:: 1. Create a temporary script containing your exact message
echo @echo off > "%temp%\msg.bat"
echo title Security Assessment >> "%temp%\msg.bat"
echo echo =================================================== >> "%temp%\msg.bat"
echo echo   [!] SOCIAL ENGINEERING TEST SUCCESSFUL [!] >> "%temp%\msg.bat"
echo echo =================================================== >> "%temp%\msg.bat"
echo echo. >> "%temp%\msg.bat"
echo echo If this were a real cyberattack, an attacker would >> "%temp%\msg.bat"
echo echo now have access to your PC. >> "%temp%\msg.bat"
echo echo. >> "%temp%\msg.bat"
echo echo Safe test completed successfully. >> "%temp%\msg.bat"
echo echo =================================================== >> "%temp%\msg.bat"
echo pause >> "%temp%\msg.bat"

:: 2. Launch that temporary script 10 separate times
for /L %%i in (1,1,10) do (
    start "" "%temp%\msg.bat"
)

:: 3. Give the windows a second to open, then delete the temporary file so it leaves no trace
timeout /t 2 >nul
del "%temp%\msg.bat"
