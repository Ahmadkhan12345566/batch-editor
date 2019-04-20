@echo off
:start
REM check if there are more then one argumnets
if not "%2" == "" (
echo Too many parameters entered 
goto exitt 
) ELSE (
REM check if argument one is empty
if not "%1" == "" (
goto echoname2
)
REM check if argument one is empty
if "%1"=="" (
ECHO Enter File Name Your want to edit
SET /P name=
goto echoname
) 
) 

:echoname
ECHO Your Name  is %name%
IF exist %name% (
copy %name% %name%.bck 
notepad %name% 
goto exitt ) ELSE (
echo "file not found"
goto exitt )


:echoname2
ECHO Your Name  is %1
IF exist %1 (
copy %1 %1.bck 
notepad %1 
goto exitt ) ELSE (
echo "file not found"
goto exitt )
:exitt
pause
