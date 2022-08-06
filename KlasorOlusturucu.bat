@echo off
set /P "text=Enter a name: "

:PromptNumber
set /P "number=Enter a number: "
set /A N=number 2>nul
if %N% LSS  1 goto PrintError
if %N% GTR 99 goto PrintError

echo/
FOR /L %%I IN (1,1,%N%) DO  mkdir %text%_%%I 
echo/
pause
goto :EOF

:PrintError
echo/
echo Check your number which must be between 1 and 100.
echo/
goto PromptNumber