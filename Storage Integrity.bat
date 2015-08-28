:: David Brewer - 6-5-2013 
:: sourcedir is the directory that the files 
:: are being copied from
:: destinationdrive is the drive letter that the files
:: are copied to
:: iterations is the number of times the copy and delete actions
:: occur.


set /P sourcedir="Enter Source Directory (Example: C:\Folder Location\New): "
set /P destination="Set Destination Path (Example: E:\Test 2\New): "
set /P iterations="Enter number of loops: "
set /a i = 0
:loop
IF %i%==%iterations% GOTO END
echo This is iteration %i%
RMDIR /S /Q "%destination%"
md "%destination%"
xcopy /Y "%sourcedir%" "%destination%" /e /d
timeout /t 2
set /a i=%i%+1
GOTO LOOP

:end
set /a i=0
set /a iterations = 0

