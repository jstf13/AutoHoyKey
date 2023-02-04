^+y:: Run, https://www.youtube.com
Return

^+a:: Run, https://aulas.ort.edu.uy
Sleep, 5000
FileAppend,
(
document.getElementById("username").value = "Hola";
), D:\documentos\AutoHotKey\AutoHoyKey\aulasForm.js
Sleep, 2000
Return

^+g:: Run, https://www.google.com/
Return

^+x:: Run, https://discord.gg/6KwynRsSuy
Return

^+j:: Run, https://pyxisjira.atlassian.net/plugins/servlet/ac/io.tempo.jira/tempo-app#!/my-work/week?type=TIME
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

!2::  ; tecla Alt izquierdo + 2
IfWinExist, ahk_class MozillaWindowClass
{
    WinGetTitle, Title, ahk_class MozillaWindowClass
    If Title contains YouTube
    {
        Send {Space}
    }
    Else
    {
        Send {Media_Play_Pause}
    }
}
Else
{
    Send {Media_Play_Pause}
}
Return

<!4:: Send, {Media_Next}
Return

<!Esc:: Send, {Media_Prev}
Return

<!q:: Send, {Browser_Back}
Return


<!w:: Send, {Browser_Forward}
Return


!+d::
FileCreateDir, C:\Users\juans\OneDrive\Escritorio\LastDownload
FileSelectFile, file, , , Select file to copy and extract, *.zip
FileCopy, %file%, C:\Users\juans\OneDrive\Escritorio\LastDownload%A_LoopFileName%
Run, E:\Archivos del programa\7-Zip\7z.exe x "C:\Users\juans\OneDrive\Escritorio\LastDownload%A_LoopFileName%" -o"C:\Users\juans\OneDrive\Escritorio\LastDownload",, Hide
Run, explorer.exe "C:\Users\juans\OneDrive\Escritorio\LastDownload"
Return

!+b::
Run, "C:\Users\juans\AppData\Local\WhatsApp\WhatsApp.exe",
Run, "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
Return

<!^+c::
Clipboard = ""
Send ^c
ClipWait
FileAppend, %Clipboard%, %A_Desktop%\Note.txt
Return

~[::
Input, UserInput, V T5 L4 C, {enter}.{esc}{tab}, bt,jhot,jgm,jpyx
; Otherwise, a match was found.
if (UserInput = "bt")
    Send, {backspace 3}Buenas tardes, 
else if (UserInput = "jpyx")
    Send, {backspace 5}juan.toledo@pyxis.com.uy
else if (UserInput = "jhot")
    Send, {backspace 5}juansebastiantoledofreire@hotmail.com
else if (UserInput = "jgm")
    Send, {backspace 4}juansebastiantoledofreire@gmail.com
else if (UserInput = "pass")
    Send, {backspace 5}ATBBpHQrcEFwYv48UMxffVCSRJUq63DB2488
else if (UserInput = "spam")
    Send, {backspace 10}
Loop, 0
{
    Send, Diego Madara Tate de Rocha {enter}
}
return

<!s::Run nircmd.exe changebrightness +10
<!a::Run nircmd.exe changebrightness -10

