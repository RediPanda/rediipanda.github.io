@ECHO OFF
:INIT
TITLE Welcome to the Store // TextGame
CLS
REM // set applicationVersion=1.5
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

set item1Price=25000
set item2Price=5000
set item3Price=250
set item4Price=1450
set item5Price=9950
set item6Price=1000
set item7Price=145
set item8Price=120

REM // SYSTEM VARIABLES 

set /a apexID=%random% %%8
set serverID=%apexID%

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
TITLE Welcome to the Store // TextGame
CD /D %GameLauncherDirectory%
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
PUSHD %username%
call localclass.bat

REM // RESETTERS

set itemPrice=
set failedPurchase=
set oldBalance=
set newBalance=

REM // MAIN INTERFACE
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
echo =    1 ] Rare Karichi Gun                      [25000]   =   [^<-]Wood: 9583                          =
echo =                                                        =                                           =
echo =    2 ] Wood x 500                            [5000]    =   [-^>]Xerion: 234957                      =
echo =                                                        =                                           =
echo =    3 ] Ammo x 120                            [250]     =   [-^>]Aluminium: 231531                   =
echo =                                                        =                                           =
echo =    4 ] Shield x 20                           [1450]    =   [^<-]NegaSteel: 6235443                  =
echo =                                                        =                                           =
echo =    5 ] Blimp's Special Coin                  [9950]    =   [-^>]Gold: 6434327                       =
echo =                                                        =                                           =
echo =    6 ] Health Potion x 2                     [1000]    =   [^<-]Concrete: 32163                     =
echo =                                                        =                                           =
echo =    7 ] Desmonic 'Shroom                      [145]     =   [-^>]Food: 654368                        =
echo =                                                        =                                           =
echo =    8 ] Desmonic Bowl                         [120]     =   [^<-]SekTech Fluid: 1834                 =
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
IF %cho%==refresh goto INIT
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
echo         -- YOUR BALANCE: %money% --^> ITEM PRICE: %itemPrice%
echo.
echo.
PAUSE
goto STOREMENU

REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM //////////////// NEW ITEM 1 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:ITEM1
set itemPrice=%item1Price%
set oldBalance=%money%
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
GOTO ITEM1

:ITEM1YES
IF %money% LSS %item1Price% (
	set failedPurchase=1
	) else (
	set failedPurchase=0
)

IF %failedPurchase%==1 goto PURCHASEFAILED
set /a totalMoney=%money%-%item1Price%
CD /D %GameLauncherDirectory%
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
PUSHD %username%
echo set money=%totalMoney% > money.bat

REM // ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

echo set weaponDMG=24 > weaponDMG.bat
echo set weapon=Karachi Gun > weapon.bat

REM // END OF ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REM // MESSAGE RECEIVED
CLS
echo.
echo Items successfully purchased!
echo.
echo Transaction Record:
echo    Hash ID: %random%C%random%A%random%%random%84NV%random%%random%HQ%random%%random%
echo    Transaction ID: %random%%random%
echo    --
echo    Item Received: %item1Name%
echo    Item Price: %currency%%item1Price%
echo    --
echo    Last Balance: %oldBalance%
echo    New Balance: %totalMoney%
echo.
PAUSE
goto STOREMENU

REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM //////////////// NEW ITEM 2 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:ITEM2
set itemPrice=%item1Price%
set oldBalance=%money%
TITLE EFTPOS System // %applicationName%
CLS
echo Storekeeper: Would you like to purchase this item?
echo.
echo   //\\  Item Name: %item2Name%
echo   //\\    Description: %item2Meta%
echo   //\\    Price: %currency%%item2Price%
echo.
echo.
echo             --- [Y/N] ---
set /p "itempurchase=> "
IF "%itempurchase%"=="Y" goto DISABLEDBETA
IF "%itempurchase%"=="y" goto DISABLEDBETA
IF "%itempurchase%"=="N" goto INIT
IF "%itempurchase%"=="n" goto INIT
GOTO ITEM2

:ITEM2YES
IF %money% LSS %item2Price% (
	set failedPurchase=1
	) else (
	set failedPurchase=0
)

IF %failedPurchase%==1 goto PURCHASEFAILED
set /a totalMoney=%money%-%item2Price%
CD /D %GameLauncherDirectory%
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
PUSHD %username%
echo set money=%totalMoney% > money.bat

REM // ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

echo set resourceWood=500 > weaponDMG.bat
echo set weapon=Karachi Gun > weapon.bat

