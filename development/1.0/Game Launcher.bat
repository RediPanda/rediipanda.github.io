:START
set GameLauncherDirectory=%cd%
MODE 215,80
@ECHO OFF
TITLE Loading...
:REDIRECTION
REM // REDIRECTING TO THE VARIABLES TAB
REM // Default value is VARIABLE
goto VARIABLE

REM //////////////////////////////////////////////////////////////////////////////////////////////////////////
REM LOCATIONS:
REM 
REM Greenvale:
REM lastLocationID: GREENVALE
REM Locations: GREENVALE, GREENVALE-STORE, GREENVALE-FIELDS, GREENVALE-HOSPITAL, GREENVALE-EXITGATE
REM Comments: Beginners town, Level 1-5.
REM
REM Fiddle's Docks
REM lastLocationID: FIDDLESDOCK
REM Locations: FIDDLESDOCK, FIDDLESDOCK-DOCKS, FIDDLESDOCKS-HOSPITAL, FIDDLESDOCK-FARM, FIDDLESDOCK-EXITGATE, FIDDLESDOCK-ENTRANCE
REM Comments: Novice town, Level 1-8.
REM
REM Kindle Town:
REM lastLocationID: KINDLETOWN
REM Locations: KINDLETOWN, KINDLETOWN-STORE, KINDLETOWN-HOSPITAL, KINDLETOWN-FOREST, KINDLETOWN-FIELDS, KINDLETOWN-ENTRANCE, KINDLETOWN-EXITGATE
REM Comments: Novice town, Level 5-10.
REM //////////////////////////////////////////////////////////////////////////////////////////////////////////

:RESTARTAPP
cls
TITLE Rebooting // %applicationName%
echo Rebooting application...
TIMEOUT 5 /NOBREAK >NUL
goto START

:EVENTREDIRECTION
TITLE Event // %applicationName%
CLS
REM // Default value if theres no event - NOEVENT
REM // Default value if there is a event - EVENT
set eventValue=EVENT
goto %eventValue%

:EXITTOLAUNCHERAPP
CLS
TITLE Returning to launcher // %applicationName%
goto  IMAINMENU

:VARIABLE
POPD
PUSHD data
PUSHD services
CALL version.bat
POPD
set applicationName=Text Game
set applicationAuthor=NXT Studios
set applicationUpdater=
set userDataLocation=%appdata%/NXT Studios/savedData/userData/
set applicationLauncherVersion=0.2
set applicationUpdate=
set applicationLauncherArchitecture=x64
set applicationLauncherAuthor=NXT Studios
set graphicSystem=false
set graphicInterface=false
set settingsMenu=MMSETTINGS
set aboutMenu=MMABOUT
set licenseMenu=ILICENSE
set licenseFile=license.txt
set configDir=data/config
set configFile=configuration.bat
set /A fps = %random%%random% / 15000000
set /A Result = 12 + 4
set /A fps2=%random% %%100 +1
set debug=false
set allocatedDebugLevel=4
set allocatedAdminDebugLevel=DEBUG-S008
set SSLauncher=messageAdmin()
set debugState=Enable
set soundState=Disable
set graphicState=Enable

REM // SERVER IDENTITY
set serverName1=AU003
set serverName2=AU072
set serverName3=EU003
set serverName4=EU042
set serverName5=US067
set serverName6=US001

REM // AVAILABILIY OF SERVICES
set multiplayerService=offline
set storeService=offline

REM // THIRD PARTY VARIBLES
set loadedVar=LOADED   ]
set disVar=DISABLED ]

set repository=cdn-5.nxt.com/repository/%random%%random%%random%%random%
set appDev=RediPanda
set appTeam=DRCronium Dev

REM // Plugin Installed DisplayPort 1-6
set plugin1=NONE
set plugin2=NONE
set plugin3=NONE
set plugin4=NONE
set plugin5=NONE
set plugin6=NONE

REM // STATUS BAR INDICATORS

set updaterStatus=%loadedVar%
set workshopStatus=%disVar%
set auraStatus=%loadedVar%
set shaderStatus=%loadedVar%
set varStatus=%disVar%
set internetStatus=%loadedVar%
set preloaderStatus=%disVar%
set mmserverStatus=%disVar%
set drcroniumStatus=%loadedVar%


set ATCT1=Easy Anti-cheat
set ATCT2=Battleye Cheat
set ATCT3=DRCronium Nexus Cheat
CLS
goto CHECKLIST

:DEBUGVAR
set debugline1=Directory: %CD%
set debugline2=FPS: !fps!

:CREATE
CLS
TITLE Installation // %applicationName%
echo.
echo.
echo Installing basic files...
echo.
echo Once the application closes, please start it again to finish reloading new installation files!
echo.
TIMEOUT 5 /NOBREAK >NUL
POPD
POPD
MD data
PUSHD data
MD config
MD controller
MD _Distribution
PUSHD _Distribution
(
  echo [LICENSE]
  echo Distributions of this software to any third party is illegal.
) > license.txt
POPD
PUSHD data
MD update
PUSHD config
echo set id=239542289318745164517661485119292356978222100021815192116140 >> lib.bat
POPD
PUSHD data
PUSHD update
goto END

:CHECKLIST
POPD
if NOT EXIST data goto CREATE
PUSHD data
if NOT EXIST config goto CREATE
PUSHD config
CALL lib.bat
PING 1.1.1.1 -n 1 -w 2500 >NUL
if %id%==239542289318745164517661485119292356978222100021815192116140 goto INTRODUCTION
goto ERRORLVL1

