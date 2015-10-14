@ECHO OFF
@ECHO.
@ECHO Deleting Test Data
@ECHO.
@ECHO %~dp0
RD /S /Q %TEMP%\ttpa
del %~dp0TritonLauncher.app\Contents\Resources\Java\*.db /s /q
del %~dp0TritonLauncher.app\Contents\Resources\Java\*.backup.zip /s /q
copy %~dp0*.db %~dp0TritonLauncher.app\Contents\Resources\Java /y
MD %TEMP%\ttpa\
copy %~dp0*.db %TEMP%\ttpa\
cd %~dp0TritonLauncher.app\Contents\Resources\Java
call RunTritonProctor.bat