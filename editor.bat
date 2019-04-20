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
ECHO What File Do You Wish to Edit?
SET /P name=
goto echoname
) 
) 

:echoname
IF exist %name% (
echo Creating a backup file of %name%
copy %name% %name%.bck 
notepad %name% 
echo "Editing :" %name%
goto exitt ) ELSE (
echo "file does not exists."
echo Editing :" %name%
goto exitt )


:echoname2
echo got the file name: %1
IF exist %1 (
echo Creating a backup file of %1
copy %1 %1.bck 
notepad %1 
echo "Editing :" %1
goto exitt ) ELSE (
echo "file does not exists."
echo Editing :" %1
goto exitt )
:exitt