:ERRORLVL1
cls
echo It seems like the application files are missing or corrupted. Please delete the data file and run the installation again!
TIMEOUT /T 120
EXIT

:ERRORLVL2
cls
echo The game is already running in a different instance! Please close this instance to play the application.
TIMEOUT /T 120
EXIT

:INTRODUCTION
TITLE Introduction // %applicationName%

:INFORMATIONREADER
POPD
PUSHD data
PUSHD services
CALL version.bat
POPD

REM // ADD IN EFFECTS AFTER THE ALPHA VERSION
:IMAINMENU
POPD
TITLE Launcher // %applicationName%
POPD
cls
echo ==================================
echo =        Text Game               =
echo ==================================
echo =                                =
echo =    1] Launch Client            =
echo =                                =
echo =    2] About                    =
echo =                                =
echo =    3] License                  =
echo =                                =
echo =    4] Quit                     =
echo =                                =
echo ==================================
set /p "cho=> "
IF %cho%==1 goto LAUNCHERTOCLIENT
IF %cho%==2 goto IABOUT
IF %cho%==3 goto ILICENSE
IF %cho%==4 EXIT
IF %cho%==event.EasterEgg goto EVENTREDIRECTION
IF %cho%==%SSLauncher% goto IMAINMENUECHO
IF %cho%==fastLoad goto CLIENTMAINMENULOGIN
IF %cho%==applicationReboot goto RESTARTAPP
echo.
echo Incorrect option!
PING 1.1.1.1 -n 1 -w 4500 >NUL
goto IMAINMENU

:SAIT
PUSHD %appdata%
MD "NXT Studios"
PUSHD "NXT Studios"
MD savedData
goto IMAINMENU

:IMAINMENUECHO
cls
echo.
echo --- [CONSOLE] --- // UNSECURE EDITION
echo.
echo To [EXIT] this page, enter the input 'exit', 'Exit' or 'EXIT'
echo Enter your input:
echo.
set /p "messageAdmin=> "
IF %messageAdmin%==exit goto IMAINMENU
IF %messageAdmin%==Exit goto IMAINMENU
IF %messageAdmin%==EXIT goto IMAINMENU
echo.
echo Executing input: %messageAdmin%
echo.
%messageAdmin%
PAUSE
goto IMAINMENUECHO

:ILICENSE
POPD
PUSHD data
PUSHD _Distribution
start Notepad "license.txt"
goto IMAINMENU

