title a3l_depbo

@ECHO OFF
CLS

:START:
CLS
ECHO File Lib

ECHO 1.ArmA3Life.Server
ECHO 2.A3L_Common
ECHO 3.A3L_Donation
ECHO 4.A3L_Items
ECHO 5.A3L_Objects
ECHO.

CHOICE /C 12345 /M "Pick:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 5 GOTO SwitchUser
IF ERRORLEVEL 4 GOTO Logoff
IF ERRORLEVEL 3 GOTO CloseAllWindows
IF ERRORLEVEL 2 GOTO Shutdown
IF ERRORLEVEL 1 GOTO ArmA3Life.Server

:ArmA3Life.Server
ECHO Attempting to pack ArmA3Life.Server
PBOProject -P "P:\ArmA3Life.Server" +Engine=arma3 +Strip +Noisy +Clean +Mod="F:\Programs\Steam\steamapps\common\Arma 3 Server\@A3LServer"

Packed
GOTO START
:End