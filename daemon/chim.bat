@echo off
setlocal EnableExtensions EnableDelayedExpansion
cls
if exist "!AppData!\Xaya\appdata.orv" (
    set /p DataDirPath=<!AppData!\Xaya\appdata.orv
	tasklist|find /i "xayad.exe" >NUL
	if errorlevel 1 xayad.exe -wallet=vault.dat  -wallet=game.dat -testnet -server -rpcallowip=127.0.0.1 -datadir=!DataDirPath! -zmqpubhashtx=tcp://127.0.0.1:28332 -zmqpubhashblock=tcp://127.0.0.1:28332 -zmqpubrawblock=tcp://127.0.0.1:28332 -zmqpubrawtx=tcp://127.0.0.1:28332
	goto :eof	
) else (
	tasklist|find /i "xayad.exe" >NUL
	if errorlevel 1 xayad.exe -wallet=vault.dat  -wallet=game.dat  -testnet -server -rpcallowip=127.0.0.1 -zmqpubhashtx=tcp://127.0.0.1:28332 -zmqpubhashblock=tcp://127.0.0.1:28332 -zmqpubrawblock=tcp://127.0.0.1:28332 -zmqpubrawtx=tcp://127.0.0.1:28332
	goto :eof
)

