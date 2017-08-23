title a3l_server_backpack - dropbox

@echo off & for /F "tokens=1-4 delims=/ " %%A in ('date/t') do (
set DateDay=%%A
set DateMonth=%%B
set DateYear=%%C
)

@echo off & for /F "tokens=1-4 delims=/ " %%D in ('time/t') do (
set DateTime=%%D
)

set CurrentDate=%DateDay%-%DateMonth%-%DateYear%-%time:~0,2%.%time:~3,2%

md "P:\Dropbox\Heisen\Archive\%CurrentDate%"

PBOProject -P "P:\ArmA3Life.Server" +Engine=arma3 +Strip +Noisy +Clean +Mod="P:\Dropbox\Heisen\Archive\%CurrentDate%"

START "Dropbox"  "C:\Program Files (x86)\Dropbox\Client\Dropbox.exe"

:END:
