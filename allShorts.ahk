#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

^+y:: 
Run, https://www.youtube.com
Return

^+a:: 
Run, https://aulas.ort.edu.uy
Return

^+g:: 
Run, https://www.google.com/
Return

^+x:: 
Run, https://discord.gg/6KwynRsSuy
Return

^+j:: 
Run, https://pyxisjira.atlassian.net/plugins/servlet/ac/io.tempo.jira/tempo-app#!/my-work/week?type=TIME
Return

<!^+t:: 
Run, https://translate.google.com/
Return

>!i:: 
Send, {7}
Return

>!o:: 
Send, {8}
Return

>!p:: 
Send, {9}
Return

>!k:: 
Send, {4}
Return

>!l:: 
Send, {5}
Return

>!;::
Send, {6}
Return

>!,:: 
Send, {1}
Return

>!.:: 
Send, {2}
Return

>!/:: 
Send, {3}
Return

>!-:: 
Send, {*}
Return

>!':: 
Send, {+}
Return

>![:: 
Send, {-}
Return


; Media shortcuts

<!3:: Send, {Volume_Up}
Return

<!1:: Send, {Volume_Down}
Return

!2::  
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

; End of media shortcuts

; Special shortcuts

<!;::Send, {U+00F1}
Return

~[::
Input, UserInput, V T5 L4 C, {enter}.{esc}{tab}, bt,jhot,jgm,jpyx,ph,lk,git,web
; Check if the input matches the values in the list
if (UserInput = "bt") {
  Send, {backspace 3}Buenas tardes,
} else if (UserInput = "jpyx") {
  Send, {backspace 5}juan.toledo@pyxis.tech
} else if (UserInput = "jhot") {
  Send, {backspace 5}juansebastiantoledofreire@hotmail.com
} else if (UserInput = "jgm") {
  Send, {backspace 4}juansebastiantoledofreire@gmail.com
} else if (UserInput = "jeng") {
  Send, {backspace 5}eng@juantoledo.site
} else if (UserInput = "ph") {
  Send, {backspace 3}{+}59899444693
} else if (UserInput = "lk") {
  Send, {backspace 3}{RawText}https://www.linkedin.com/in/juan-toledo-dev/
}  else if (UserInput = "git") {
  Send, {backspace 4}{RawText}https://github.com/jstf13
} else if (UserInput = "web") {
  Send, {backspace 4}{RawText}https://juantoledo.site/
} else if (UserInput = "pass") {
  Send, {backspace 5}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
} else if (UserInput = "spam") {
  Send, {backspace 10}
  Loop, 1 {
    Send, {gfgdfgsdfgfd} {enter}
  }
}
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
SendInput, ^c
ClipWait
If ErrorLevel
{
    MsgBox, No se pudo copiar el contenido al portapapeles.
    Return
}
FileAppend, %Clipboard%, %A_Desktop%\Note.txt, UTF-8
MsgBox, El contenido del portapapeles es: %Clipboard%
Return

; End of special shortcuts

; Code sender (It's just Raw Text) 
<!^+v::
SendInput, {Raw}
(
git add .
git commit -m "Test"
git push origin 4_Refactorizaci{U+00F3}n-de-c{U+00F3}digo_BBVAI-546

)
Return

<!^+x::
RunWait, cmd /c "git add ."
RunWait, cmd /c "git commit -m `"`"Test`"`""
RunWait, cmd /c "git push origin 4_Refactorización-de-código_BBVAI-546"
return