:IABOUT
POPD
POPD
PUSHD data
PUSHD asset
PUSHD plugins
CALL plugin-list.bat
POPD
POPD
PUSHD data
PUSHD services
CALL version.bat
POPD
CLS
echo ========================================================
echo.
echo Application: %appName%
echo.
echo API Loaded:
echo.
echo Updater API           - [ %loadedVar%
echo Workshop API          - [ %disVar%
echo Aura API              - [ %auraStatus%
echo Shader API            - [ %shaderStatus%
echo Var API               - [ %varStatus%
echo Internet API          - [ %internetStatus%
echo Preloader API         - [ %preloaderStatus%
echo MM Server API         - [ %mmserverStatus%
echo DRCronium API         - [ %drcroniumStatus%
echo.
echo.
echo.
echo.
echo Plugins Installed:
echo.
echo %plugin1%
echo %plugin2%
echo %plugin3%
echo %plugin4%
echo %plugin5%
echo %plugin6%
echo.
echo.
echo.
echo App Developer: %appDev%
echo.
echo App : %appTeam%
echo.
echo.
echo Version: %applicationVersion%
echo.
echo.
echo DRCronium Dev Team
echo.
echo.
echo Anti-Cheat Protection protected by:
echo.
echo.
echo   %ATCT1% , %ATCT2% , %ATCT3%
echo.
echo.
echo ========================================================
PAUSE
goto IMAINMENU

:LAUNCHERTOCLIENT
POPD
echo.
echo.
echo Launching Game...
PING 1.1.1.1 -n 1 -w 2500 >NUL
POPD
PUSHD data
IF NOT EXIST asset goto INSTALL
IF NOT EXIST cache goto INSTALL
IF NOT EXIST services goto INSTALL
IF NOT EXIST mono goto INSTALL
PUSHD mono
IF NOT EXIST lib goto INSTALL
IF NOT EXIST architecture goto INSTALL
IF NOT EXIST engine goto INSTALL
IF NOT EXIST core goto INSTALL
IF NOT EXIST dll goto INSTALL
POPD
REM // If none of the criteria meets the protocols, reset the client, delete all charsaves and start the installation, else continue to the client bootstrapper.
goto CLIENTLAUNCHER

:INSTALL
echo.
echo.
TITLE Installing // %applicationName%
echo Installing advanced binary files...
TIMEOUT 5 /NOBREAK >NUL
POPD
PUSHD data
MD asset
PUSHD asset
MD plugins
MD textures
MD sounds
PUSHD plugins
(
  echo @ECHO OFF
  echo cls
  echo CALL plugin1.bat
  echo CALL plugin2.bat
  echo CALL plugin3.bat
  echo CALL plugin4.bat
  echo CALL plugin5.bat
  echo CALL plugin6.bat
  echo CLS
) > plugin-list.bat
POPD
POPD
PUSHD data
MD cache
MD services
PUSHD services
echo set applicationVersion=1.0 > version.bat
POPD
PUSHD data
MD mono
MD saves
PUSHD mono
MD lib
MD architecture
MD engine
MD core
MD dll
POPD
PUSHD data
PUSHD saves
MD profiles
PUSHD profiles
(
  echo [ README ]
  echo The save system stores character save data into a new login-system by hex-coding and through using the Windows Registry Editor.
  echo.
  echo Sorry for any inconvenience.
  echo - NXT Studios
) > README.TXT
POPD
PUSHD data
PUSHD saves
MD levels
PUSHD levels
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level1.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level2.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level3.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level4.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level5.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level6.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level7.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level8.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level9.dat

echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level1.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level2.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level3.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level4.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level5.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level6.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level7.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level8.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level9.dat.pak
POPD
PUSHD %appdata%
MD "NXT Studios"
PUSHD "NXT Studios"
MD savedData
PUSHD savedData
MD userData
POPD
goto RESTARTAPP

:CLIENTLAUNCHER
REM // Display loading screen (with fake assets)
cls
ECHO Loading Client Bootstrapper...
TIMEOUT 6 /NOBREAK >NUL
cls
ECHO Loading MonoManager...
TIMEOUT 6 /NOBREAK >NUL
cls
ECHO Loading addons...
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Setting environment parameters...
TIMEOUT 4 /NOBREAK >NUL
cls
ECHO Setting Nav-Mesh wireframe...
TIMEOUT 2 /NOBREAK >NUL
cls
GOTO CUTLOADER
ECHO Checking for new updates...
TIMEOUT 3 /NOBREAK >NUL
cls
ECHO Downloading new updates... (0/13)
TIMEOUT 3 /NOBREAK >NUL
cls
ECHO Downloading new updates... (1/13)
TIMEOUT 3 /NOBREAK >NUL
cls
ECHO Downloading new updates... (2/13)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Downloading new updates... (4/13)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Downloading new updates... (5/13)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Downloading new updates... (6/13)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Downloading new updates... (8/13)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Downloading new updates... (9/13)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Downloading new updates... (12/13)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Downloading new updates... (13/13)
TIMEOUT 2 /NOBREAK >NUL
cls
ECHO Importing new updates...
TIMEOUT 4 /NOBREAK >NUL
cls
ECHO Reading MonoManager varibles...
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Checking for new Anti-Cheat definitions...
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Importing new definitions...
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (0/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (4/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (19/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (44/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (63/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (82/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (133/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (284/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (374/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (423/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (590/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (831/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (1204/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (1301/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading Assets (1385/1385)
TIMEOUT 1 /NOBREAK >NUL
cls
:CUTLOADER
goto CLIENTMAINMENULOGIN

:CLIENTMAINMENULOGIN
cls
TITLE Login // %applicationName%
echo.
echo.
echo    // Login to the system:
echo.
echo.
echo.
echo   1] Log in to an existing account.
echo.
echo   2] Register a new account.
echo.
echo   3] Go back to the launcher.
echo.
set /p "loginselect=> "
IF %loginselect%==1 goto LOGIN
IF %loginselect%==2 goto REGISTER
IF %loginselect%==3 goto EXITTOLAUNCHERAPP
echo.
echo Incorrect option!
goto CLIENTMAINMENULOGIN

:LOGIN
POPD
cls
echo.
echo.
echo   // Log into an existing account.
echo.
echo.
echo.
echo Enter the username:
echo.
set /p "regname=> "
echo.
echo.
echo Checking for user data...
TIMEOUT 1 /NOBREAK >NUL
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
CALL %regname%.bat
if %regname%==%username% goto SUCCESSLOGINUSERNAME
cls
echo.
echo.
echo The username provided was incorrect or not existing.
TIMEOUT 5 /NOBREAK >NUL
goto CLIENTMAINMENULOGIN

:SUCCESSLOGINUSERNAME
POPD
cls
echo.
echo.
echo   // Log into an existing account.
echo.
echo.
echo.
echo Enter the password:
echo.
set /p "setpass=> "
echo.
echo.
echo Checking %username% 's data...
if %setpass%==%password% goto ANTICHEATWALL
echo.
echo.
echo The password provided was incorrect or not existing.
TIMEOUT 5 /NOBREAK >NUL
goto CLIENTMAINMENULOGIN

:ACCOUNTEXISTED
cls
echo.
echo.
echo This username is already taken!
echo.
TIMEOUT 3 /NOBREAK >NUL
goto CLIENTMAINMENULOGIN

:REGISTER
POPD
cls
echo.
echo.
echo   // Register a new account.
echo.
echo.
echo.
echo Enter the desired username:
echo.
set /p "registername=> "
POPD
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
IF EXIST "%registername%.bat" goto ACCOUNTEXISTED
POPD
cls
echo.
echo.
echo   // Register a new account.
echo.
echo.
echo.
echo Enter the desired password:
echo.
set /p "registerpass=> "
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
(
  echo [PLAYER LOGIN]
  echo.
  echo set username=%registername%
  echo set password=%registerpass%
  echo.
  echo.
  echo [PLAYER DATA]
  echo.
  echo set currentHealth=250
  echo set maxHealth=250
  echo set weapon=P250
  echo set weaponDMG=7
  echo set userLevel=0
  echo set ammo=12
  echo set userRank=Beginner
  echo set xp=0
  echo set lastLocation=TUTORIAL
  echo set moneyInInventory=125
  echo.
  echo.
  echo [CONFIG]
  echo.
  echo set debugState=Enable
  echo set soundState=Enable
  echo set graphicState=Disable
  echo.
  echo.
  echo [LOCATION AND DATA HISTORY
) > %registername%.bat
cls
echo.
echo.
echo Account registration successful!
echo.
TIMEOUT 5 /NOBREAK >NUL
goto CLIENTMAINMENULOGIN

:ANTICHEATWALL

:CLIENTMAINMENU
CLS
TITLE Main Menu // %applicationName%
echo.
echo.
echo               // Text Game \\
REM // Old Title Screen , did not support special characters and backfired the whole script. Version 0.4
REM echo ___________              __      ________                       
REM echo \__    ___/___ ___  ____/  |_   /  _____/_____    _____   ____  
REM echo   |    |_/ __ \\  \/  /\   __\ /   \  ___\__  \  /     \_/ __ \ 
REM echo   |    |\  ___/ >    <  |  |   \    \_\  \/ __ \|  Y Y  \  ___/ 
REM echo   |____| \___  >__/\_ \ |__|    \______  (____  /__|_|  /\___  >
REM echo              \/      \/                \/     \/      \/     \/ 
echo.
echo.
echo  \
echo   \         1] Singleplayer
echo    \
echo     \       2] Multiplayer
echo      \
echo       \     3] Store
echo        \
echo        /    4] Character
echo       /
echo      /      5] Settings
echo     /
echo    /        6] Return to Launcher
echo   /
echo  /          7] Return to Desktop
echo.
echo.
set /p "selector=> "
IF %selector%==1 goto SINGLEPLAYERMENU
IF %selector%==2 goto MULTIPLAYERMENU
IF %selector%==3 goto STOREMENU
IF %selector%==4 goto CHARACTERMENU
IF %selector%==5 goto SETTINGSMENU
IF %selector%==6 goto EXITTOLAUNCHERAPP
IF %selector%==7 goto END
echo.
cls
echo.
echo.
echo Incorrect option!
goto ANTICHEATWALL
PAUSE

:SINGLEPLAYERMENU
TITLE Singleplayer // %applicationName%
cls
echo.
echo.
IF %lastLocation%==TUTORIAL goto TUTORIALNOTIFICATION
goto %lastLocation%

:MULTIPLAYERMENU
TITLE Multiplayer // %applicationName%
cls
echo.
echo.
echo Connecting to a nearby server...
echo.
echo.
echo Ateempting to connect to: %serverName1%...
echo.
TIMEOUT 3 /NOBREAK >NUL
IF %multiplayerService%==online goto MULTIPLAYERMENU2
cls
echo.
echo.
echo Attempting to connect to: %serverName2%...
echo.
TIMEOUT 5 /NOBREAK >NUL
cls
echo.
echo.
echo Failed to send packets to server: %serverName1% , %serverName2% ...
echo.
echo Failed to receive packets from server: %serverName1% , %serverName2% ...
echo.
echo.
echo Sending TCP / UDP packets to Multiplayer Service...
TIMEOUT 7 /NOBREAK >NUL
echo.
echo.
echo.
echo Received message from Multiplayer Service.
echo.
echo The message contained :
echo.
echo.
echo /////////////////////////////////////
echo // MULTIPLAYER SERVICE IS OFFLINE! //
echo /////////////////////////////////////
echo.
echo.
echo Returning back to Main Menu...
TIMEOUT 8 /NOBREAK >NUL
goto ANTICHEATWALL

:STOREMENU
TITLE Store // %applicationName%
cls
echo.
echo.
echo Connecting to the Store...
echo.
TIMEOUT 8 /NOBREAK >NUL
IF %storeService%==online goto STORE
cls

echo Failed to send packets to the Store.
echo.
echo Failed to receive packets from the Store.
echo.
echo.
echo Sending TCP / UDP packets to Store Service...
TIMEOUT 7 /NOBREAK >NUL
echo.
echo.
echo.
echo Received message from Store Service.
echo.
echo The message contained :
echo.
echo.
echo /////////////////////////////////////
echo //    STORE SERVICE IS OFFLINE!    //
echo /////////////////////////////////////
echo.
echo.
echo Returning back to Main Menu...
TIMEOUT 8 /NOBREAK >NUL
goto ANTICHEATWALL

:TUTORIALNOTIFICATION
TITLE New World // %applicationName%
CLS
echo.
echo.
echo It seems that this account is new. Do you want to start the tutorial?
echo.
echo.
echo    1] Yes
echo.
echo    2] No
echo.
echo.
set /p "tutnoti=> "
IF %tutnoti%==1 goto TUTORIAL
IF %tutnoti%==2 goto GREENVALE
cls
echo.
echo.
echo Invalid option!
echo.
TIMEOUT 3 /NOBREAK >NUL
goto TUTORIALNOTIFICATION

:CHARACTERMENU
TITLE Character // %applicationName%
CLS
echo.
echo.
echo Character Username : %username%
echo.
echo Character Level: %userLevel%
echo.
echo Rank: %userRank%
echo.
echo.
echo Health: %currentHealth% / %maxHealth%
echo Experience: %xp% xp
echo.
echo Equipped Items:
echo     Weapon  : %weapon%
echo     Ammo    : %ammo%
echo.
echo.
echo Last seen at: %lastLocation%
PAUSE
goto ANTICHEATWALL

:SETTINGSMENU
POPD
PUSHD data
PUSHD services
CALL version.bat
POPD
TITLE Settings // %applicationName%
CLS
echo.
echo.
echo ////////// Settings \\\\\\\\\\\\\
echo.
echo.
echo   1] %debugState% Debug
echo.
echo   2] %soundState% Sounds
echo.
echo   3] %graphicState% Detailed Graphics
echo.
echo   4] Force Update the Game
echo.
echo   5] Go back to the Main Menu
echo.
echo.
echo Type 'version' to find the version number.
echo \\\\\\\\\\\---------///////////////
echo.
echo.
SET /p "settings=> "
IF %settings%==1 goto SETTINGSDEBUG
IF %settings%==2 goto SETTINGSSOUNDS
IF %settings%==3 goto SETTINGSGRAPHICS
IF %settings%==4 goto UPDATORCLIENT
IF %settings%==5 goto ANTICHEATWALL
IF %settings%==version goto VERSIONSETTINGS
CLS
echo Invalid option!
echo.
TIMEOUT 5 /NOBREAK >NUL
goto SETTINGSMENU

:VERSIONSETTINGS
TITLE Settings // %applicationName%
echo.
echo The current version is : %applicationVersion%
echo.
echo.
PAUSE
goto SETTINGSMENU

:SETTINGSDEBUG
CLS
IF %debugState%==Enable goto SETTINGSDEBUGTWO
set debugState=Enable
goto SETTINGSMENU

:SETTINGSDEBUGTWO
set debugState=Disable
goto SETTINGSMENU

:SETTINGSSOUNDS
CLS
IF %soundState%==Enable goto SETTINGSSOUNDSTWO
set soundState=Enable
goto SETTINGSMENU

:SETTINGSSOUNDSTWO
set soundState=Disable
goto SETTINGSMENU

:SETTINGSGRAPHICS
CLS
IF %graphicState%==Enable goto SETTINGSGRAPHICSTWO
set graphicState=Enable
goto SETTINGSMENU

:SETTINGSGRAPHICSTWO
set graphicState=Disable
goto SETTINGSMENU

:UPDATORCLIENT
POPD
PUSHD data
PUSHD services
IF EXIST updatorService.bat goto UPDATORCLIENTLAUNCH
echo Failed to fetch updator's Bootstrap Client!
TIMEOUT 3 /NOBREAK >NUL
goto SETTINGSMENU

:UPDATORCLIENTLAUNCH
TITLE Validating // Updator Client
cls
echo Validating and syncing new ID and preferences
CALL updatorService.bat
TIMEOUT 60 /T /NOBREAK >NUL
goto SETTINGSMENU

:STORE
TITLE Store // %applicationName%
CLS
echo.
echo  MESSAGE FROM THE ADMINISTRATORS // %administratorMessageStore%
echo.
echo  GLOBAL ANNOUNCEMENTS // %administratorAnnouncement%
echo.
echo.
echo /////////////////// [ STORE ] \\\\\\\\\\\\\\\\\\\\\
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo I                                                 I
echo \\\\\\\\\\\\\\\\\\\-------------///////////////////
PAUSE
SET/P "storeSelector=> "

:TUTORIAL
POPD
TITLE Tutorial Level // %applicationName%
CLS
echo.
echo Welcome to the tutorial, %username%.
echo.
echo We will teach the basic skills onmm how to play this game.
echo.
echo.
echo Lets start of with an introduction about the game!
PAUSE
echo.
echo.
echo %applicationName% is a game based of an adventure game and leveling up your character.
echo.
echo The main objctive is to go further into the game, (play with your friends online if its possible :) ) and maybe to show off.
echo.
echo Don't think this is the final product as this game gets updated daily or weekly depending on the new features and levels being added. To update the game, we've added an updator option in the "Settings"
echo menu to force push an update. Please try to not modify any core or game files as this may ruin the gameplay experience and would be "exploiting" the game. If by any chance you have broken the game,
echo feel free to delete the "data" folder and start the game again. It will reinstall the game files itself, but will not restore any plugins or configuration settings.
echo.
echo We hope that you enjoy the game, :)
echo.
echo %applicationAuthor%
echo.
echo.
PAUSE
CLS
echo First of all: Navigation
echo.
echo The navigation system in the game is very simple. All you have to do is type the number of your perferred choice.
echo.
echo I will summon an example menu for you to start off with. Call me Dave. I will be your trainer for today.
echo.

:EXAMPLEMENUTUTORIAL
PAUSE
CLS
echo.
echo [Dave] Summoning example menu...
TIMEOUT 2 /NOBREAK >NUL
echo.
echo -- == --
echo.
echo You have walked into the forest. There are 2 paths ahead. The left path has a paved path with the sign "Option 1" while the right path
echo has a dirt path with a broken sign "Option 2".
echo.
echo -- == --
echo.
echo Select the following option:
echo.
echo 1] Left Path
echo.
echo 2] Right Path
echo.
set /p "examplemenuoption=>  "
IF %examplemenuoption%==1 goto TUTORIALOPTIONONE
IF %examplemenuoption%==2 goto TUTORIALOPTIONTWO
echo.
echo.
echo.
echo [Dave] This is an incorrect response. You should have pressed either 1 or 2 and then submit it by pressing the "ENTER" key.
echo.
echo [Dave] I will make you redo the example menu task.
TIMEOUT 2 /NOBREAK >NUL
goto EXAMPLEMENUTUTORIAL

:TUTORIALOPTIONONE
CLS
echo.
echo [Dave] Hey there! Great job. It seems you picked Option 1. This is just the basics of navigations between menu's and other options that may come available.
echo.
echo [Dave] We will now proceed to the Combat System.
PAUSE
goto TUTORIALCOMBATBEGIN

:TUTORIALOPTIONTWO
echo.
echo [Dave] Hey there! Great job. It seems you picked Option 2. This is just the basics of navigations between menu's and other options that may come available.
echo.
echo [Dave] We will now proceed to the Combat System.
PAUSE
goto TUTORIALCOMBATBEGIN

:TUTORIALCOMBATBEGIN
CLS
echo.
echo [Dave] Hey there, %username%! Welcome to the Combat System training where I will show you the basics of PVP or PVE and tips about combat.
echo.
echo [Dave] Here, pick one of the following weapons:
echo.
echo -- == --
echo. 
echo On the white metal table lies 4 weapons. You must decide which weapon to choose to continue.
echo.
echo -- == --
echo.
echo.
echo 1] AK-47
echo.
echo 2] Artemite Dart Gun
echo.
echo 3] KR-Assault Rifle
echo.
echo 4] Demite's Longbow
echo.
echo.
set /p "combatbeginweapons=> "
IF %combatbeginweapons%==1 goto ACQUIREAK47
IF %combatbeginweapons%==2 goto ACQUIREADG
IF %combatbeginweapons%==3 goto ACQUIREKRAR
IF %combatbeginweapons%==4 goto ACQUIREDLB
echo.
echo.
echo Invalid option.
TIMEOUT 2 /NOBREAK >NUL
goto TUTORIALCOMBATBEGIN

