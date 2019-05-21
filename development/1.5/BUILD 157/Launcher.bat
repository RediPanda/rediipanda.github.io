:START
@ECHO OFF
set GameLauncherDirectory="%LauncherDirectory%"
set gameLauncherDirectory="%LauncherDirectory%"
set loggingDirectory="%GameLauncherDirectory%"/data/mono/logs

set startLog=CD /D %loggingDirectory%
set endLog=CD /D %GameLauncherDirectory%

set resetDir=CD /D %GameLauncherDirectory%

set versionBuild2=156
MODE 215,80
CD /D %gameLauncherDirectory%
TITLE Loading...
cls
:REDIRECTION
REM // REDIRECTING TO THE VARIABLES TAB
REM // Default value is VARIABLE

:CLIENTIDCHECKLIST1
REM // IF CLIENT IS NOT SYNCED WITH LAUNCHER, BREAK SESSION.
%startLog%
echo [INFO: %date% - %time%] [SYSTEM] Checking if %applicationName% is synced with the Client Service...>>latest.log
echo [INFO: %date% - %time%] [GAME] @CONSOLE : Issued the command: textgame.client.checksync>>latest.log
%endLog%
IF NOT %serviceIsTextGameRunning%P==trueP goto ERRORLVL4
IF NOT %serviceIsTextGameResponding%P==trueP goto ERRORLVL4
IF NOT %serviceTextGameSpecialIDHandler%==83123895723857237623785462376846523685685646532674523845679653276523 goto ERRORLVL4
IF NOT %serviceTextGameSpecialIDThrottler%==ADSHBFASIBETBKETBEABIKFDTEETBABTAEABFDSBKFASGAFIGFAIGATEIGAETRBRAEB goto ERRORLVL4
REM CD /D %loggingDirectory%
%startLog%
echo.>>latest.log
echo ------------------------ START PROCEDURE --------------------------- >>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Starting Application...>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Starting Task #%random%>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Starting Task #%random%>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Starting Task #%random%>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Starting Task #%random%>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Starting independent services...>>latest.log
echo [INFO: %date% - %time%] [GAME] Unpacking data...>>latest.log
echo [INFO: %date% - %time%] [GAME] @CONSOLE : Executing command: textgame.loadgame.state>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Loading Last Game State...>>latest.log
echo [INFO: %date% - %time%] [GAME] Checking Game State...>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Service (Game) REQUEST event.GameState>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Service (Game) POST event.GameState>>latest.log
echo [INFO: %date% - %time%] [ENGINE] Checking if GameState matches latest with current...>>latest.log
echo [INFO: %date% - %time%] [ENGINE] Checking if GameState matches latest with current... OK!>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Start Procedures Completed!>>latest.log
echo ------------------------ START PROCEDURE --------------------------- >>latest.log
echo [INFO: %date% - %time%] [SYSTEM] INFO: Date: %date%>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] INFO: Time: %time%>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] INFO: Reporting: Version: %applicationVersion% Build %versionBuild2%>>latest.log
echo ------------------------ START OF LOGGING --------------------------- >>latest.log
echo.>>latest.log
REM CD /D %GameLauncherDirectory%
%endLog%

goto VARIABLE

REM //////////////////////////////////////////////////////////////////////////////////////////////////////////
REM RANKS:
REM BEGINNER, RECRUIT, REGIMENT-5, REGIMENT-22, REGIMENT-54, REGIMENT-84, REGIMENT-108, MERCENARY, ASSAULTAIR, SHARPSHOOTER, A-FORCE-A, A-FORCE-B, A-FORCE-C
REM KREGIMEIRS-GUARD, ROYAL-GUARDIAN, ROYAL-GUARDIAN-GENERAL, ALPHA-RECRUIT, ALPHA-INFANTRY, ALPHA-TEAM-LEADER, ALPHA-GENERAL, ALPHA-LEADER
REM EXTERNAT-ASSASSIN, EXTERNAT-ETERNAL-LEADER, EXTERNAT-GUARDIAN
REM
REM
REM LOGGING DEBUG FORMAT:
REM
REM [SYSTEM] - Game Mechanic/Logistics and Services
REM [USER] - User input
REM [ERROR] - Error Logistics
REM [WORLD] - World Logistics, Services, Data and Settings
REM [ENGINE] - Game Engine Initialization and Services
REM
REM 
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
REM Comments: Novice town, Level 3-8.
REM
REM Kindle Town:
REM lastLocationID: KINDLETOWN
REM Locations: KINDLETOWN, KINDLETOWN-STORE, KINDLETOWN-HOSPITAL, KINDLETOWN-FOREST, KINDLETOWN-FIELDS, KINDLETOWN-ENTRANCE, KINDLETOWN-EXITGATE
REM Comments: Novice town, Level 5-10.
REM //////////////////////////////////////////////////////////////////////////////////////////////////////////

:OPTION1
CLS
echo This is option 1!
PAUSE
EXIT

:OPTION2
CLS
echo This is option 2!
PAUSE
EXIT

:OPTION3
CLS
echo This is option 3!
PAUSE
EXIT

:OPTION4
CLS
echo This is option 4!
PAUSE
EXIT

:RESTARTAPP
CD /D %gameLauncherDirectory%
cls
TITLE Rebooting // %applicationName%
echo Rebooting application...
CD /D %loggingDirectory%
echo [INFO: %date% - %time%] [SYSTEM] Resetting application ports... >>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Resetting application storage... >>latest.log
echo [INFO: %date% - %time%] [GAME] Rebooting Game... >>latest.log
CD /D %GameLauncherDirectory%
TIMEOUT 2 /NOBREAK >NUL
goto REDIRECTION

:EVENTREDIRECTION
TITLE Event // %applicationName%
CLS
REM // Default value if theres no event - IMAINMENU
REM // Default value if there is a event - EVENT
set eventValue=IMAINMENU
goto %eventValue%

:EXITTOLAUNCHERAPP
CLS
TITLE Returning to launcher // %applicationName%
REM CD /D %loggingDirectory%
%startLog%
echo.>>latest.log
echo ------------------------ EXIT PROCEDURE --------------------------- >>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Exiting Application...>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Cancelling Task #%random%>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Cancelling Task #%random%>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Cancelling Task #%random%>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Cancelling Task #%random%>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Shutting off services...>>latest.log
echo [INFO: %date% - %time%] [GAME] Wrapping up data...>>latest.log
echo [INFO: %date% - %time%] [GAME] @CONSOLE : Executing command: textgame.savegame.state>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Saving Game State...>>latest.log
echo [INFO: %date% - %time%] [GAME] Checking Game State...>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Service (Game) REQUEST event.GameState>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Service (Game) POST event.GameState>>latest.log
echo [INFO: %date% - %time%] [ENGINE] Checking if GameState matches latest with current...>>latest.log
echo [INFO: %date% - %time%] [ENGINE] Checking if GameState matches latest with current... OK!>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Exit Procedures Completed!>>latest.log
echo ------------------------ EXIT PROCEDURE --------------------------- >>latest.log
echo [INFO: %date% - %time%] [SYSTEM] INFO: Date: %date%>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] INFO: Time: %time%>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] INFO: Reporting: Version: %applicationVersion% Build %versionBuild%>>latest.log
echo ------------------------ END OF LOGGING --------------------------- >>latest.log
echo.>>latest.log
%endLog%
REM CD /D %GameLauncherDirectory%
EXIT

