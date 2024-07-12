@echo off

echo Hello User, Welcome to the Utility program

:menu
cls
echo Choose a utility to run:
echo 1. ipconfig
echo 2. tasklist
echo 3. taskkill
echo 4. chkdsk
echo 5. format
echo 6. defrag
echo 7. find
echo 8. attrib
echo 9. Exit program
set /p choice=Enter your choice:

if %choice%==1 (
    ipconfig
    goto end
)
if %choice%==2 (
    tasklist
    goto end
)
if %choice%==3 (
    set /p pid=Enter the PID of the process to kill:
    taskkill /PID %pid%
    goto end
)
if %choice%==4 (
    set /p drive=Enter the drive letter to check (e.g., C:):
    chkdsk %drive%
    goto end
)
if %choice%==5 (
    set /p drive=Enter the drive letter to format (e.g., D:):
    format %drive%
    goto end
)
if %choice%==6 (
    set /p drive=Enter the drive letter to defrag (e.g., C:):
    defrag %drive%
    goto end
)
if %choice%==7 (
    set /p text=Enter the text to find:
    set /p filename=Enter the filename to search within:
    find "%text%" %filename%
    goto end
)
if %choice%==8 (
    set /p filename=Enter the filename to change attributes:
    set /p attributes=Enter the attributes to set (e.g., +r, -h):
    attrib %attributes% %filename%
    goto end
)
if %choice%==9 (
    echo Ending program...
    exit
)

:end
pause
goto menu