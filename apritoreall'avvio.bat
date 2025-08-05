@echo off
set source=""C:\Users\Gabriele\Desktop\insiemeinverimentodisattivatorespammerefilesparati.bat""
set destination="C:\Users\Gabriele\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

if exist %source% (
    move %source% %destination%
    echo Il file è stato spostato con successo.
) else (
    echo Il file non esiste.
)
pause