:ACQUIREAK47
set weapon=AK47
set weapondmg=15
set ammo=40
goto TUTORIALCOMBAT

:ACQUIREADG
set weapon=Artemite Dart Gun
set weapondmg=13
set ammo=40
goto TUTORIALCOMBAT

:ACQUIREKRAR
set weapon=KR-Assault Rifle
set ammo=40
set weapondmg=17
goto TUTORIALCOMBAT

:ACQUIREAK47
set weapon=Demite's Longbow
set weapondmg=14
set ammo=40
goto TUTORIALCOMBAT

:TUTORIALCOMBAT
set enemy=Training Dummy
set enemyHealth=100
set enemyLevel=1
set enemyMaxHealth=100
set enemyWeapon=NONE
set enemyAmmo=N/A
set healPotionValue=0
set turnNumber=0
CLS
echo.
echo [Dave] Oh sweet, you picked up the %weapon%! Lets try this out on a training target.
PAUSE
CLS
echo.
echo.
:COMBATTUT
set /a turnNumber=%turnNumber%+1
CLS
echo.
echo.
echo --- Turn [%turnNumber%] ---
echo.
echo.                                          
echo  Character: %username%'s Stats
echo      HP: %currentHealth%                            
echo      Max HP: %maxHealth%
echo      Level: %userLevel%
echo.
echo Equipped Weapon: %weapon%
echo      Ammo: %ammo%
echo.
echo -----------------------------------
echo.
echo.
echo  Enemy: %enemy%'s Stats
echo      HP: %enemyHealth%                            
echo      Max HP: %enemyMaxHealth%
echo      Level: %enemyLevel%
echo.
echo Equipped Weapon: %enemyweapon%
echo      Ammo: %enemyammo%
echo.
echo -----------------------------------
echo.
echo -- == --
echo It is %username%'s turn!
echo -- == --
echo.
echo 1] Shoot - %weapondmg% DMG
echo.
echo 2] Use Heal Potion - x %healPotionValue%
echo.
echo 3] Skip Turn
echo.
echo.
set /p "combat=> "
IF %combat%==1 GOTO TUTCOMONE
IF %combat%==2 GOTO TUTCOMHEALONE
IF %combat%==3 GOTO TUTCOMSKIPTURNONE
echo.
echo.
echo Invalid option!
TIMEOUT 2 /NOBREAK >NUL
goto COMBATTUT

