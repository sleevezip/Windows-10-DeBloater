x=msgbox("You must restart your computer to finish the process. Restart your computer?" ,4, "Question:")
If x = vbNo Then Wscript.Quit(0)
If x = VbYes Then
Set WshShell = CreateObject("WScript.Shell")
X = WshShell.run("shutdown.exe -r")
End If
