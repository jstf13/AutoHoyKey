^+y:: Run, https://www.youtube.com
Return

^+a:: Run, https://aulas.ort.edu.uy
Return

^+g:: Run, https://www.google.com/
Return

^+x:: Run, https://www.bible.com/es/
Return

<!^+t:: Run, https://translate.google.com/
Return

; Presionar CapsLock mas la vocal para acentuarla
; Para la ñ usar la tecla ;
; Para la ¿ usamos CapsLock y la tecla que tiene actualmente el ?

; mapear la ; como ñ
CapsLock & `;::
If GetKeyState("Shift", "P")
    Send Ñ
Else
    Send ñ
return 

>!i:: Send, {7}
Return

>!o:: Send, {8}
Return

>!p:: Send, {9}
Return

>!k:: Send, {4}
Return

>!l:: Send, {5}
Return

>!;:: Send, {6}
Return

>!,:: Send, {1}
Return

>!.:: Send, {2}
Return

>!/:: Send, {3}
Return

>!-:: Send, {*}
Return

>!':: Send, {+}
Return

>![:: Send, {-}
Return


<!3:: Send, {Volume_Up}
Return


<!1:: Send, {Volume_Down}
Return


<!2:: Send, {Media_Play_Pause}
Return

<!4:: Send, {Media_Next}
Return

<!Esc:: Send, {Media_Prev}
Return

<!q:: Send, {Browser_Back}
Return


<!w:: Send, {Browser_Forward}
Return


~[::
Input, UserInput, V T5 L4 C, {enter}.{esc}{tab}, bt,jhot,jgm
if (ErrorLevel = "Max")
{
    MsgBox, You entered "%UserInput%", which is the maximum length of text.
    return
}
if (ErrorLevel = "Timeout")
{
    MsgBox, You entered "%UserInput%" at which time the input timed out.
    return
}
if (ErrorLevel = "NewInput")
    return
If InStr(ErrorLevel, "EndKey:")
{
    MsgBox, You entered "%UserInput%" and terminated the input with %ErrorLevel%.
    return
}
; Otherwise, a match was found.
if (UserInput = "bt")
    Send, {backspace 3}Buenas tardes, 
else if (UserInput = "jhot")
    Send, {backspace 5}juansebastiantoledofreire@hotmail.com
else if (UserInput = "jgm")
    Send, {backspace 4}juansebastiantoledofreire@gmail.com
return

<!s::Run nircmd.exe changebrightness +10
<!a::Run nircmd.exe changebrightness -10