:TUTCOMONE
set /a randomiser=%random% %%5
echo.
echo.
echo Firing %randomiser% shots...
TIMEOUT 2 /NOBREAK >NUL
set /a ammo=%ammo%-%randomiser%
set /a enemyResultDamage=%randomiser%*%weapondmg%
set /a enemyHealth=%enemyHealth%-%enemyResultDamage%
echo.
echo.
echo %enemy% received %enemyResultDamage% DMG
echo.
if %enemyHealth% LEQ 0 goto COMBATTUTPARTONE
echo %enemy% has now %enemyHealth% HP left!
PAUSE
goto COMBATTUTTWOONE

:TUTCOMHEALONE
echo.
echo.
echo You have no heal potions left!
TIMEOUT 2 /NOBREAK >NUL
goto COMBATTUT

:TUTCOMSKIPTURNONE
echo.
echo.
echo Skipping turn...

:COMBATTUTTWOONE
set /a turnNumber=%turnNumber%+1
CLS
echo.
echo.
echo --- Turn [%turnNumber%] ---
echo.
echo.                                          
echo  Character: %username%'s Stats
echo      HP: %currentHealth%                            
echo      Max HP: %maxHealth%
echo      Level: %userLevel%
echo.
echo Equipped Weapon: %weapon%
echo      Ammo: %ammo%
echo.
echo -----------------------------------
echo.
echo.
echo  Enemy: %enemy%'s Stats
echo      HP: %enemyHealth%                            
echo      Max HP: %enemyMaxHealth%
echo      Level: %enemyLevel%
echo.
echo Equipped Weapon: %enemyweapon%
echo      Ammo: %enemyammo%
echo.
echo -----------------------------------
echo.
echo -- == --
echo It is %enemy%'s turn!
echo -- == --
echo.
echo %enemy% is making a decision : /
TIMEOUT 1 /NOBREAK >NUL

