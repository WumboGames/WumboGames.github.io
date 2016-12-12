dim args : set args = WScript.Arguments

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile(args(0), 1)

Set oShell = WScript.CreateObject("WScript.Shell")

Do While objFile.AtEndOfStream = False
	strLine = objFile.ReadLine
	'msgbox strLine
	oShell.run strLine, 0, TRUE
Loop

