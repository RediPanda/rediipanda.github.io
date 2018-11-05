set localDir=%cd%
TITLE Money Statement Module
@ECHO OFF
:INIT

REM // ENVIRONMENTAL VARIABLES

set username=VariableName
set highMoney=2000
set lowMoney=200
set price=1200

CLS
echo.
echo Current variable settings:
echo.
echo High Money : %highMoney%
echo Low Money : %lowMoney%
echo Price Deduction : %price%
TIMEOUT 5 /NOBREAK >NUL

CLS
echo.
echo Starting the IF statement for High Money...
echo.
echo Output: IF %highMoney% LSS %price% set hmid=1
IF %highMoney% LSS %price% set hmid=1

CLS
echo.
echo Starting the IF statement for Low Money...
echo.
echo Output: IF %highMoney% LSS %price% set lmid=1
IF %lowMoney% LSS %price% set lmid=1

CLS
echo.
echo Starting the IF NOT statement for High Money...
echo.
echo Output: IF NOT %highMoney% LSS %price% set h2mid=1
IF NOT %highMoney% LSS %price% set h2mid=1

CLS
echo.
echo Starting the IF NOT statement for High Money...
echo.
echo Output: IF NOT %highMoney% LSS %price% set l2mid=1
IF NOT %lowMoney% LSS %price% set l2mid=1

CLS
echo.
echo Report:
echo.
echo High Money : %hmid%
echo Low Money : %lmid%
echo NOT High Money : %h2mid%
echo NOT Low Money : %l2mid%
PAUSE