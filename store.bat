@ECHO OFF
:INIT
TITLE Welcome to the Store // TextGame
REM set applicationVersion=1.3
set latestVersion=1.4

REM // STORE VARIABLES

REM // -^> and ^<-

:CHECKLIST
IF "%applicationVersion%" EQU "%latestVersion%" goto STOREMENU
goto STOREERROR

:STOREERROR
TITLE An Error has occured! // TextGame Store Server
CLS
echo.
echo Sorry, the Store detected that your game seems to be out-of-date. Please force update the game in order to
echo see and buy items in the Store and access new content!
echo.
echo Regards,
echo.
echo Storekeeper.
echo.
echo.
echo.
echo Game Information:
echo.
echo.
echo Client Version: %applicationVersion%
echo.
echo Latest Stable Version: %latestVersion%
echo.
echo.
echo.
PAUSE
EXIT

:STOREMENU
cls
echo Welcome back, %username%! Please, look around and see anything new you would like to purchase.
echo.
echo WORLD NEWS // BUSHFIRE AT GREENVALE WOOD DEPOT. WOOD PRODUCTION AND RESOURCES IS REDUCED!
echo.
echo.
echo    COINS IN YOUR INVENTORY // %money%
echo.
echo ======================================================================================================
echo =         ITEMS ON SALE                                  =          RESOURCE DEMANDS                 =
echo ======================================================================================================
echo =                                                        =                                           =
echo =     1] Rare Karichi Gun                      [25000]   =   [^<-]Wood: 9583                          =
echo =                                                        =                                           =
echo =     2] Wood x 500                            [5000]    =   [-^>]Xerion: 234957                      =
echo =                                                        =                                           =
echo =     3] Ammo x 120                            [250]     =   [-^>]Aluminium: 231531                   =
echo =                                                        =                                           =
echo =     4] Uncommon Laice Helmet                 [1450]    =   [^<-]NegaSteel: 6235443                  =
echo =                                                        =                                           =
echo =     5] Uncommon Laice Leggings               [1250]    =   [-^>]Gold: 6434327                       =
echo =                                                        =                                           =
echo =     6] Health Potion x 2                     [1000]    =   [^<-]Concrete: 32163                     =
echo =                                                        =                                           =
echo =     7] Desmonic 'Shroom                      [145]     =   [-^>]Food: 654368                        =
echo =                                                        =                                           =
echo =     8] Desmonic Bowl                         [120]     =   [^<-]SekTech Fluid: 1834                 =
echo =                                                        =                                           =
echo =                                                        =                                           =
echo =                                                        =                                           =
echo =                                                        =                                           =
echo ======================================================================================================
echo.
echo Type ['Quit'] to leave the Store!
echo.
set /p "cho=>"
IF %cho%==1 goto ITEM1
IF %cho%==2 goto ITEM2
IF %cho%==3 goto ITEM3
IF %cho%==4 goto ITEM4
IF %cho%==5 goto ITEM5
IF %cho%==6 goto ITEM6
IF %cho%==7 goto ITEM7
IF %cho%==8 goto ITEM8
IF %cho%==quit goto LEAVE
IF %cho%==Quit goto LEAVE
IF %cho%==QUIT goto LEAVE
echo.
echo Invalid option!
TIMEOUT 1 /NOBREAK >NUL
goto STOREMENU

:LEAVE
CLS
echo.
echo Thanks for visiting the shop, %username%. See you next time!
echo.
echo.
TIMEOUT 2 /NOBREAK >NUL