:VARIABLE
CD /D %gameLauncherDirectory%
PUSHD data
PUSHD services
CALL version.bat
CD /D %gameLauncherDirectory%

set installedVersion=1.5
set versionBuild=%versionBuild2%

REM // PATH ENVIRONMENTAL GLOBAL VARIABLES

set corpData=%appdata%/"NXT Studios"
set updateClientDir=%appdata%/"NXT Studios"/library/client
set updateGameDir=%appdata%/"NXT Studios"/library/game
set mapData=%appdata%/"NXT Studios"/library/mapData
set userDataLocation=%appdata%/"NXT Studios"/savedData/userData
set serverLocation="%appdata%"/"NXT Studios"/server
set antiCheatEngine="%appdata%"/"NXT Studios"/library/game/services/antiCheatEngine
set worldInitDirectory="%appdata%"/"NXT Studios"/library/game/worldData

set applicationName=Text Game

set applicationAuthor=NXT Studios
set applicationUpdater=
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
set debug=false
set allocatedDebugLevel=4
set allocatedAdminDebugLevel=DEBUG-S008
set allocatedMaxRAM=512
set allocatedRAMSize=MB
set SSLauncher=messageAdmin()
set debugState=Enable
set soundState=Disable
set graphicState=Enable
set savedData=
set currency=$
set adminLogin=RediPanda (Dev) (Admin)
set roleAdmin=(GRANTED: ADMINISTRATIVE RIGHTS)


REM // SERVER IDENTITY
set serverName1=AU003
set serverName2=AU072
set serverName3=EU003
set serverName4=EU042
set serverName5=US067
set serverName6=US001

REM // AVAILABILIY OF SERVICES
set multiplayerService=offline
set storeService=online

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

REM // ANTI-GRIEF MESSAGES

set ZANTI-GREIF001=ANTI-GRIEF MESSAGES
set ZANTI-GREIF002=ANTI-GRIEF MESSAGES
set ZANTI-GREIF003=ANTI-GRIEF MESSAGES
set ZANTI-GREIF004=ANTI-GRIEF MESSAGES
set ZANTI-GREIF005=ANTI-GRIEF MESSAGES
set ZANTI-GREIF006=ANTI-GRIEF MESSAGES
set ZANTI-GREIF007=ANTI-GRIEF MESSAGES
set ZANTI-GREIF008=ANTI-GRIEF MESSAGES
set ZANTI-GREIF009=ANTI-GRIEF MESSAGES
set ZANTI-GREIF010=ANTI-GRIEF MESSAGES
set ZANTI-GREIF011=ANTI-GRIEF MESSAGES
set ZANTI-GREIF012=ANTI-GRIEF MESSAGES
set ZANTI-GREIF013=ANTI-GRIEF MESSAGES
set ZANTI-GREIF014=ANTI-GRIEF MESSAGES
set ZANTI-GREIF015=ANTI-GRIEF MESSAGES
set ZANTI-GREIF016=ANTI-GRIEF MESSAGES
set ZANTI-GREIF017=ANTI-GRIEF MESSAGES
set ZANTI-GREIF018=ANTI-GRIEF MESSAGES
set ZANTI-GREIF019=ANTI-GRIEF MESSAGES
set ZANTI-GREIF020=ANTI-GRIEF MESSAGES
set ZANTI-GREIF021=ANTI-GRIEF MESSAGES
set ZANTI-GREIF022=ANTI-GRIEF MESSAGES
set ZANTI-GREIF023=ANTI-GRIEF MESSAGES
set ZANTI-GREIF024=ANTI-GRIEF MESSAGES
set ZANTI-GREIF025=ANTI-GRIEF MESSAGES
set ZANTI-GREIF026=ANTI-GRIEF MESSAGES
set ZANTI-GREIF027=ANTI-GRIEF MESSAGES
set ZANTI-GREIF028=ANTI-GRIEF MESSAGES
set ZANTI-GREIF029=ANTI-GRIEF MESSAGES
set ZANTI-GREIF030=ANTI-GRIEF MESSAGES
set ZANTI-GREIF031=ANTI-GRIEF MESSAGES
set ZANTI-GREIF032=ANTI-GRIEF MESSAGES
set ZANTI-GREIF033=ANTI-GRIEF MESSAGES
set ZANTI-GREIF034=ANTI-GRIEF MESSAGES
set ZANTI-GREIF035=ANTI-GRIEF MESSAGES
set ZANTI-GREIF036=ANTI-GRIEF MESSAGES
set ZANTI-GREIF037=ANTI-GRIEF MESSAGES
set ZANTI-GREIF038=ANTI-GRIEF MESSAGES
set ZANTI-GREIF039=ANTI-GRIEF MESSAGES
set ZANTI-GREIF040=ANTI-GRIEF MESSAGES
set ZANTI-GREIF041=ANTI-GRIEF MESSAGES
set ZANTI-GREIF042=ANTI-GRIEF MESSAGES
set ZANTI-GREIF043=ANTI-GRIEF MESSAGES
set ZANTI-GREIF044=ANTI-GRIEF MESSAGES
set ZANTI-GREIF045=ANTI-GRIEF MESSAGES
set ZANTI-GREIF046=ANTI-GRIEF MESSAGES
set ZANTI-GREIF047=ANTI-GRIEF MESSAGES
set ZANTI-GREIF048=ANTI-GRIEF MESSAGES
set ZANTI-GREIF049=ANTI-GRIEF MESSAGES
set ZANTI-GREIF050=ANTI-GRIEF MESSAGES
set ZANTI-GREIF051=ANTI-GRIEF MESSAGES
set ZANTI-GREIF052=ANTI-GRIEF MESSAGES
set ZANTI-GREIF053=ANTI-GRIEF MESSAGES
set ZANTI-GREIF054=ANTI-GRIEF MESSAGES
set ZANTI-GREIF055=ANTI-GRIEF MESSAGES
set ZANTI-GREIF056=ANTI-GRIEF MESSAGES
set ZANTI-GREIF057=ANTI-GRIEF MESSAGES
set ZANTI-GREIF058=ANTI-GRIEF MESSAGES
set ZANTI-GREIF059=ANTI-GRIEF MESSAGES
set ZANTI-GREIF060=ANTI-GRIEF MESSAGES
set ZANTI-GREIF061=ANTI-GRIEF MESSAGES
set ZANTI-GREIF062=ANTI-GRIEF MESSAGES
set ZANTI-GREIF063=ANTI-GRIEF MESSAGES
set ZANTI-GREIF064=ANTI-GRIEF MESSAGES
set ZANTI-GREIF065=ANTI-GRIEF MESSAGES
set ZANTI-GREIF066=ANTI-GRIEF MESSAGES
set ZANTI-GREIF067=ANTI-GRIEF MESSAGES
set ZANTI-GREIF068=ANTI-GRIEF MESSAGES
set ZANTI-GREIF069=ANTI-GRIEF MESSAGES
set ZANTI-GREIF070=ANTI-GRIEF MESSAGES
set ZANTI-GREIF071=ANTI-GRIEF MESSAGES
set ZANTI-GREIF072=ANTI-GRIEF MESSAGES
set ZANTI-GREIF073=ANTI-GRIEF MESSAGES
set ZANTI-GREIF074=ANTI-GRIEF MESSAGES
set ZANTI-GREIF075=ANTI-GRIEF MESSAGES
set ZANTI-GREIF076=ANTI-GRIEF MESSAGES
set ZANTI-GREIF077=ANTI-GRIEF MESSAGES
set ZANTI-GREIF078=ANTI-GRIEF MESSAGES
set ZANTI-GREIF079=ANTI-GRIEF MESSAGES
set ZANTI-GREIF080=ANTI-GRIEF MESSAGES
set ZANTI-GREIF081=ANTI-GRIEF MESSAGES
set ZANTI-GREIF082=ANTI-GRIEF MESSAGES
set ZANTI-GREIF083=ANTI-GRIEF MESSAGES
set ZANTI-GREIF084=ANTI-GRIEF MESSAGES
set ZANTI-GREIF085=ANTI-GRIEF MESSAGES
set ZANTI-GREIF086=ANTI-GRIEF MESSAGES
set ZANTI-GREIF087=ANTI-GRIEF MESSAGES
set ZANTI-GREIF088=ANTI-GRIEF MESSAGES
set ZANTI-GREIF089=ANTI-GRIEF MESSAGES
set ZANTI-GREIF090=ANTI-GRIEF MESSAGES
set ZANTI-GREIF091=ANTI-GRIEF MESSAGES
set ZANTI-GREIF092=ANTI-GRIEF MESSAGES
set ZANTI-GREIF093=ANTI-GRIEF MESSAGES
set ZANTI-GREIF094=ANTI-GRIEF MESSAGES
set ZANTI-GREIF095=ANTI-GRIEF MESSAGES
set ZANTI-GREIF096=ANTI-GRIEF MESSAGES
set ZANTI-GREIF097=ANTI-GRIEF MESSAGES
set ZANTI-GREIF098=ANTI-GRIEF MESSAGES
set ZANTI-GREIF099=ANTI-GRIEF MESSAGES
set ZANTI-GREIF100=ANTI-GRIEF MESSAGES

