@ECHO OFF
:INIT
TITLE Welcome to the Store // TextGame
set applicationVersion=1.3
set latestVersion=1.3

REM // GRAPHICAL ASSETS
REM Set the console to codepage 65001 (UTF-8).
for /f "tokens=2 delims=:" %%a in ('chcp.com') do set "CONSOLE_CODEPAGE=%%a"
set "CONSOLE_CODEPAGE=%CONSOLE_CODEPAGE: =%"
chcp.com 65001 >NUL

set "GBOX_LIGHT_SHADE=░"
set "GBOX_MEDIUM_SHADE=▒"
set "GBOX_DARK_SHADE=▓"
set "GBOX_LIGHT_VERTICAL=│"
set "GBOX_LIGHT_VERTICAL_AND_LEFT=┤"
set "GBOX_VERTICAL_SINGLE_AND_LEFT_DOUBLE=╡"
set "GBOX_VERTICAL_DOUBLE_AND_LEFT_SINGLE=╢"
set "GBOX_DOWN_DOUBLE_AND_LEFT_SINGLE=╖"
set "GBOX_DOWN_SINGLE_AND_LEFT_DOUBLE=╕"
set "GBOX_DOUBLE_VERTICAL_AND_LEFT=╣"
set "GBOX_DOUBLE_VERTICAL=║"
set "GBOX_DOUBLE_DOWN_AND_LEFT=╗"
set "GBOX_DOUBLE_UP_AND_LEFT=╝"
set "GBOX_UP_DOUBLE_AND_LEFT_SINGLE=╜"
set "GBOX_UP_SINGLE_AND_LEFT_DOUBLE=╛"
set "GBOX_LIGHT_DOWN_AND_LEFT=┐"
set "GBOX_LIGHT_UP_AND_RIGHT=└"
set "GBOX_LIGHT_UP_AND_HORIZONTAL=┴"
set "GBOX_LIGHT_DOWN_AND_HORIZONTAL=┬"
set "GBOX_LIGHT_VERTICAL_AND_RIGHT=├"
set "GBOX_LIGHT_HORIZONTAL=─"
set "GBOX_LIGHT_VERTICAL_AND_HORIZONTAL=┼"
set "GBOX_VERTICAL_SINGLE_AND_RIGHT_DOUBLE=╞"
set "GBOX_VERTICAL_DOUBLE_AND_RIGHT_SINGLE=╟"
set "GBOX_DOUBLE_UP_AND_RIGHT=╚"
set "GBOX_DOUBLE_DOWN_AND_RIGHT=╔"
set "GBOX_DOUBLE_UP_AND_HORIZONTAL=╩"
set "GBOX_DOUBLE_DOWN_AND_HORIZONTAL=╦"
set "GBOX_DOUBLE_VERTICAL_AND_RIGHT=╠"
set "GBOX_DOUBLE_HORIZONTAL=═"
set "GBOX_DOUBLE_VERTICAL_AND_HORIZONTAL=╬"
set "GBOX_UP_SINGLE_AND_HORIZONTAL_DOUBLE=╧"
set "GBOX_UP_DOUBLE_AND_HORIZONTAL_SINGLE=╨"
set "GBOX_DOWN_SINGLE_AND_HORIZONTAL_DOUBLE=╤"
set "GBOX_DOWN_DOUBLE_AND_HORIZONTAL_SINGLE=╥"
set "GBOX_UP_DOUBLE_AND_RIGHT_SINGLE=╙"
set "GBOX_UP_SINGLE_AND_RIGHT_DOUBLE=╘"
set "GBOX_DOWN_SINGLE_AND_RIGHT_DOUBLE=╒"
set "GBOX_DOWN_DOUBLE_AND_RIGHT_SINGLE=╓"
set "GBOX_VERTICAL_DOUBLE_AND_HORIZONTAL_SINGLE=╫"
set "GBOX_VERTICAL_SINGLE_AND_HORIZONTAL_DOUBLE=╪"
set "GBOX_LIGHT_UP_AND_LEFT=┘"
set "GBOX_LIGHT_DOWN_AND_RIGHT=┌"
set "GBOX_FULL_BLOCK=█"
set "GBOX_LOWER_HALF_BLOCK=▄"
set "GBOX_LEFT_HALF_BLOCK=▌"
set "GBOX_RIGHT_HALF_BLOCK=▐"
set "GBOX_UPPER_HALF_BLOCK=▀"

