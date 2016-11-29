Dim script
Set script = Nothing
Set script = Wscript.CreateObject("WScript.shell")
script.CurrentDirectory = "C:\Users\David\Documents\GitHub\FireWall"

script.run "start.vbs"