CLS
goto CHECKLIST

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
CD /D %gameLauncherDirectory%
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
CD /D %gameLauncherDirectory%
PUSHD data
MD update
MD services
PUSHD services
echo set applicationVersion=%installedVersion% > version.bat
CD /d %gameLauncherDirectory%
PUSHD data
PUSHD config
echo set id=239542289318745164517661485119292356978222100021815192116140 >> lib.bat
CD /D %gameLauncherDirectory%
PUSHD data
MD mono
PUSHD mono
MD logs
goto RESTARTAPP

:CHECKLIST
CD /D %gameLauncherDirectory%
if NOT EXIST data goto CREATE
PUSHD data
if NOT EXIST config goto CREATE
if NOT EXIST services goto CREATE
IF NOT EXIST mono goto CREATE
PUSHD config
IF NOT EXIST lib.bat goto CREATE
CALL lib.bat
PING 1.1.1.1 -n 1 -w 2500 >NUL
if %id%==239542289318745164517661485119292356978222100021815192116140 goto INTRODUCTION
CD /D %GameLauncherDirectory%
PUSHD data
PUSHD services
IF NOT EXIST version.bat goto CREATE
CD /D %GameLauncherDirectory%
PUSHD data
PUSHD mono
IF NOT EXIST logs goto CREATE
CALL version.bat
goto ERRORLVL1

:ERRORLVL1
REM // Triggered event if theres no such file as lib.bat or failed to read the id as provided.  The lib.bat file is located at ~root/data/ -> config <-
cls
echo.
echo It seems like the application files are missing or corrupted during installation. Please delete the 'data' file and run the installation again!
echo.
echo.
echo Error Code : [ER1]
TIMEOUT 120 /NOBREAK >NUL
EXIT

:ERRORLVL2
REM // Disabled event trigger
cls
echo.
echo The game is already running in a different instance! Please close this instance to play the application.
TIMEOUT 120 /NOBREAK >NUL
EXIT

:ERRORLVL3
%startLog%
echo [WARN: %date% - %time%] [ERROR] Detected bad class at: class.accountManager(dataMigrationService).>>latest.log
echo [WARN: %date% - %time%] [ERROR] error.lang at AccountManagerFail.NXT.net : line 847>>latest.log
echo [WARN: %date% - %time%] [ERROR] error.lang at AccountManagerFail.NXT.net : line 848>>latest.log
echo [WARN: %date% - %time%] [ERROR] error.lang at AccountManagerFail.NXT.net : line 849>>latest.log
echo [WARN: %date% - %time%] [ERROR] error.lang at AccountManagerFail.NXT.net : line 850>>latest.log
echo [WARN: %date% - %time%] [ERROR] error.lang at AccountManagerFail.NXT.net : line 851>>latest.log
echo [WARN: %date% - %time%] [ERROR] error.lang at AccountManagerFail.NXT.net : line 852>>latest.log
echo [WARN: %date% - %time%] [ERROR] Failed to connect to account (Joint Services missing)>>latest.log
echo [INFO: %date% - %time%] [ERROR] Displaying Error Code [ER3]...>>latest.log
echo [WARN: %date% - %time%] [ERROR] Failed to detect user database input spreadsheet [provided with datasheet name: (UserInput.tgss)]>>latest.log
echo [INFO: %date% - %time%] [ERROR] Listing existing database spreadsheets...>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Connecting to Logistics Network...>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Connected! [User=TextGameNativeService156 Pass=TextGame9218264657355] [DB=DBTextGame Type=Local SS=UI]>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Database INFO: Existing spreadsheets=(userInputDB.tgss, questInfo.tgss, worldData.tgss, accountInfo.tgss, displayScenes.tgss)>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Disconnecting from database...>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Re-establishing Error Service...>>latest.log
echo [INFO: %date% - %time%] [ERROR] Sending a 3-way handshake request...>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Request received! Sending a confirmation request...>>latest.log
echo [INFO: %date% - %time%] [ERROR] 3-way handshake complete!>>latest.log
echo [WARN: %date% - %time%] [ERROR] Failed to request user input command! (NOT EXISTING)>>latest.log
%endLog%
TITLE [ERROR] Account Manager Service // Text Game
REM // Triggered event if the application cannot start/read the localclass.bat located at ~appdata~/Roaming/NXT Studios/savedData/userData/~username~/localclass.bat
cls
echo.
echo %applicationName% failed to fetch account data for " %username% " . Please select one of the following actions provided and available below.
echo.
echo.
echo [STATUS]   Logged in as "%adminLogin%" with the following permissions: %roleAdmin%
echo.
echo [ACCOUNT]  "%adminLogin% " is logged in by the Game Administrator using: Local Account Sessions
echo [WARNING]  This account   was logged in by a mod/user under the details of: Account Services System
echo [WARNING]  Type of Logger: "Services"         Reason: "ERRORCODE (FAILED_USER_ACCOUNT_JOINT_SERVICES)"
echo.
echo.
echo ---- ADMIN CONTROL ----
echo.
echo Please select an action.
echo.
echo.
echo {SERVICE_USER_INPUT_1} ] (FAILED TO FIND ANY INPUT DATABASE NAMED "1_UAMS_INPUT"!)
echo.
echo {SERVICE_USER_INPUT_2} ] (FAILED TO FIND ANY INPUT DATABASE NAMED "2_UAMS_INPUT"!)
echo.
echo {SERVICE_USER_INPUT_3} ] (FAILED TO FIND ANY INPUT DATABASE NAMED "3_UAMS_INPUT"!)
echo.
echo.
echo Error Code : [ER3]
TIMEOUT 18 /NOBREAK >NUL
goto ERRORLVL1