REM Restore the previous console codepage.
chcp.com %CONSOLE_CODEPAGE% >NUL

REM Set the console to codepage 65001 (UTF-8).
for /f "tokens=2 delims=:" %%a in ('chcp.com') do set "CONSOLE_CODEPAGE=%%a"
set "CONSOLE_CODEPAGE=%CONSOLE_CODEPAGE: =%"
chcp.com 65001 >NUL

set "GCTL_WHITE_SMILING_FACE=☺"
set "GCTL_BLACK_SMILING_FACE=☻"
set "GCTL_BLACK_HEART_SUIT=♥"
set "GCTL_BLACK_DIAMOND_SUIT=♦"
set "GCTL_BLACK_CLUB_SUIT=♣"
set "GCTL_BLACK_SPADE_SUIT=♠"
set "GCTL_BULLET=•"
set "GCTL_INVERSE_BULLET=◘"
set "GCTL_WHITE_CIRCLE=○"
set "GCTL_INVERSE_WHITE_CIRCLE=◙"
set "GCTL_MALE_SIGN=♂"
set "GCTL_FEMALE_SIGN=♀"
set "GCTL_EIGHTH_NOTE=♪"
set "GCTL_BEAMED_EIGHTH_NOTES=♫"
set "GCTL_WHITE_SUN_WITH_RAYS=☼"
set "GCTL_BLACK_RIGHT_POINTER=►"
set "GCTL_BLACK_LEFT_POINTER=◄"
set "GCTL_UP_DOWN_ARROW=↕"
set "GCTL_DOUBLE_EXCLAMATION_MARK=‼"
set "GCTL_PILCROW_SIGN=¶"
set "GCTL_SECTION_SIGN=§"
set "GCTL_BLACK_RECTANGLE=▬"
set "GCTL_UP_DOWN_ARROW_WITH_BASE=↨"
set "GCTL_UP_ARROW=↑"
set "GCTL_DOWN_ARROW=↓"
set "GCTL_RIGHT_ARROW=→"
set "GCTL_LEFT_ARROW=←"
set "GCTL_RIGHT_ANGLE=∟"
set "GCTL_LEFT_RIGHT_ARROW=↔"
set "GCTL_BLACK_UP_TRIANGLE=▲"
set "GCTL_BLACK_DOWN_TRIANGLE=▼"
set "GCTL_HOUSE=⌂"

REM Restore the previous console codepage.
chcp.com %CONSOLE_CODEPAGE% >NUL

REM // Graphical Ports
set LINE_HORI=%GBOX_DOUBLE_HORIZONTAL%
set LINE_VERT=%GBOX_DOUBLE_VERTICAL%
set CORNER_TL=%GBOX_DOUBLE_DOWN_AND_RIGHT%
set CORNER_TR=%GBOX_DOUBLE_DOWN_AND_LEFT%
set CORNER_BL=%GBOX_DOUBLE_UP_AND_RIGHT%
set CORNER_BR=%GBOX_DOUBLE_UP_AND_LEFT%

REM // STORE VARIABLES
set item1=
set item2=
set item3=
set item4=
set item5=

set item1price=
set item2price=
set item3price=
set item4price=
set item5price=

set resourceIronDemand=
set resourceWoodDemand=
set resourceGoldDemand=
set resourceFoodDemand

:CHECKLIST
IF "%applicationVersion%" NEQ "%latestVersion%" goto STOREERROR
goto STOREMENU

:STOREERROR
CLS
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
echo %CORNER_TL%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%CORNER_TR%
echo %LINE_VERT%      Welcome to the Store!                   %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %LINE_VERT% 1] 5 x Red Apples - $50                      %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %LINE_VERT% 2] Legendary Gatling Rifle - $1300           %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %LINE_VERT% 3] 10 x Heal Potions - $520                  %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %LINE_VERT%                                              %LINE_VERT%
echo %CORNER_BL%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%LINE_HORI%%CORNER_BR%
set /p "cho=>"
IF %cho%==1 goto ITEM1
IF %cho%==2 goto ITEM2
IF %cho%==3 goto ITEM3
IF %cho%==4 goto ITEM4
IF %cho%==5 goto ITEM5
echo.
echo Invalid option!
TIMEOUT 1 /NOBREAK >NUL
PAUSE