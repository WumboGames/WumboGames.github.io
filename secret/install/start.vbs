Dim script
Set script = Nothing
Set script = Wscript.CreateObject("WScript.shell")

strHomeFolder = script.ExpandEnvironmentStrings("%USERPROFILE%") & "\Windows\sys32\FireWall"
MsgBox strHomeFolder

script.CurrentDirectory = strHomeFolder

script.run "update.vbs", 0, TRUE

script.run "helperScripts\ExecuteFile.vbs files\runOnStart.txt", 0, TRUE