:ERRORLVL4
REM // TRIGGERED IF THE LAUNCHER PROCESS ISNT LAUNCHED FROM THE CLIENT EXECUTABLE.
%startLog%
echo [WARN: %date% - %time%] [SYSTEM] Failed to sync with client service! >>latest.log
echo [INFO: %date% - %time%] [ERROR] Displaying error scene: [ER4]>>latest.log
echo [INFO: %date% - %time%] [SYSTEM] Forcing application to shutdown...>>latest.log
%endLog%
cls
echo.
echo The Launcher failed to sync and authorise data from the Client Application.
echo.
echo Please try running the Client Application instead of the Launcher Application,
echo.
echo Or try updating the Client Application if its outdated.
echo.
echo.
echo Error Code : [ER4]
echo.
echo.
TIMEOUT 120 /NOBREAK >NUL
EXIT

:INTRODUCTION
TITLE Introduction // %applicationName%

:CLIENTIDCHECKLIST2
%startLog%
echo [INFO: %date% - %time%] [SYSTEM] Checking if %applicationName% is synced with the Client Service...>>latest.log
echo [INFO: %date% - %time%] [GAME] @CONSOLE : Issued the command: textgame.client.checksync>>latest.log
%endLog%
IF NOT %serviceIsTextGameRunning%Pointer==truePointer goto ERRORLVL4
IF NOT %serviceIsTextGameResponding%Pointer==truePointer goto ERRORLVL4
IF NOT %serviceTextGameSpecialIDHandler%Pointer==83123895723857237623785462376846523685685646532674523845679653276523Pointer goto ERRORLVL4
IF NOT %serviceTextGameSpecialIDThrottler%Pointer==ADSHBFASIBETBKETBEABIKFDTEETBABTAEABFDSBKFASGAFIGFAIGATEIGAETRBRAEBPointer goto ERRORLVL4

:INFORMATIONREADER
CD /D %gameLauncherDirectory%
PUSHD data
PUSHD services
CALL version.bat
CD /D %gameLauncherDirectory%

REM // ADD IN EFFECTS AFTER THE ALPHA VERSION
:IMAINMENU
CD /D %gameLauncherDirectory%
TITLE Launcher // %applicationName%
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
IF "%cho%"=="1" goto LAUNCHERTOCLIENT
IF "%cho%"=="2" goto IABOUT
IF "%cho%"=="3" goto ILICENSE
IF "%cho%"=="4" goto EXITTOLAUNCHERAPP
IF "%cho%"=="event.EasterEgg" goto EVENTREDIRECTION
IF "%cho%"=="%SSLauncher%" goto IMAINMENUECHO
IF "%cho%"=="fastLoad" goto CLIENTMAINMENULOGIN
IF "%cho%"=="applicationReboot" goto RESTARTAPP
IF "%cho%"=="ERRORM8" goto ERRORLVL3
echo Incorrect option!
TIMEOUT 1 /NOBREAK >NUL
goto IMAINMENU

:SAIT
PUSHD %appdata%
MD "NXT Studios"
PUSHD "NXT Studios"
MD savedData
MD library
MD server
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
CD /D %gameLauncherDirectory%
PUSHD data
PUSHD _Distribution
start Notepad "license.txt"
goto IMAINMENU

:IABOUT
cd /d %gameLauncherDirectory%
PUSHD data
PUSHD asset
PUSHD plugins
CALL plugin-list.bat
CD /D %gameLauncherDirectory%
PUSHD data
PUSHD services
CALL version.bat
CD /D %gameLauncherDirectory%
CLS
echo ========================================================
echo.
echo Application: %applicationName%
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
cd /d %gameLauncherDirectory%
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
IF NOT EXIST saves goto INSTALL
IF NOT EXIST update goto INSTALL
PUSHD mono
IF NOT EXIST lib goto INSTALL
IF NOT EXIST architecture goto INSTALL
IF NOT EXIST engine goto INSTALL
IF NOT EXIST core goto INSTALL
IF NOT EXIST dll goto INSTALL
IF NOT EXIST logs goto INSTALL
POPD
POPD
PUSHD data

REM // If none of the criteria meets the protocols, reset the client, delete all charsaves and start the installation, else continue to the client bootstrapper.
goto CLIENTLAUNCHER

