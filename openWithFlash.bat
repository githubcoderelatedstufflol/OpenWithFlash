@echo off
cd C:\
mkdir openwithflash_files
cd openwithflash_files
curl --output Flash.exe https://ia801802.us.archive.org/23/items/adobe-flash-player-projector/flashplayer_32_sa.exe
reg add "HKCR\*\shell\Open with Adobe Flash\command"
reg add "HKCR\*\shell\Open with Adobe Flash\command" /ve /d "C:\openwithflash_files\Flash.exe %1"
reg add "HKCR\*\shell\Open with Adobe Flash\command" /v Icon /d "C:\openwithflash_files\Flash.exe"
cd C:\Users\%username%\Downloads
echo Done! Try it by downloading a SWF and right clicking it and click "Open with Adobe Flash".
pause