REM // END OF ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REM // MESSAGE RECEIVED
CLS
echo.
echo Items successfully purchased!
echo.
echo Transaction Record:
echo    Hash ID: %random%C%random%A%random%%random%84NV%random%%random%HQ%random%%random%
echo    Transaction ID: %random%%random%
echo    --
echo    Item Received: %item2Name%
echo    Item Price: %currency%%item2Price%
echo    --
echo    Last Balance: %oldBalance%
echo    New Balance: %totalMoney%
echo.
PAUSE
goto STOREMENU

REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM //////////////// NEW ITEM 3 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:ITEM3
set itemPrice=%item1Price%
set oldBalance=%money%
TITLE EFTPOS System // %applicationName%
CLS
echo Storekeeper: Would you like to purchase this item?
echo.
echo   //\\  Item Name: %item3Name%
echo   //\\    Description: %item3Meta%
echo   //\\    Price: %currency%%item3Price%
echo.
echo.
echo             --- [Y/N] ---
set /p "itempurchase=> "
IF "%itempurchase%"=="Y" goto DISABLEDBETA
IF "%itempurchase%"=="y" goto DISABLEDBETA
IF "%itempurchase%"=="N" goto INIT
IF "%itempurchase%"=="n" goto INIT
GOTO ITEM2

:ITEM2YES
IF %money% LSS %item3Price% (
	set failedPurchase=1
	) else (
	set failedPurchase=0
)

IF %failedPurchase%==1 goto PURCHASEFAILED
set /a totalMoney=%money%-%item3Price%
CD /D %GameLauncherDirectory%
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
PUSHD %username%
echo set money=%totalMoney% > money.bat

REM // ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

echo set resourceWood=500 > weaponDMG.bat
echo set weapon=Karachi Gun > weapon.bat

REM // END OF ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REM // MESSAGE RECEIVED
CLS
echo.
echo Items successfully purchased!
echo.
echo Transaction Record:
echo    Hash ID: %random%C%random%A%random%%random%84NV%random%%random%HQ%random%%random%
echo    Transaction ID: %random%%random%
echo    --
echo    Item Received: %item3Name%
echo    Item Price: %currency%%item3Price%
echo    --
echo    Last Balance: %oldBalance%
echo    New Balance: %totalMoney%
echo.
PAUSE
goto STOREMENU

REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM //////////////// NEW ITEM 4 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:ITEM4
set itemPrice=%item1Price%
set oldBalance=%money%
TITLE EFTPOS System // %applicationName%
CLS
echo Storekeeper: Would you like to purchase this item?
echo.
echo   //\\  Item Name: %item4Name%
echo   //\\    Description: %item4Meta%
echo   //\\    Price: %currency%%item4Price%
echo.
echo.
echo             --- [Y/N] ---
set /p "itempurchase=> "
IF "%itempurchase%"=="Y" goto DISABLEDBETA
IF "%itempurchase%"=="y" goto DISABLEDBETA
IF "%itempurchase%"=="N" goto INIT
IF "%itempurchase%"=="n" goto INIT
GOTO ITEM2

:ITEM2YES
IF %money% LSS %item4Price% (
	set failedPurchase=1
	) else (
	set failedPurchase=0
)

IF %failedPurchase%==1 goto PURCHASEFAILED
set /a totalMoney=%money%-%item4Price%
CD /D %GameLauncherDirectory%
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
PUSHD %username%
echo set money=%totalMoney% > money.bat

REM // ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

echo set resourceWood=500 > weaponDMG.bat
echo set weapon=Karachi Gun > weapon.bat

REM // END OF ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REM // MESSAGE RECEIVED
CLS
echo.
echo Items successfully purchased!
echo.
echo Transaction Record:
echo    Hash ID: %random%C%random%A%random%%random%84NV%random%%random%HQ%random%%random%
echo    Transaction ID: %random%%random%
echo    --
echo    Item Received: %item4Name%
echo    Item Price: %currency%%item4Price%
echo    --
echo    Last Balance: %oldBalance%
echo    New Balance: %totalMoney%
echo.
PAUSE
goto STOREMENU

REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM //////////////// NEW ITEM 5 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:ITEM5
set itemPrice=%item1Price%
set oldBalance=%money%
TITLE EFTPOS System // %applicationName%
CLS
echo Storekeeper: Would you like to purchase this item?
echo.
echo   //\\  Item Name: %item5Name%
echo   //\\    Description: %item5Meta%
echo   //\\    Price: %currency%%item5Price%
echo.
echo.
echo             --- [Y/N] ---
set /p "itempurchase=> "
IF "%itempurchase%"=="Y" goto DISABLEDBETA
IF "%itempurchase%"=="y" goto DISABLEDBETA
IF "%itempurchase%"=="N" goto INIT
IF "%itempurchase%"=="n" goto INIT
GOTO ITEM2

