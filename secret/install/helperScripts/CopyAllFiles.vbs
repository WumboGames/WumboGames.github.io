'Copies all files in the


dim args : set args = WScript.Arguments

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile(args(0), 1)

Set script = Wscript.CreateObject("WScript.Shell")

Do While objFile.AtEndOfStream = False
	copyFrom = objFile.ReadLine
	copyTo = objFile.ReadLine
	
	script.run "helperScripts\CopyFileFromInternet.vbs " & copyFrom & " " & copyTo, 0, TRUE
	
Loop