:INSTALL
echo.
echo.
CD /d %gameLauncherDirectory%
TITLE Installing // %applicationName%
echo Installing advanced binary files...
TIMEOUT 5 /NOBREAK >NUL
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
CD /d %gameLauncherDirectory%
PUSHD data
MD cache
PUSHD data
MD mono
MD saves
PUSHD mono
MD lib
PUSHD lib
echo ahfas79yf9asf9af9u3f9afs98yf7ayfew64fwe84f4ar5ht465gd4ngioutyb5d4g54gc54xa4xd6r64xe84e4cg65r56vr6rgsacagrsc4racs64c4acrarcar64yacr5rcagrcs8agsc7 >LibraryClass.dll
echo ahfas79yf9asf9af9u3f9afs98yf7ayfew64fwe84f4ar5ht465gd4ngioutyb5d4g54gc54xa4xd6r64xe84e4cg65r56vr6rgsacagrsc4racs64c4acrarcar64yacr5rcagrcs8agsc7 >MonoLib.dll
echo ahfas79yf9asf9af9u3f9afs98yf7ayfew64fwe84f4ar5ht465gd4ngioutyb5d4g54gc54xa4xd6r64xe84e4cg65r56vr6rgsacagrsc4racs64c4acrarcar64yacr5rcagrcs8agsc7 >classHandler.dll
echo ahfas79yf9asf9af9u3f9afs98yf7ayfew64fwe84f4ar5ht465gd4ngioutyb5d4g54gc54xa4xd6r64xe84e4cg65r56vr6rgsacagrsc4racs64c4acrarcar64yacr5rcagrcs8agsc7 >engine64.dll
echo ahfas79yf9asf9af9u3f9afs98yf7ayfew64fwe84f4ar5ht465gd4ngioutyb5d4g54gc54xa4xd6r64xe84e4cg65r56vr6rgsacagrsc4racs64c4acrarcar64yacr5rcagrcs8agsc7 >errorReporter.dll
POPD
MD architecture
MD engine
MD core
MD dll
MD logs
CD /d %gameLauncherDirectory%
PUSHD data
PUSHD saves
MD profiles
PUSHD profiles
(
  echo [ README ]
  echo The save system stores character save data into a new login-system. This will increase the speed of reading user data.
  echo.
  echo Sorry for any inconvenience.
  echo - NXT Studios
) > README.TXT
CD /d %gameLauncherDirectory%
PUSHD data
PUSHD saves
MD levels
PUSHD levels
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level1.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level2.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level3.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level4.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level5.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level6.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level7.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level8.dat
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level9.dat

echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level1.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level2.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level3.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level4.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level5.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level6.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level7.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level8.dat.pak
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% > level9.dat.pak
POPD
PUSHD %appdata%
MD "NXT Studios"
PUSHD "NXT Studios"
MD savedData
MD library
MD server
PUSHD savedData
MD userData
POPD
goto RESTARTAPP

:CLIENTLAUNCHER
REM // Display loading screen
cls
ECHO Loading Client Bootstrapper...
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading MonoManager...
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Loading addons...
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Setting environment parameters...
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Setting Nav-Mesh wireframe...
TIMEOUT 1 /NOBREAK >NUL
cls
REM // 1.3 STABLE RELEASE ALLOWED UNRESTRCITED VERSION CHECKS. 1.4+ NOW HAS STRICT PROTOCOLS AND NEW HANDSHAKES.
REM // GOTO CUTLOADER
ECHO Checking for new updates...
TIMEOUT 1 /NOBREAK >NUL
cls
ECHO Importing new updates...
TIMEOUT 4 /NOBREAK >NUL
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
IF "%loginselect%"=="1" goto LOGIN
IF "%loginselect%"=="2" goto REGISTER
IF "%loginselect%"=="3" goto EXITTOLAUNCHERAPP
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
PUSHD %appdata%
cls
PUSHD "NXT Studios"
cls
PUSHD savedData
cls
PUSHD userData
cls
PUSHD %regname%
CALL %regname%-login.bat
cls
if "%regname%"=="%username%" goto SUCCESSLOGINUSERNAME
cls
goto ACCOUNTLOGINFAILUSERNAME

:ACCOUNTLOGINFAILUSERNAME
cls
echo.
echo.
echo The username provided was incorrect or not existing.
TIMEOUT 2 /NOBREAK >NUL
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
TIMEOUT 2 /NOBREAK >NUL
goto CLIENTMAINMENULOGIN

:ACCOUNTEXISTED
cls
echo.
echo.
echo This username is already taken!
echo.
TIMEOUT 2 /NOBREAK >NUL
goto CLIENTMAINMENULOGIN

:REGISTERBLANK
CLS
title Registration Account Error // %applicationName%
echo.
echo You cannot register an account with a blank field!
echo.
echo.
TIMEOUT 2 /NOBREAK >NUL
goto CLIENTMAINMENULOGIN

:REGISTER
CD /D %GameLauncherDirectory%
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
IF "%registername%nullPointer"=="nullPointer" goto REGISTERBLANK
POPD
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
PUSHD %registername%
IF EXIST "%registername%-login.bat" goto ACCOUNTEXISTED
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
IF "%registerpass%nullPointer"=="nullPointer" goto REGISTERBLANK
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
MD %registername%
PUSHD %registername%
(
  echo [PLAYER LOGIN]
  echo.
  echo set username=%registername%
  echo set password=%registerpass%
) > %registername%-login.bat
(
  echo set money=25
) > money.bat
(
  echo set currentHealth=250
) > health.bat
(
  echo set currentShield=0
) > shield.bat
(
  echo set weapon=P250
) > weapon.bat
(
  echo set weaponDMG=7
) > weaponDMG.bat
(
  echo set ammo=12
) > ammo.bat
(
  echo set xp=0
) > xp.bat
(
  echo set userLevel=1
) > userLevel.bat
(
  echo set userRank=Beginner
) > userRank.bat
(
  echo set lastLocation=TUTORIAL
) > lastLocation.bat
(
  echo set maxHealth=250
) > maxHealth.bat
(
  echo set maxShield=0
) > maxShield.bat
(
  echo set debugState=Enable
) > debugSetting.bat
(
  echo set soundState=Enable
) > soundSetting.bat
(
  echo set graphicState=Disable
) > graphicSetting.bat
(
  echo set accountAge=%applicationVersion%
) > accountAge.bat
(
  echo set worldName=Arenotik
) > worldData.bat
(
  echo CALL health.bat
  echo CALL shield.bat
  echo CALL weapon.bat
  echo CALL weaponDMG.bat
  echo CALL ammo.bat
  echo CALL xp.bat
  echo CALL userLevel.bat
  echo CALL userRank.bat
  echo CALL lastLocation.bat
  echo CALL maxHealth.bat
  echo CALL maxShield.bat
  echo CALL debugSetting.bat
  echo CALL soundSetting.bat
  echo CALL graphicSetting.bat
  echo CALL money.bat
  echo CALL accountAge.bat
  echo CALL worldData.bat
  echo SET localclassid=23789078239075230793392579035212390123258953289
  echo cls
) > localclass.bat

cls
echo.
echo.
echo Account registration successful!
echo.
TIMEOUT 2 /NOBREAK >NUL
goto CLIENTMAINMENULOGIN

:ANTICHEATWALL
CD /d %userDataLocation%
PUSHD %username%
CALL localclass.bat
IF "nullPointer%localclassid%"=="nullPointer" goto ERRORLVL3
set /a cheatMaxInShieldSensor=%maxShield%+1
set /a cheatMaxInHealthSensor=%maxHealth%+1
set /a cheatMaxHealthSensor=12500+1
set cheatMaxShieldSensor=5000
if "%currentHealth%" GEQ "%cheatMaxInHealthSensor%" goto DETECTEDCHEAT
if %maxHealth% GEQ %cheatMaxHealthSensor% goto DETECTEDCHEAT
if %maxShield% GTR %cheatMaxShieldSensor% goto DETECTEDCHEAT
if "%currentShield%" GEQ "%cheatMaxInShieldSensor%" goto DETECTEDCHEAT