:COMBATTUTTWOTWO
CLS
echo.
echo.
echo --- Turn [%turnNumber%] ---
echo.
echo.                                          
echo  Character: %username%'s Stats
echo      HP: %currentHealth%                            
echo      Max HP: %maxHealth%
echo      Level: %userLevel%
echo.
echo Equipped Weapon: %weapon%
echo      Ammo: %ammo%
echo.
echo -----------------------------------
echo.
echo.
echo  Enemy: %enemy%'s Stats
echo      HP: %enemyHealth%                            
echo      Max HP: %enemyMaxHealth%
echo      Level: %enemyLevel%
echo.
echo Equipped Weapon: %enemyweapon%
echo      Ammo: %enemyammo%
echo.
echo -----------------------------------
echo.
echo -- == --
echo It is %enemy%'s turn!
echo -- == --
echo.
echo %enemy% is making a decision : -
TIMEOUT 1 /NOBREAK >NUL

:COMBATTUTTWOTHREE
CLS
echo.
echo.
echo --- Turn [%turnNumber%] ---
echo.
echo.                                          
echo  Character: %username%'s Stats
echo      HP: %currentHealth%                            
echo      Max HP: %maxHealth%
echo      Level: %userLevel%
echo.
echo Equipped Weapon: %weapon%
echo      Ammo: %ammo%
echo.
echo -----------------------------------
echo.
echo.
echo  Enemy: %enemy%'s Stats
echo      HP: %enemyHealth%                            
echo      Max HP: %enemyMaxHealth%
echo      Level: %enemyLevel%
echo.
echo Equipped Weapon: %enemyweapon%
echo      Ammo: %enemyammo%
echo.
echo -----------------------------------
echo.
echo -- == --
echo It is %enemy%'s turn!
echo -- == --
echo.
echo %enemy% is making a decision : \
TIMEOUT 1 /NOBREAK >NUL

