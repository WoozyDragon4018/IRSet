@echo off
title IRSet Setup
echo Welcome to the Batch Setup file for IRSet made by WoozyDragon.
msg * CAUTION! YOU NEED OPENTTD FOR THIS. MAKE SURE YOU HAVE OPENTTD INSTALLED ON THE CORRECT FOLDER.
pause
cls
color 0f
echo.
echo From here on the process is automated. When an error is caused or if it needs input, setup will notify you.
echo.
echo =======================IRSET SETUP TERMINAL=======================
echo.
IF EXIST %USERPROFILE%\Documents\OpenTTD\newgrf\ (
    echo OPENTTD was found at %USERPROFILE%\Documents\OpenTTD\newgrf\
    echo INSTALL CONTINUING...
    echo WARNING: This installer will overwrite the existing file (if any) and take the existing file to another folder (if theres any).
    set /p startchoice=Continue? (Y/N):
    if %startchoice%==Y GOTO noovrwt
    if %startchoice%==N GOTO quit
) ELSE (
    echo Please install OpenTTD in the correct directory to continue.
)

:noovrwt
echo.
echo Making a backup directory for old IRset.
mkdir "%USERPROFILE%\Documents\OpenTTD\newgrf\irset.old"
xcopy "%USERPROFILE%\Documents\OpenTTD\newgrf\irset.grf" /Y "%USERPROFILE%\Documents\OpenTTD\newgrf\irset.old\"
echo Made a directory and copied the old IRSet to the folder. You can access it in %USERPROFILE%\Documents\OpenTTD\newgrf\irset.old\
pause
echo.
echo Copying the NEW file from the directory to the newgrf folder.
xcopy irset.grf /Y "%USERPROFILE%\Documents\OpenTTD\newgrf\"
pause
goto quit

:quit
cls
echo Thank you for installing IRSet!
echo.
echo Steps to enable IRSet and play it in OpenTTD!
echo.
echo STEP 1: Open NewGRF Settings in OpenTTD
echo.
echo STEP 2: Check if there's IRSET in the 2nd box
echo.
echo STEP 3: Select IRSET and click enable
echo.
echo STEP 4: Voila! Enjoy the game!
pause
exit