REM // ADVANCED HEALTH CHECKER

REM // ADVANCED INV CHECKER

REM // ADVANCED PROGRAM PROTOCOLS

REM // ADVANCED DAMAGE CONTROL

REM // ADVANCED MEMORY REGISTRY CHECKER

REM // ADVANCED ACCOUNT MANAGEMENT

REM // ADVANCED SERVER TUNNELLING
goto CLIENTMAINMENU

:DETECTEDCHEAT
CLS
TITLE AntiCheat System - %ATCT3%
CLS
echo.
echo Sorry, but your account is detected to be modified in a cheating aspect / data is corrupted or filled with data the game lore itself cannot achieve. Please
echo register a new account after the reboot!
echo.
echo Purging %username%'s account data...
CD /D %GameLauncherDirectory%
PUSHD %userDataLocation%
RMDIR /S /Q "%username%"
PAUSE
goto START

:CLIENTMAINMENU
Cd /D %GameLauncherDirectory%
PUSHD data
PUSHD services
CALL version.bat
Cd /D %GameLauncherDirectory%
CLS
TITLE Main Menu // %applicationName%
echo.
echo.
echo                 // Text Game \\
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
echo   \         1] Singleplayer [BETA]
echo    \
echo     \       2] Multiplayer [DISABLED]
echo      \
echo       \     3] Store [BETA]
echo        \
echo        /    4] Character [BETA]
echo       /
echo      /      5] Settings [BETA]
echo     /
echo    /        6] Return to Launcher
echo   /
echo  /          7] Return to Desktop
echo.
echo.
set /p "selector=> "
IF "%selector%"=="1" goto SINGLEPLAYERMENU
IF "%selector%"=="2" goto CLIENTMAINMENU
IF "%selector%"=="3" goto STOREMENU
IF "%selector%"=="4" goto CHARACTERMENU
IF "%selector%"=="5" goto SETTINGSMENU
IF "%selector%"=="6" goto EXITTOLAUNCHERAPP
IF "%selector%"=="7" goto ENDOFFILE
echo.
cls
echo.
echo.
echo Incorrect option!
goto ANTICHEATWALL
PAUSE

:SINGLEPLAYERMENU
TITLE Singleplayer // %applicationName%
CD /D %userDataLocation%
PUSHD %username%
CALL localclass.bat
cls
echo.
echo.
IF %lastLocation%==TUTORIAL goto TUTORIALNOTIFICATION
CD /D %worldInitDirectory%
:WORLDDATABASE

IF GREENVALE==%lastLocation% set transferLocationID=1-1
IF FIDDLESDOCK==%lastLocation% set transferLocationID=1-2
IF KINDLETOWN==%lastLocation% set transferLocationID=1-3
IF MICARVALE==%lastLocation% set transferLocationID=1-4
IF OPENFIELD1-5==%lastLocation% set transferLocationID=1-5
IF OPENFIELD1-6==%lastLocation% set transferLocationID=1-6
IF OPENFIELD1-7==%lastLocation% set transferLocationID=1-7
IF OPENFIELD1-8==%lastLocation% set transferLocationID=1-8
IF MERCHANTBERALD==%lastLocation% set transferLocationID=2-1
IF OPENFIELD1-6==%lastLocation% set transferLocationID=2-2
IF OPENFIELD1-7==%lastLocation% set transferLocationID=2-3
IF OPENFIELD1-8==%lastLocation% set transferLocationID=2-4

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
TIMEOUT 2 /NOBREAK >NUL
IF %storeService%==online goto STORE
cls
echo.
echo Failed to send packets to the Store.
echo.
echo Failed to receive packets from the Store.
echo.
echo.
echo Sending TCP / UDP packets to Store Service...
TIMEOUT 3 /NOBREAK >NUL
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
TIMEOUT 3 /NOBREAK >NUL
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
CALL localclass.bat
IF "nullPointer%localclassid%"=="nullPointer" goto ERRORLVL3
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
echo Shield: %currentShield% / %maxShield%
echo.
echo Experience: %xp% xp
echo Balance : %money% %currency%
echo.
echo Equipped Items:
echo     Weapon  : %weapon%
echo     Ammo    : %ammo%
echo.
echo.
echo Last seen at: %lastLocation%, %worldName%
PAUSE
goto ANTICHEATWALL

:SETTINGSMENU
CD /d %gameLauncherDirectory%
PUSHD data
PUSHD services
CALL version.bat
POPD
TITLE Settings // %applicationName%
CLS
echo.
echo.
echo ////////////// Settings \\\\\\\\\\\\\\\\\
echo.
echo.
echo   1] %debugState% Debug
echo.
echo   2] %soundState% Sounds
echo.
echo   3] %graphicState% Detailed Graphics
echo.
echo   4] Force Update the Game [CLIENT]
echo.
echo   5] Go back to the Main Menu
echo.
echo.
echo Type 'version' to find the version number.
echo.
echo \\\\\\\\\\\\\\\---------///////////////////
echo.
echo.
SET /p "settings=> "
IF %settings%==1 goto SETTINGSDEBUG
IF %settings%==2 goto SETTINGSSOUNDS
IF %settings%==3 goto SETTINGSGRAPHICS
IF %settings%==4 goto CLIENT
IF %settings%==5 goto ANTICHEATWALL
IF %settings%==version goto VERSIONSETTINGS
IF %settings%==verify goto VERIFYINTEGRITY
CLS
echo Invalid option!
echo.
TIMEOUT 1 /NOBREAK >NUL
goto SETTINGSMENU

:VERIFYINTEGRITY
REM // Setup Verification Directory Status for Report
set VerifyLauncher=OK!
set VerifyData=OK!
set VerifyDistribution=OK!
set VerifyAsset=OK!
set VerifyCache=OK!
set VerifyConfig=OK!
set VerifyController=OK!
set VerifyMono=OK!
set VerifySaves=OK!
set VerifyServices=OK!
set VerifyUpdate=OK!

REM // Setup Verification File Status for Report

set VerifyLicense=OK!

set VerifyPlugins=OK!
set VerifySounds=OK!
set VerifyTextures=OK!

set VerifyConfigLib=OK!

set VerifyMonoArc=OK!
set VerifyMonoCore=OK!
set VerifyMonoDLL=OK!
set VerifyMonoEngine=OK!
set VerifyMonoLib=OK!