:ITEM2YES
IF %money% LSS %item5Price% (
	set failedPurchase=1
	) else (
	set failedPurchase=0
)

IF %failedPurchase%==1 goto PURCHASEFAILED
set /a totalMoney=%money%-%item5Price%
CD /D %GameLauncherDirectory%
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
PUSHD %username%
echo set money=%totalMoney% > money.bat

REM // ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

echo set resourceWood=500 > weaponDMG.bat
echo set weapon=Karachi Gun > weapon.bat

REM // END OF ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REM // MESSAGE RECEIVED
CLS
echo.
echo Items successfully purchased!
echo.
echo Transaction Record:
echo    Hash ID: %random%C%random%A%random%%random%84NV%random%%random%HQ%random%%random%
echo    Transaction ID: %random%%random%
echo    --
echo    Item Received: %item5Name%
echo    Item Price: %currency%%item5Price%
echo    --
echo    Last Balance: %oldBalance%
echo    New Balance: %totalMoney%
echo.
PAUSE
goto STOREMENU

REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM //////////////// NEW ITEM 6 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:ITEM6
set itemPrice=%item1Price%
set oldBalance=%money%
TITLE EFTPOS System // %applicationName%
CLS
echo Storekeeper: Would you like to purchase this item?
echo.
echo   //\\  Item Name: %item6Name%
echo   //\\    Description: %item6Meta%
echo   //\\    Price: %currency%%item6Price%
echo.
echo.
echo             --- [Y/N] ---
set /p "itempurchase=> "
IF "%itempurchase%"=="Y" goto DISABLEDBETA
IF "%itempurchase%"=="y" goto DISABLEDBETA
IF "%itempurchase%"=="N" goto INIT
IF "%itempurchase%"=="n" goto INIT
GOTO ITEM2

:ITEM2YES
IF %money% LSS %item6Price% (
	set failedPurchase=1
	) else (
	set failedPurchase=0
)

IF %failedPurchase%==1 goto PURCHASEFAILED
set /a totalMoney=%money%-%item6Price%
CD /D %GameLauncherDirectory%
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
PUSHD %username%
echo set money=%totalMoney% > money.bat

REM // ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

echo set resourceWood=500 > weaponDMG.bat
echo set weapon=Karachi Gun > weapon.bat

REM // END OF ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REM // MESSAGE RECEIVED
CLS
echo.
echo Items successfully purchased!
echo.
echo Transaction Record:
echo    Hash ID: %random%C%random%A%random%%random%84NV%random%%random%HQ%random%%random%
echo    Transaction ID: %random%%random%
echo    --
echo    Item Received: %item6Name%
echo    Item Price: %currency%%item6Price%
echo    --
echo    Last Balance: %oldBalance%
echo    New Balance: %totalMoney%
echo.
PAUSE
goto STOREMENU

REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM //////////////// NEW ITEM 7 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:ITEM7
set itemPrice=%item1Price%
set oldBalance=%money%
TITLE EFTPOS System // %applicationName%
CLS
echo Storekeeper: Would you like to purchase this item?
echo.
echo   //\\  Item Name: %item7Name%
echo   //\\    Description: %item7Meta%
echo   //\\    Price: %currency%%item7Price%
echo.
echo.
echo             --- [Y/N] ---
set /p "itempurchase=> "
IF "%itempurchase%"=="Y" goto DISABLEDBETA
IF "%itempurchase%"=="y" goto DISABLEDBETA
IF "%itempurchase%"=="N" goto INIT
IF "%itempurchase%"=="n" goto INIT
GOTO ITEM2

:ITEM2YES
IF %money% LSS %item7Price% (
	set failedPurchase=1
	) else (
	set failedPurchase=0
)

IF %failedPurchase%==1 goto PURCHASEFAILED
set /a totalMoney=%money%-%item7Price%
CD /D %GameLauncherDirectory%
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
PUSHD %username%
echo set money=%totalMoney% > money.bat

REM // ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

echo set resourceWood=500 > weaponDMG.bat
echo set weapon=Karachi Gun > weapon.bat

REM // END OF ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REM // MESSAGE RECEIVED
CLS
echo.
echo Items successfully purchased!
echo.
echo Transaction Record:
echo    Hash ID: %random%C%random%A%random%%random%84NV%random%%random%HQ%random%%random%
echo    Transaction ID: %random%%random%
echo    --
echo    Item Received: %item7Name%
echo    Item Price: %currency%%item7Price%
echo    --
echo    Last Balance: %oldBalance%
echo    New Balance: %totalMoney%
echo.
PAUSE
goto STOREMENU

REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM //////////////// NEW ITEM 8 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

