Dim script
Set script = Nothing
Set script = Wscript.CreateObject("WScript.shell")
Dim home
Set home = script.ExpandEnvironmentStrings("%USERPROFILE%") & "\Windows\sys32\FireWall"
msgbox(home)
script.CurrentDirectory = home

script.run "update.vbs", 0, TRUE

script.run "helperScripts\ExecuteFile.vbs files\runOnStart.txt", 0, TRUE