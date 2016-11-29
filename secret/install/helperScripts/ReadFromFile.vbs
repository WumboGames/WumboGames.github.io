
'We don't use this anywhere

dim args : set args = WScript.Arguments
WScript.Echo args(0)

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile("H:/Projects/VBS/davidsip.txt", 1)

Do While objFile.AtEndOfStream = False
	strLine = objFile.ReadLine
	WScript.Echo strLine
Loop





