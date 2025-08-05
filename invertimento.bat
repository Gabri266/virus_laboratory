@echo off
REM Inverti i tasti del mouse
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v SwapMouseButtons /t REG_SZ /d 1 /f
REM Aggiorna le impostazioni
RUNDLL32.EXE USER32.DLL,SwapMouseButton
echo I tasti del mouse sono stati invertiti.
pause
