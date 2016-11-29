'A helper script that copies the file from the url of the first arguement to the path of the second

' Get Arguments
    public args : set args = WScript.Arguments

' Set your settings
    strFileURL = args(0)
    strHDLocation = args(1)

	'Display what is being copied
    'msgbox "Copying File from: " & strFileURL

' Fetch the file
    Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")

	'objXMLHTTP.open "GET", "["&strFileURL&"]?_t=" & Replace(CStr(CDbl(Now())), ".", ""), True
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
