@ECHO OFF

mode 150,30

TITLE Client Launcher // TextGame
cls
set LauncherDirectory=%cd%
set corporateRootDirectory="%appdata%/"NXT Studios""
set clientInstalledVersion=1.5
set serviceIsTextGameRunning=true
set serviceIsTextGameResponding=true
set serviceTextGameSpecialIDHandler=83123895723857237623785462376846523685685646532674523845679653276523
set serviceTextGameSpecialIDThrottler=ADSHBFASIBETBKETBEABIKFDTEETBABTAEABFDSBKFASGAFIGFAIGATEIGAETRBRAEB

REM // NXT SYSTEM GLOBAL VARIABLES

REM // VARIABLE CLEARANCE

set username=
set password=

REM // CORE SERVICES // UPDATES

set updateClientDir=%appdata%/"NXT Studios"/library/client
set updateGameDir=%appdata%/"NXT Studios"/library/game
set defaultTransferFile=%appdata%/"NXT Studios"/library/client/dl

set dot=.

:CHECKLIST
CD /D %LauncherDirectory%
PUSHD %appdata%
IF NOT EXIST "NXT Studios" goto CREATE
PUSHD "NXT Studios"
IF NOT EXIST server goto CREATE
IF NOT EXIST library goto CREATE
PUSHD library
IF NOT EXIST client goto CREATE
IF NOT EXIST game goto CREATE
PUSHD client
IF NOT EXIST dl goto CREATE
goto CHECKLIST2

:CHECKLIST2
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD library
PUSHD client
IF NOT EXIST installerIdentifier.bat goto FIRSTTIME1
IF NOT EXIST serviceDownloadClient.bat goto FIRSTTIME1
CD /D %LauncherDirectory%
IF NOT EXIST data goto ANIMATE
PUSHD data
IF NOT EXIST services goto ANIMATE
PUSHD services
IF NOT EXIST version.bat goto ANIMATE
CALL version.bat
CD /D %LauncherDirectory%
goto ANIMATE

:FIRSTTIME1
TITLE Server Selection // TextGame
CLS
echo This is your first time running the client. Please select a NXT Server that is ideal for your location.
echo.
echo   1 // Oceanic - 1 %serverStatus1%
echo.
echo   2 // Oceanic - 2  %serverStatus2%
echo.
echo   3 // North America %serverStatus3%
echo.
echo   4 // Asia %serverStatus4%
echo.
echo   5 // Europe %serverStatus5%
echo.
echo.
set /p "serversel=> "
IF %serversel%==1 goto SERVERDIS
IF %serversel%==2 goto SERVER2
IF %serversel%==3 goto SERVERDIS
IF %serversel%==4 goto SERVERDIS
IF %serversel%==5 goto SERVERDIS
goto FIRSTTIME1

:SERVER2
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD library
PUSHD client
cls
echo Connecting to NXT Studio's Oceanic 2 server...
echo.
echo (display statistical informaton)
echo (if statement has internet connection via google.com.au)
echo.
echo installer.Identifier.Class.Handler(NoException_OpenNAT) > installerIdentifier.bat
echo set hostServer=OCEANIC2 > hostName.bat
(
echo CD /D %%defaultTransferFile%%
echo cls
echo bitsadmin.exe /transfer UpdateJob "%%DLLink%%" "%%appdata%%\NXT Studios\library\client\dl\%file%"
) > serviceDownloadClient.bat
goto ANIMATE

:SERVERDIS
cls
echo.
echo.
echo Sorry, but this server is unavailable at this time! Please try again later or select an available server that is nearby.
echo.
echo.
TIMEOUT 3 /NOBREAK >NUL
goto FIRSTTIME1

:CREATE
CD /D %LauncherDirectory%
PUSHD %appdata%
MD "NXT Studios"
PUSHD "NXT Studios"
MD server
MD library
PUSHD library
MD client
MD game
PUSHD game
MD dlc
MD packs
MD configuration
MD services
MD worldConfig
MD pluginConfig
MD monoLibrary
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD library
PUSHD client
MD dl
goto CHECKLIST

:ANIMATE
set clockUpdateClient=0
set UclockUpdateClient=0
CD /D %LauncherDirectory%
echo.
echo.
echo                   N
PING 1.1.1.1 -n 3 15000 >NUL
cls
echo.
echo.
echo                   NX
PING 1.1.1.1 -n 3 15000 >NUL
cls
echo.
echo.
echo                   NXT
PING 1.1.1.1 -n 3 15000 >NUL
cls
echo.
echo.
echo                   NXT S
PING 1.1.1.1 -n 3 15000 >NUL
cls
echo.
echo.
echo                   NXT St
PING 1.1.1.1 -n 3 15000 >NUL
cls
echo.
echo.
echo                   NXT Stu
PING 1.1.1.1 -n 3 15000 >NUL
cls
echo.
echo.
echo                   NXT Stud
PING 1.1.1.1 -n 3 15000 >NUL
cls
echo.
echo.
echo                   NXT Studi
PING 1.1.1.1 -n 3 15000 >NUL
cls
echo.
echo.
echo                   NXT Studio
PING 1.1.1.1 -n 3 15000 >NUL
cls
echo.
echo.
echo                   NXT Studios
PING 1.1.1.1 -n 3 15000 >NUL
cls
:SPLASHPAGE
TITLE Main Menu // Client
cls
echo.
echo.
echo                   NXT Studios
echo.
echo.
echo           [1] Launch the Application.
echo.
echo                   [2] Check for any updates.
echo.
echo                             [3] Exit to Desktop.
echo.
echo.
set /p "cho=> "
IF "%cho%"=="1" goto LAUNCH
IF "%cho%"=="2" goto UPDATE
IF "%cho%"=="3" EXIT
IF "%cho%"=="info" goto INFO
IF "%cho%"=="about" goto INFO
IF "%cho%"=="reboot" goto CHECKLIST
goto SPLASHPAGE

