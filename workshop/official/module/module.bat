@ECHO OFF
TITLE Workshop Module // %gameName%

REM // REQ PREQUISITES

:REQ

IF NOT %isInstanceRunning%==true GOTO FAIL
IF NOT %serviceTextGameSpecialIDThrottler%==ADSHBFASIBETBKETBEABIKFDTEETBABTAEABFDSBKFASGAFIGFAIGATEIGAETRBRAEB goto FAIL

REM // GLOBAL VARS

set moduleVersion=1.6