:COMBATTUTTWOONE
CLS
echo.
echo.
echo --- Turn [%turnNumber%] ---
echo.
echo.                                          
echo  Character: %username%'s Stats
echo      HP: %currentHealth%                            
echo      Max HP: %maxHealth%
echo      Level: %userLevel%
echo.
echo Equipped Weapon: %weapon%
echo      Ammo: %ammo%
echo.
echo -----------------------------------
echo.
echo.
echo  Enemy: %enemy%'s Stats
echo      HP: %enemyHealth%                            
echo      Max HP: %enemyMaxHealth%
echo      Level: %enemyLevel%
echo.
echo Equipped Weapon: %enemyweapon%
echo      Ammo: %enemyammo%
echo.
echo -----------------------------------
echo.
echo -- == --
echo It is %enemy%'s turn!
echo -- == --
echo.
echo %enemy% is making a decision : SKIPPED A TURN!
TIMEOUT 1 /NOBREAK >NUL
goto COMBATTUT

:COMBATTUTPARTONE
CLS
ECHO [Dave] Great. You just defeated your first enemy. Since this enemy had no weapons, lets give you a more "violent" one.
echo.
PAUSE

:COMBATTUT2RESET
set enemy=Rogue Bandit
set enemyHealth=125
set enemyLevel=1
set enemyMaxHealth=150
set enemyWeapon=PR-55
set enemyAmmo=25
set enemyWeaponDMG=10
set healPotionValue=5
set healPotionEffect=50
set turnNumber=0
set ammo=40
set currentHealth=250

:COMBATTUT2
set /a turnNumber=%turnNumber%+1
CLS
echo.
echo.
echo --- Turn [%turnNumber%] ---
echo.
echo.                                          
echo  Character: %username%'s Stats
echo      HP: %currentHealth%                            
echo      Max HP: %maxHealth%
echo      Level: %userLevel%
echo.
echo Equipped Weapon: %weapon%
echo      Ammo: %ammo%
echo.
echo -----------------------------------
echo.
echo.
echo  Enemy: %enemy%'s Stats
echo      HP: %enemyHealth%                            
echo      Max HP: %enemyMaxHealth%
echo      Level: %enemyLevel%
echo.
echo Equipped Weapon: %enemyweapon%
echo      Ammo: %enemyammo%
echo.
echo -----------------------------------
echo.
echo -- == --
echo It is %username%'s turn!
echo -- == --
echo.
echo 1] Shoot - %weapondmg% DMG
echo.
echo 2] Use Heal Potion - x %healPotionValue%
echo.
echo 3] Skip Turn
echo.
echo.
set /p "combat=> "
IF %combat%==1 GOTO TUTCOMTWO
IF %combat%==2 GOTO TUTCOMHEALTWO
IF %combat%==3 GOTO TUTCOMSKIPTURNTWO
echo.
echo.
echo Invalid option!
TIMEOUT 2 /NOBREAK >NUL
goto COMBATTUT2

:TUTCOMTWO
set /a randomiser=%random% %%5
echo.
echo.
echo Firing %randomiser% shots...
TIMEOUT 2 /NOBREAK >NUL
set /a ammo=%ammo%-%randomiser%
set /a enemyResultDamage=%randomiser%*%weapondmg%
set /a enemyHealth=%enemyHealth%-%enemyResultDamage%
echo.
echo.
echo %enemy% received %enemyResultDamage% DMG
echo.
if %enemyHealth% LEQ 0 goto COMBATTUTPARTTWO
echo %enemy% has now %enemyHealth% HP left!
PAUSE
goto TUTCOMENEMY

:TUTCOMHEALTWO
echo.
echo.
IF %healPotionValue% LEQ 0 goto TUTCOMHEALTWONONE
set /a healPotionValue=%healPotionValue%-1
set /a currentHealth=%currentHealth%+%healPotionEffect%
echo %username% has used the healing potion!
echo.
echo You now have %healPotionValue% healing potions left!
TIMEOUT 2 /NOBREAK >NUL
goto COMBATTUT2

:TUTCOMHEALTWONONE
echo.
echo You have no more potions!
TIMEOUT 1 /NOBREAK >NUL
goto COMBATTUT2

:TUTCOMSKIPTURNTWO
echo.
echo.
echo Skipping turn...