:INFO
echo.
echo.
echo The client version is: %clientInstalledVersion%
echo.
echo.
TIMEOUT 2 /NOBREAK >NUL
goto SPLASHPAGE

:UPDATE
CD /D %LauncherDirectory%
PUSHD %corporateRootDirectory%
PUSHD library
PUSHD client
PUSHD dl
DEL /Q *

CD /D %LauncherDirectory%
PUSHD %corporateRootDirectory%
PUSHD library
PUSHD client

REM // Update Version Variables
set File=latestClientStable.bat
set DLLink=https://raw.githubusercontent.com/RediPanda/rediipanda.github.io/master/Services/latestClientVersion/latestClientStable.bat
START /min serviceDownloadClient.bat
CLS

TIMEOUT 1 /NOBREAK >NUL
set File=latestGameStable.bat
set DLLink=https://raw.githubusercontent.com/RediPanda/rediipanda.github.io/master/Services/latestGameVersion/latestGameStable.bat
START /min serviceDownloadClient.bat
CLS

:UPDATELOOPHOLDER
cls
echo.
echo.
echo Establishing a connection to a host server [.  ]
echo.
TIMEOUT 1 /NOBREAK >NUL

cls
echo.
echo.
echo Establishing a connection to a host server [.. ]
echo.
TIMEOUT 1 /NOBREAK >NUL

cls
echo.
echo.
echo Establishing a connection to a host server [...]
echo.
TIMEOUT 1 /NOBREAK >NUL
IF "%UclockUpdateClient%"=="2" goto UPDATESELECTOR
set /a UclockUpdateClient="%UclockUpdateClient%" + "1"
goto UPDATELOOPHOLDER

:UPDATESELECTOR
CD /D %defaultTransferFile%
set clockUpdateClient=0
set UclockUpdateClient=0
set latestStable=N/A
set latestGameStable=N/A
CALL latestClientStable.bat
CALL latestGameStable.bat
CLS
echo.
echo            Updater Service
echo.
echo.   1] Update the Client Application [Current: %clientInstalledVersion% -- Latest: %latestClientStable%]
echo.
echo    2] Update the Game Application [Current: %applicationVersion% -- Latest: %latestStable%]
echo.
echo    3] Exit the Updater Service
echo.
echo.
echo  * If the Game Application Current Version is empty, it usually means the Game hasn't been properly
echo    set-up or done it's first stage initialization. It's best to start the game first before updating.
echo.
echo  ** If for the first time it pops up with N/A, try opening the Updator service to refresh the fetched data.
echo     If it continues to fetch N/A, check the status website at https://exana.io/s/7l8979okutloe67t/public.
echo.
echo.
set /p "updatorsel=> "
IF %updatorsel%==1 goto UPDATECLIENT1
IF %updatorsel%==2 goto UPDATEGAME1
IF %updatorsel%==3 goto ANIMATE
goto UPDATESELECTOR

:UPDATECLIENT1
cls
echo.
echo.
echo    [NXT Studio Client Manager]  Waiting for a response from the update server [.  ]
echo.
PING 1.1.1.1 -n 3 15000 >NUL

cls
echo.
echo.
echo    [NXT Studio Client Manager]  Waiting for a response from the update server [.. ]
echo.
PING 1.1.1.1 -n 3 15000 >NUL

cls
echo.
echo.
echo    [NXT Studio Client Manager]  Waiting for a response from the update server [...]
echo.
PING 1.1.1.1 -n 3 15000 >NUL

IF "%clockUpdateClient%"=="28" goto UPDATESERVICECLIENT
set /a clockUpdateClient="%clockUpdateClient%" + "1"
goto UPDATECLIENT1

:UPDATEGAME1
cls
echo.
echo.
echo    [NXT Studio Client Manager]  Waiting for a response from the update server [.  ]
echo.
PING 1.1.1.1 -n 3 15000 >NUL

cls
echo.
echo.
echo    [NXT Studio Client Manager]  Waiting for a response from the update server [.. ]
echo.
PING 1.1.1.1 -n 3 15000 >NUL

cls
echo.
echo.
echo    [NXT Studio Client Manager]  Waiting for a response from the update server [...]
echo.
PING 1.1.1.1 -n 3 15000 >NUL

IF "%clockUpdateClient%"=="28" goto UPDATESERVICEGAME
set /a clockUpdateClient="%clockUpdateClient%" + "1"
goto UPDATEGAME1

:LAUNCH
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD library
PUSHD game
IF EXIST launcher.bat goto LAUNCHCLIENT
goto INSTALL

:LAUNCHCLIENT
echo.
echo Starting Game Client...
START launcher.bat
goto SPLASHPAGE

:INSTALL
TITLE Installer // NXT Studios
CLS
echo.
echo The client failed to detect a launcher. Do you want to reinstall the latest stable version?
echo.
echo [Y/N]
echo.
echo.
set /p "option=> "
IF %option%==Y goto ACCEPT1
IF %option%==y goto ACCEPT1
IF %option%==N goto ANIMATE
IF %option%==n goto ANIMATE
goto INSTALL

:ACCEPT1
echo %cd%
goto ACCEPT

:ACCEPT
CD /D %updateGameDir%
DEL /Q "Launcher.bat"
SET "FILELOCATION=%updateGameDir%/Launcher.bat"
cls
bitsadmin.exe /transfer "Update Service" "https://raw.githubusercontent.com/RediPanda/rediipanda.github.io/master/Updates/latest/Launcher.bat" %FILELOCATION%
PAUSE
goto CHECKLIST
