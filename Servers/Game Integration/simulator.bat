@ECHO OFF
set localDir=%cd%

:INIT
TITLE Account Manager // NXT Studios
CLS
echo.
echo         // IMPORTANT DOCUMENTATION \\
echo.
echo  This is an official documentation of NXT's Simulation Account Migration Service.
echo.
echo  Use of this software is only used to implement an active account status.
echo  Do not use this service other than to fix configuration or game bugs.
echo.
echo  Any attempts of this software used outside NXT premises or distributed among third parties,
echo  will be locked out of the NXT Registration Server, placed under a watchlist and,
echo  will have a permanant record on the NXT Employee's Report Card.
echo.
echo  Thanks for your cooperation.
echo.
echo // NXT Management and Security Divisions
TIMEOUT 5 /NOBREAK >NUL

:ACCOUNTSYSTEM 
PUSHD %appdata%
PUSHD "NXT Studios"
PUSHD savedData
PUSHD userData
CLS
echo.
echo SYSTEM // Please type in a registered username:
echo.
echo // Username: _________________
echo // Password: _________________
echo.
echo.
set /p "inputUsername=> "
PUSHD %inputUsername%
CALL %inputUsername%-login.bat
CALL localclass.bat
IF %inputUsername%==%username% goto ACCOUNTSYSTEM2
CLS
echo.
echo SYSTEM // Invalid username!
echo.
echo // Username: %inputUsername%
echo // Password: _________________
echo.
PAUSE
goto ACCOUNTSYSTEM

:ACCOUNTSYSTEM2
CLS
echo.
echo SYSTEM // Please type in the registered password:
echo.
echo // Username: %inputUsername%
echo // Password: _________________
echo.
echo.
set /p "inputPass=> "
IF %inputPass%==%password% goto EXECUTE
CLS
echo.
echo SYSTEM // Invalid password!
echo.
echo // Username: %inputUsername%
echo // Password: **********
echo.
PAUSE
goto ACCOUNTSYSTEM

:EXECUTE
set applicationVersion=1.5
CLS
echo.
echo.
echo  1] Account Information
echo.
echo  2] Launch the NXT File
echo.
echo  3] Exit to Windows
echo.
echo.
set /p "cho=> "
IF %cho%==1 goto INFORMATION
IF %cho%==2 goto LAUNCH
IF %cho%==3 goto EOF

:INFORMATION
CLS
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
echo     Money            : %money%
echo     Level            : %userLevel%
echo     Rank             : %userRank%
echo     EXP              : %xp%
echo     Weapon           : %weapon%
echo     Weapon DMG       : %weaponDMG%
echo     Account Version  : %accountAge%
echo.
echo.
PAUSE
goto EXECUTE

:LAUNCH
CD /D %localDir%
CALL store.bat
goto EXECUTE

:EOF