TITLE Verifying Game Files... // %applicationName%
CLS
echo Setting up new parameters...
CD /D %gameLauncherDirectory%
TIMEOUT 1 /NOBREAK >NUL
CLS
set filename=Launcher.bat
echo.
echo.
echo Scanning files...
echo.
echo [ %filename% ]
echo. 
IF NOT EXIST "Launcher.bat" set VerifyLauncher=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filename=Data Directory
echo.
echo.
echo Scanning files...
echo.
echo [ %filename% ]
echo. 
IF NOT EXIST "data" set VerifyData=Failed!

REM // Data Directory
PUSHD data

TIMEOUT 1 /NOBREAK >NUL
CLS
set filename=_Distribution
echo.
echo.
echo Scanning files...
echo.
echo [ %filename% ]
echo. 
IF NOT EXIST "_Distribution" set VerifyDistribution=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filename=Asset
echo.
echo.
echo Scanning files...
echo.
echo [ %filename% ]
echo. 
IF NOT EXIST "asset" set VerifyAsset=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filename=cache
echo.
echo.
echo Scanning files...
echo.
echo [ %filename% ]
echo. 
IF NOT EXIST "cache" set VerifyCache=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filename=config
echo.
echo.
echo Scanning files...
echo.
echo [ %filename% ]
echo. 
IF NOT EXIST "config" set VerifyConfig=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filename=controller
echo.
echo.
echo Scanning files...
echo.
echo [ %filename% ]
echo. 
IF NOT EXIST "controller" set VerifyController=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filename=mono
echo.
echo.
echo Scanning files...
echo.
echo [ %filename% ]
echo. 
IF NOT EXIST "mono" set VerifyMono=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filename=saves
echo.
echo.
echo Scanning files...
echo.
echo [ %filename% ]
echo. 
IF NOT EXIST "saves" set VerifySaves=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filename=services
echo.
echo.
echo Scanning files...
echo.
echo [ %filename% ]
echo. 
IF NOT EXIST "services" set VerifyServices=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filename=update
echo.
echo.
echo Scanning files...
echo.
echo [ %filename% ]
echo. 
IF NOT EXIST "update" set VerifyUpdate=Failed!
TIMEOUT 1 /NOBREAK >NUL
CLS

REM // LEVEL 1 SCANNER FINISHED

echo.
echo Level 1 Integrity Scanned!
echo.
echo.
TIMEOUT 2 /NOBREAK >NUL
echo Initiating Level 2 Integrity Scanner...
echo.
TIMEOUT 1 /NOBREAK >NUL

REM // INITIATE LEVEL 2 SCANNER

REM // _Distribution Directory

TIMEOUT 1 /NOBREAK >NUL
PUSHD _Distribution
CLS
set filedirectory=_Distribution
set filename=license.txt
echo.
echo.
echo    Scanning files...
echo.
echo   Scanning Directory : [ %filedirectory% ]
echo.
echo   Scanning File      : [ %filename% ]
echo. 
IF NOT EXIST "%filename%" set VerifyLicense=Failed!

REM // asset Directory

TIMEOUT 1 /NOBREAK >NUL
POPD
PUSHD asset
CLS
set filedirectory=asset
set filename=plugins
echo.
echo.
echo    Scanning files...
echo.
echo   Scanning Directory : [ %filedirectory% ]
echo.
echo   Scanning File      : [ %filename% ]
echo. 
IF NOT EXIST "%filename%" set VerifyPlugins=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filedirectory=asset
set filename=sounds
echo.
echo.
echo    Scanning files...
echo.
echo   Scanning Directory : [ %filedirectory% ]
echo.
echo   Scanning File      : [ %filename% ]
echo. 
IF NOT EXIST "%filename%" set VerifySounds=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filedirectory=asset
set filename=textures
echo.
echo.
echo    Scanning files...
echo.
echo   Scanning Directory : [ %filedirectory% ]
echo.
echo   Scanning File      : [ %filename% ]
echo. 
IF NOT EXIST "%filename%" set VerifyTextures=Failed!

REM // config Directory

TIMEOUT 1 /NOBREAK >NUL
POPD
PUSHD config
CLS
set filedirectory=config
set filename=lib.bat
echo.
echo.
echo    Scanning files...
echo.
echo   Scanning Directory : [ %filedirectory% ]
echo.
echo   Scanning File      : [ %filename% ]
echo. 
IF NOT EXIST "%filename%" set VerifyConfigLib=Failed!

REM // Mono Directory

TIMEOUT 1 /NOBREAK >NUL
POPD
PUSHD mono
CLS
set filedirectory=mono
set filename=architecture
echo.
echo.
echo    Scanning files...
echo.
echo   Scanning Directory : [ %filedirectory% ]
echo.
echo   Scanning File      : [ %filename% ]
echo. 
IF NOT EXIST "%filename%" set VerifyMonoArc=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filedirectory=mono
set filename=core
echo.
echo.
echo    Scanning files...
echo.
echo   Scanning Directory : [ %filedirectory% ]
echo.
echo   Scanning File      : [ %filename% ]
echo. 
IF NOT EXIST "%filename%" set VerifyMonoCore=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filedirectory=mono
set filename=dll
echo.
echo.
echo    Scanning files...
echo.
echo   Scanning Directory : [ %filedirectory% ]
echo.
echo   Scanning File      : [ %filename% ]
echo. 
IF NOT EXIST "%filename%" set VerifyMonoDLL=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filedirectory=mono
set filename=engine
echo.
echo.
echo    Scanning files...
echo.
echo   Scanning Directory : [ %filedirectory% ]
echo.
echo   Scanning File      : [ %filename% ]
echo. 
IF NOT EXIST "%filename%" set VerifyMonoEngine=Failed!

TIMEOUT 1 /NOBREAK >NUL
CLS
set filedirectory=mono
set filename=lib
echo.
echo.
echo    Scanning files...
echo.
echo   Scanning Directory : [ %filedirectory% ]
echo.
echo   Scanning File      : [ %filename% ]
echo. 
IF NOT EXIST "%filename%" set VerifyMonoLib=Failed!

REM // Finish Scan

CLS

REM // Print Report

TITLE Displaying Report // %applicationName%
CLS
echo.
echo Level 2 Scan finished!
echo.
echo We are now preparing the results from the scans...
echo.
TIMEOUT 4 /NOBREAK >NUL
echo.
echo Generating the report...
echo.
echo.
echo.
TIMEOUT 1 /NOBREAK >NUL

REM // Report Output
:REPORTOUTPUT
CLS

