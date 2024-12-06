@echo off
goto beg

:: -----------------------------------------------------------

:beg
title RenWin v1.0.0
cd %userprofile%
echo RenWin by SkyKing_PX / v1.0.0
echo ------------------------------
goto askOp

:: -----------------------------------------------------------

:askOp
echo Type 'ren' for  rename / Type 'rev' to revert changes
set /P op = "Operation (ren / rev): "

:: Code

if "%op%" == "ren" (

    echo Operation: Rename Files
    set /P q="Are you sure you want to continue [Y/N]? "

    if /i "%q%" == "y" do (
        goto renFiles
    ) else (
        cls
        echo Ok
        goto beg
    )

) else if "%op%" == "rev" (

    echo Operation: Revert Changes
    set /P q="Are you sure you want to continue [Y/N]? "

    if /i ("%q%" == "y") do (
        goto revChanges
    ) else (
        cls
        echo Ok
        goto beg
    )

) else (

        echo Wrong Input. Try Again:
        goto askOp

    )
 )

:: -----------------------------------------------------------

:renFiles
::CLS
::ATTRIB +ah RenWin-Inf.txt

goto end

:: -----------------------------------------------------------

:revChanges
::CLS
::if exist RenWin-Inf.txt do (
::
::    :: Revert Changes
::
::
::    :: Delete Information File
::    ATTRIB -ah RenWin-Inf.txt
::    DEL RenWin-Inf.txt
::
::) else echo No Information File found - Nothing to revert. Exiting...

goto end

:: -----------------------------------------------------------

:end
pause