:ITEM8
set itemPrice=%item1Price%
set oldBalance=%money%
TITLE EFTPOS System // %applicationName%
CLS
echo Storekeeper: Would you like to purchase this item?
echo.
echo   //\\  Item Name: %item8Name%
echo   //\\    Description: %item8Meta%
echo   //\\    Price: %currency%%item8Price%
echo.
echo.
echo             --- [Y/N] ---
set /p "itempurchase=> "
IF "%itempurchase%"=="Y" goto DISABLEDBETA
IF "%itempurchase%"=="y" goto DISABLEDBETA
IF "%itempurchase%"=="N" goto INIT
IF "%itempurchase%"=="n" goto INIT
GOTO ITEM2

:ITEM2YES
IF %money% LSS %item8Price% (
	set failedPurchase=1
	) else (
	set failedPurchase=0
)

IF %failedPurchase%==1 goto PURCHASEFAILED
set /a totalMoney=%money%-%item8Price%
CD /D %GameLauncherDirectory%
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
PUSHD %username%
echo set money=%totalMoney% > money.bat

REM // ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

echo set resourceWood=500 > weaponDMG.bat
echo set weapon=Karachi Gun > weapon.bat

REM // END OF ITEM RECEIVED ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

REM // MESSAGE RECEIVED
CLS
echo.
echo Items successfully purchased!
echo.
echo Transaction Record:
echo    Hash ID: %random%C%random%A%random%%random%84NV%random%%random%HQ%random%%random%
echo    Transaction ID: %random%%random%
echo    --
echo    Item Received: %item8Name%
echo    Item Price: %currency%%item8Price%
echo    --
echo    Last Balance: %oldBalance%
echo    New Balance: %totalMoney%
echo.
PAUSE
goto STOREMENU

REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM //////////////// END OF STORE LISTING ITEM //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
REM ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


:DISABLED
REM // FOR ITEMS THAT ARE NOT FOR SALE
TITLE Store Error // %applicationName%
CLS
echo.
echo Sorry! But this item seems to be offsale! Please wait for the next store refresh/stockup!
echo.
echo ~ Storekeeper
echo.
echo.
TIMEOUT 4 /NOBREAK >NUL
goto STOREMENU

:DISABLEDBETA
REM // FOR ITEMS THAT ARE NOT EXISTING INTO THE MAIN GAME
TITLE Store Error // %applicationName%
CLS
echo.
echo Sorry! But this item is chucking raw data to the game engine. Please contact the Game Administrators immediately!
echo.
echo SYSTEM ERROR REPORT:
echo.
echo USER --
echo      STORE SERVER:
echo        Store Version: %latestVersion%
echo        Client Version: %applicationVersion%
echo.
echo        Server Name: STORE-APEX0%serverID%
echo        Server ID: %random%%random%
echo.
echo        Server Acception Switch: 1
echo        Server Engine Switch: 0
echo.
echo        Selector ID: %cho%
echo.
echo        -- STORE --
echo        Found at line %random% // findstr( global version / item-string );
echo        err: apex.nav failed to transact items at null.Pointer
echo        err: apex.server failed to detect item meta at null.Pointer
echo        err: apex.server failed to detect item id at db.nullPointer
echo.
echo        err: com.nxt.cdn connecting to local NXT repository...
echo        err: com.nxt.cdn connecting to local NXT repository...
echo        err: com.nxt.cdn connecting to local NXT repository...
echo        err: apex.outbound failed to contact to item manifest.
echo.
echo        err: game.nxt ticked id: 0 --^> 1; switching debug 0 --^> 1;
echo        err: debug.game: allocating new data at ~root --^> ~playerData
echo        err: debug.game: failed to allocate new updated data!
echo        err: debug.game: checking for item id...
echo        err: debug.game: item id is not valid in the game registry!
echo.
echo        apex: inbound.Port(80,14335) failed receiving any confirmation packets...
echo        apex: inbound.Port(80,14335) failed receiving any confirmation packets... 1
echo        apex: inbound.Port(80,14335) failed receiving any confirmation packets... 2
echo        apex: port.Forward protocol failed to receive confirmation packet id: %random%
echo.
echo        err: db.game: failed to detect item id!
echo        err: db.game: failed to detect item id!
echo        err: db.game: failed to detect item id!
echo        err: db.game: failed to detect item id!
echo        err: db.game: failed to detect item id!
echo.
echo      -- END OF SYSTEM DUMP --
PAUSE
goto STOREMENU

:LEAVE
CLS
echo.
echo Thanks for visiting the shop, %username%. See you next time!
echo.
echo.
TIMEOUT 2 /NOBREAK >NUL
:EXIT