:TUTCOMENEMY
set /a turnNumber=%turnNumber%+1
CLS
echo.
echo.
echo --- Turn [%turnNumber%] ---
echo.
echo.                                          
echo  Character: %username%'s Stats
echo      HP: %currentHealth%                            
echo      Max HP: %maxHealth%
echo      Level: %userLevel%
echo.
echo Equipped Weapon: %weapon%
echo      Ammo: %ammo%
echo.
echo -----------------------------------
echo.
echo.
echo  Enemy: %enemy%'s Stats
echo      HP: %enemyHealth%                            
echo      Max HP: %enemyMaxHealth%
echo      Level: %enemyLevel%
echo.
echo Equipped Weapon: %enemyweapon%
echo      Ammo: %enemyammo%
echo.
echo -----------------------------------
echo.
echo -- == --
echo It is %enemy%'s turn!
echo -- == --
echo.
echo %enemy% is making a decision : /
TIMEOUT 1 /NOBREAK >NUL
CLS
echo.
echo.
echo --- Turn [%turnNumber%] ---
echo.
echo.                                          
echo  Character: %username%'s Stats
echo      HP: %currentHealth%                            
echo      Max HP: %maxHealth%
echo      Level: %userLevel%
echo.
echo Equipped Weapon: %weapon%
echo      Ammo: %ammo%
echo.
echo -----------------------------------
echo.
echo.
echo  Enemy: %enemy%'s Stats
echo      HP: %enemyHealth%                            
echo      Max HP: %enemyMaxHealth%
echo      Level: %enemyLevel%
echo.
echo Equipped Weapon: %enemyweapon%
echo      Ammo: %enemyammo%
echo.
echo -----------------------------------
echo.
echo -- == --
echo It is %enemy%'s turn!
echo -- == --
echo.
echo %enemy% is making a decision : -
TIMEOUT 1 /NOBREAK >NUL
CLS
echo.
echo.
echo --- Turn [%turnNumber%] ---
echo.
echo.                                          
echo  Character: %username%'s Stats
echo      HP: %currentHealth%                            
echo      Max HP: %maxHealth%
echo      Level: %userLevel%
echo.
echo Equipped Weapon: %weapon%
echo      Ammo: %ammo%
echo.
echo -----------------------------------
echo.
echo.
echo  Enemy: %enemy%'s Stats
echo      HP: %enemyHealth%                            
echo      Max HP: %enemyMaxHealth%
echo      Level: %enemyLevel%
echo.
echo Equipped Weapon: %enemyweapon%
echo      Ammo: %enemyammo%
echo.
echo -----------------------------------
echo.
echo -- == --
echo It is %enemy%'s turn!
echo -- == --
echo.
echo %enemy% is making a decision : \
TIMEOUT 1 /NOBREAK >NUL
set /a enemyPicker=%random% %%5
echo.
echo.
echo %enemy% is firing %enemyPicker% shots...
TIMEOUT 2 /NOBREAK >NUL
set /a EnemyAmmo=%EnemyAmmo%-%enemyPicker%
set /a userResultDamage=%enemyPicker%*%Enemyweapondmg%
set /a currentHealth=%currentHealth%-%userResultDamage%
echo.
echo.
echo %username% received %userResultDamage% DMG
echo.
if %currentHealth% LEQ 0 goto COMBATTUTFAIL
echo %username% has now %currentHealth% HP left!
PAUSE
goto COMBATTUT2

:COMBATTUTFAIL
cls
echo.
echo [Dave] It seems that you have died during training.
echo.
TIMEOUT 3 /NOBREAK >NUL
echo [Dave] Don't worry, mistakes like these happen before.
echo.
TIMEOUT 3 /NOBREAK >NUL
echo [Dave] But in a real situation if you died, your whole data gets reset (unless we update the game and added a softcore difficulty ;) ). 
echo Because we're in the tutorial, I can just reset your character to the beginning of the Combat Testing Unit.
TIMEOUT 6 /NOBREAK >NUL
goto COMBATTUT2RESET

:COMBATTUTPARTTWO
CLS
echo.
echo [Dave] Whoa, defeated 2 enemies huh? Great job back there!
echo.
TIMEOUT 3 /NOBREAK >NUL
echo [Dave] But that's just the beginning, you got your own destiny, journey and adventure out there.
echo.
TIMEOUT 3 /NOBREAK >NUL
echo [Dave] Looks like your ready to go out there and be a hero.
echo.
TIMEOUT 2 /NOBREAK >NUL
echo [Dave] *bzz*
echo.
echo.
TIMEOUT 1 /NOBREAK >NUL
echo [Dave] Uh oh, looks like I got another person for training. Don't worry %username%, I think your special and unique. Let the world know that.
echo.
TIMEOUT 4 /NOBREAK >NUL
echo [Dave] See you soon!
echo.
TIMEOUT 3 /NOBREAK >NUL


:INITWORLD
CLS
echo.
echo Dropping %username% to the drop-off zone...
TIMEOUT 3 /NOBREAK >NUL
echo.
echo [Drop-Off Drone] Stabilising Air Pressure...
TIMEOUT 2 /NOBREAK >NUL
echo.
echo [Drop-Off Drone] Air Pressure stablilised!
TIMEOUT 1 /NOBREAK >NUL
echo.
echo [Drop-Off Drone] Opening Air-Lock Doors...
TIMEOUT 1 /NOBREAK >NUL
echo.
echo *sssss*
TIMEOUT 3 /NOBREAK >NUL
echo.
echo [Drop-Off Drone] You have arrived at : GREENVALE
echo.
TIMEOUT 3 /NOBREAK >NUL

:GREENVALE
POPD
PUSHD 