@ECHO OFF
:INIT
TITLE Welcome to the Store // TextGame
set applicationVersion=1.5
set latestVersion=1.5

REM // STORE VARIABLES

set item1Name="Rare Karichi Gun"
set item2Name="Wood"
set item3Name="Ammo"
set item4Name="ShieldX20"
set item5Name="Blimp's Special Coin"
set item6Name="Health Potion"
set item7Name="Desmonic 'Shroom"
set item8Name="Desmonic Bowl"

set item1Meta="A usable weapon ingame. Delivers 24 DMG among enemies."
set item2Meta="A tradable item."
set item3Meta="A perishable item used by weapons."
set item4Meta="Tops up your shield meter by 20"
set item5Meta="It's his secret coin..."
set item6Meta="A perishable item that restores your HP by 50."
set item7Meta="A tradeable item."
set item8Meta="A tradeable item."

set item1Price="25000"
set item2Price="5000"
set item3Price="250"
set item4Price="1450"
set item5Price="9950"
set item6Price="1000"
set item7Price="145"
set item8Price="120"

REM // For arrow indicators // -^> and ^<-

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
goto EXIT

:STOREMENU
CD /D %GameLauncherDirectory%
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
PUSHD %username%
call localclass.bat
set itemPrice=
cls
echo Welcome back, %username%! Please, look around and see anything new you would like to purchase.
echo.
echo WORLD NEWS // FIRE AT GREENVALE WOOD DEPOT. WOOD PRODUCTION AND RESOURCES IS REDUCED!
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
set /p "cho=> "
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

:PURCHASEFAILED
TITLE EFTPOS System Error! // %applicationName%
CLS
echo.
echo.
echo Storekeeper: Sorry, insufficient funds! Go fight more enemies to earn more coins!
echo.
echo Game Error Code:
echo         During the store transaction, the system failed to process the purchase.
echo         -- YOUR COIN: %money% --^> ITEM PRICE: %itemPrice%
echo.
echo.
TIMEOUT 4 /NOBREAK >NUL
goto STOREMENU

:ITEM1
set itemPrice=%item1Price%
TITLE EFTPOS System // %applicationName%
CLS
echo Storekeeper: Would you like to purchase this item?
echo.
echo   //\\  Item Name: %item1Name%
echo   //\\    Description: %item1Meta%
echo   //\\    Price: %currency%%item1Price%
echo.
echo.
echo             --- [Y/N] ---
set /p "itempurchase=> "
IF "%itempurchase%"=="Y" goto ITEM1YES
IF "%itempurchase%"=="y" goto ITEM1YES
IF "%itempurchase%"=="N" goto INIT
IF "%itempurchase%"=="n" goto INIT
PAUSE
GOTO ITEM1

:ITEM1YES
IF %money% LSS %item1Price% goto PURCHASEFAILED
set /a totalMoney=%money%-%item1Price%
CD /D %GameLauncherDirectory%
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
PUSHD %username%
TITLE YEST1
echo set money=%totalMoney% > money.bat
TITLE YEST2
REM // ITEM RECEIVED

echo set weaponDMG=24 > weaponDMG.bat
echo set weapon=Karachi Gun > weapon.bat

REM // END OF ITEM RECEIVED

goto STOREMENU

:ITEM2
TITLE EFTPOS System // %applicationName%
CLS

:ITEM3
TITLE EFTPOS System // %applicationName%
CLS

:ITEM4
TITLE EFTPOS System // %applicationName%
CLS

:ITEM5
TITLE EFTPOS System // %applicationName%
CLS

:ITEM6
TITLE EFTPOS System // %applicationName%
CLS

:ITEM7
TITLE EFTPOS System // %applicationName%
CLS

:ITEM8
TITLE EFTPOS System // %applicationName%
CLS

:LEAVE
CLS
echo.
echo Thanks for visiting the shop, %username%. See you next time!
echo.
echo.
TIMEOUT 2 /NOBREAK >NUL
:EXIT