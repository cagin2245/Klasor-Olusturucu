@echo off
set /P "text=İsim giriniz: "

:PromptNumber
set /P "number=Kaç adet oluşturulsun: "
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
echo Numara 1-100 arasında olmalıdır.
echo/
goto PromptNumber