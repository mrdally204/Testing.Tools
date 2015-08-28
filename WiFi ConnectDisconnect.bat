set /P APname="Enter the exact name of the access point you wish to connect to: "
set /P iterations="Enter number of loops: "
set /a i = 0
:loop
IF %i%==%iterations% GOTO END
netsh wlan connect name=%APname%
IF %i%==0 (
timeout /t 15
) else (
timeout /t 7)
netsh wlan disconnect
timeout /t 2
set /a i=%i%+1
set /a left="%iterations%-%i%"
cls
echo Iteration %i% completed. This process will repeat %left% more times and then close!
GOTO LOOP
:end
set /a i=0