echo ------ VERIFICATION INTEGRITY REPORT ------
echo.
echo Game Name: %applicationName%
echo Game Version : %applicationVersion%
echo Game Build: %versionBuild%
echo.
echo Assigned Username : %username%
echo.
echo Character Information:
echo     Location         : %lastLocation%, %worldName%
echo     Ammo             : %ammo%
echo     Health           : %currentHealth%
echo     Max Health       : %maxHealth%
echo     Shield           : %currentShield%
echo     Max Shield       : %maxShield%
echo     Level            : %userLevel%
echo     Rank             : %userRank%
echo     EXP              : %xp%
echo     Weapon           : %weapon%
echo     Weapon DMG       : %weaponDMG%
echo     Account Version  : %accountAge%
echo.
echo.
echo Validated Files:
echo.
echo   Main Root File 'Launcher.Bat'            -      %VerifyLauncher%
echo   Main Root File 'Data'                    -      %VerifyData%
echo      Data -^>  _Distribution                -      %VerifyDistribution%
echo           _Distribution -^>  license.txt    -      %VerifyLicense%
echo      Data -^>  asset                        -      %VerifyAsset%
echo           asset -^>  plugins                -      %VerifyPlugins%
echo           asset -^>  sounds                 -      %VerifySounds%
echo           asset -^>  textures               -      %VerifyTextures%
echo      Data -^>  cache                        -      %VerifyCache%
echo      Data -^>  config                       -      %VerifyConfig%
echo           config -^> lib.bat                -      %VerifyConfigLib%
echo      Data -^>  controller                   -      %VerifyController%
echo      Data -^>  mono                         -      %VerifyMono%
echo           mono -^> architecture             -      %VerifyMonoArc%
echo           mono -^> core                     -      %VerifyMonoCore%
echo           mono -^> dll                      -      %VerifyMonoDLL%
echo           mono -^> engine                   -      %VerifyMonoEngine%
echo           mono -^> lib                      -      %VerifyMonoLib%
echo      Data -^>  saves                        -      %VerifySaves%
echo      Data -^>  services                     -      %VerifyServices%
echo      Data -^>  update                       -      %VerifyUpdate%
echo.
echo.
echo End of Report File
echo.
echo --- EOF ---
TIMEOUT 2 /NOBREAK >NUL
PAUSE

echo.
echo.
echo Would you like a log file of this report? [Y /N]
set /p "report=> "
IF %report%==Y goto PRINTREPORT
IF %report%==y goto PRINTREPORT
IF %report%==N goto SETTINGSMENU
IF %report%==n goto SETTINGSMENU
goto REPORTOUTPUT

:PRINTREPORT
CD /D %GameLauncherDirectory%
(
echo ------ VERIFICATION INTEGRITY REPORT ------
echo.
echo Game Name: %applicationName%
echo Game Version : %applicationVersion%
echo Game Build: %versionBuild%
echo.
echo Assigned Username : %username%
echo.
echo Character Information:
echo     Location         : %lastLocation%, %worldName%
echo     Ammo             : %ammo%
echo     Health           : %currentHealth%
echo     Max Health       : %maxHealth%
echo     Shield           : %currentShield%
echo     Max Shield       : %maxShield%
echo     Level            : %userLevel%
echo     Rank             : %userRank%
echo     EXP              : %xp%
echo     Weapon           : %weapon%
echo     Weapon DMG       : %weaponDMG%
echo     Account Version  : %accountAge%
echo.
echo.
echo Validated Files:
echo.
echo   Main Root File 'Launcher.Bat'            -      %VerifyLauncher%
echo   Main Root File 'Data'                    -      %VerifyData%
echo      Data -^>  _Distribution                -      %VerifyDistribution%
echo           _Distribution -^>  license.txt    -      %VerifyLicense%
echo      Data -^>  asset                        -      %VerifyAsset%
echo           asset -^>  plugins                -      %VerifyPlugins%
echo           asset -^>  sounds                 -      %VerifySounds%
echo           asset -^>  textures               -      %VerifyTextures%
echo      Data -^>  cache                        -      %VerifyCache%
echo      Data -^>  config                       -      %VerifyConfig%
echo           config -^> lib.bat                -      %VerifyConfigLib%
echo      Data -^>  controller                   -      %VerifyController%
echo      Data -^>  mono                         -      %VerifyMono%
echo           mono -^> architecture             -      %VerifyMonoArc%
echo           mono -^> core                     -      %VerifyMonoCore%
echo           mono -^> dll                      -      %VerifyMonoDLL%
echo           mono -^> engine                   -      %VerifyMonoEngine%
echo           mono -^> lib                      -      %VerifyMonoLib%
echo      Data -^>  saves                        -      %VerifySaves%
echo      Data -^>  services                     -      %VerifyServices%
echo      Data -^>  update                       -      %VerifyUpdate%
echo.
echo.
echo End of Report File
echo.
echo --- EOF ---
) > validity-integrity-report.txt
goto SETTINGSMENU

:VERSIONSETTINGS
TITLE Settings // %applicationName%
echo.
echo The current version is : %applicationVersion%
echo.
echo Stable build of: %versionBuild%
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
CD /d %gameLauncherDirectory%

PUSHD data
PUSHD services

IF EXIST updatorService.bat goto UPDATORCLIENTLAUNCH
echo Failed to start the Updator Client/Service!

TIMEOUT 3 /NOBREAK >NUL
goto SETTINGSMENU

:UPDATORCLIENTLAUNCH
TITLE Validating // Updator Client
cls
echo Validating and syncing new ID and preferences
TIMEOUT 1 /NOBREAK >NUL
CALL updatorService.bat
EXIT

:STORE
Cd /D %GameLauncherDirectory%
PUSHD data
PUSHD services
CALL version.bat
cls
echo.
echo Fetching the latest store items...
echo.
TIMEOUT 1 /NOBREAK >NUL
CD /D %serverLocation%
DEL /Q "store.bat"
SET "FILELOCATION=%serverLocation%/store.bat"
cls
bitsadmin.exe /transfer "Store Service" "https://raw.githubusercontent.com/RediPanda/rediipanda.github.io/master/Servers/Game Integration/store.bat" %FILELOCATION%
CALL store.bat
goto CLIENTMAINMENU

:TUTORIAL
POPD
TITLE Tutorial Level // %applicationName%
CLS
echo.
echo Welcome to the tutorial, %username%.
echo.
echo We will teach the basic skills on how to play this game.
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
CLS
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
set weapondmg=17
set ammo=40
goto TUTORIALCOMBAT

:ACQUIREDLB
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
set /a randomiser=%random% %%6
IF %randomiser% LEQ 0 goto TUTCOMTWO
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
echo Thats the end of the tutorial! Continuing to the story-line...
TIMEOUT 2 /NOBREAK >NUL
:INITWORLD
CD /D %userDataLocation%
PUSHD %username%
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
echo set lastLocation=GREENVALE > lastLocation.bat
TIMEOUT 1 /NOBREAK>NUL
goto SINGLEPLAYERMENU

REM // ALWAYS LEAVE THIS LINE AS THE LAST LINE!!!
REM // THE PROGRAM WILL NOT RUN EFFICIENT IF THIS LINE IS MODIFIED OR REMOVED!!!
:CLIENT
EXIT
:ENDOFFILE
EXIT