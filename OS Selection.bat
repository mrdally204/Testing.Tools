@set /a i = 1
:loop
@echo 1. Windows 10 32 & echo.2. Windows 10 64 & echo.3. Windows 8.1 32 & echo.4. Windows 8.1 64 & echo.5. Windows 7 32 & echo.6. Windows 7 64 & echo.7. Windows 7 64 Enterprise
@set /P OS="Enter the os you wish to reboot into: "
@IF %i%==3 GOTO END
@IF %OS%==1 ((
C:\Windows\system32\bcdedit /bootsequence {3bc99bd3-986f-11e5-bc18-f793bbbe0e9c} /addfirst
Shutdown /r /t 0 )
@IF %OS%==2 (
C:\Windows\system32\bcdedit /bootsequence {3bc99bd7-986f-11e5-bc18-f793bbbe0e9c} /addfirst
Shutdown /r /t 0 )
@IF %OS%==3 (
C:\Windows\system32\bcdedit /bootsequence {3bc99bcb-986f-11e5-bc18-f793bbbe0e9c} /addfirst
Shutdown /r /t 0 )
@IF %OS%==4 (
C:\Windows\system32\bcdedit /bootsequence {3bc99bcf-986f-11e5-bc18-f793bbbe0e9c} /addfirst
Shutdown /r /t 0 )
@IF %OS%==5 (
C:\Windows\system32\bcdedit /bootsequence {3bc99bc3-986f-11e5-bc18-f793bbbe0e9c} /addfirst
Shutdown /r /t 0 )
@IF %OS%==6 (
C:\Windows\system32\bcdedit /bootsequence {3bc99bc7-986f-11e5-bc18-f793bbbe0e9c} /addfirst
Shutdown /r /t 0 )
@IF %OS%==7 (
C:\Windows\system32\bcdedit /bootsequence {3bc99bdb-986f-11e5-bc18-f793bbbe0e9c} /addfirst
Shutdown /r /t 0 )) ELSE (
color 0C & echo.
@echo Please Try Again. & echo.) 
@set /a i=%i%+1
@GOTO LOOP

@:end
@set /a i=0
@echo Please follow directions a little better you filthy animal!
@Pause
