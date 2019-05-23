@ECHO OFF

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
rem death logic here