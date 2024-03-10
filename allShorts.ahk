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

; ; ; Abre Git Bash en la carpeta actual con las teclas Ctrl + Shift + B
; !+b::
; Run, "C:\Users\juans\AppData\Local\WhatsApp\WhatsApp.exe",
; Run, "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
; Return

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

; ; Abre Git Bash en la carpeta actual
; ^+b::
; Send, !d ; Activa la barra de direcciones del Explorador de Windows
; Send, ^c ; Copia la ruta de la carpeta actual al portapapeles
; Sleep, 100 ; Espera un momento para que se copie la ruta
; Run, "E:\Program Files\Git\git-bash.exe" --cd="%clipboard%"
; Sleep, 3000 ; Espera 4 segundos
; SendInput, {Raw}
; (
;   code .
  
;   exit
  
; )

; Return

; Abre Git Bash en la carpeta actual con las teclas Ctrl + Shift + B
^+b::
Send, !d ; Activa la barra de direcciones del Explorador de Windows
Send, ^c ; Copia la ruta de la carpeta actual al portapapeles
Sleep, 100 ; Espera un momento para que se copie la ruta
Run, "E:\Program Files\Git\git-bash.exe" --cd="%clipboard%"

; Espera hasta que la ventana de Git Bash esté activa o 5 segundos
WinWait, Git Bash,, 5

; ; Verifica si la ventana de Git Bash está activa
; IfWinActive, Git Bash
; {
;     ; Obtiene el ID de la ventana de Git Bash
;     WinGet, PID, PID, Git Bash

;     ; Espera un momento adicional si es necesario
;     Sleep, 1000
    
;     ; Cambia a la ventana de Git Bash
;     WinActivate, ahk_pid %PID%

;     ; Espera hasta que la ventana esté activa o 5 segundos
;     WinWaitActive, ahk_pid %PID%, , 5

    ; Ejecuta tus comandos en el Git Bash
    SendInput, {Raw}
    (
        code .
        
        exit
        
    )
    Return
; }
; Else
; {
;     ; Si la ventana de Git Bash no está activa en 5 segundos, muestra un mensaje
;     MsgBox, No se pudo detectar la ventana de Git Bash en el tiempo esperado.
; }
; Return





; End of special shortcuts

; Code sender (It's just Raw Text) 
<!^+v::
SendInput, {Raw}
(
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Web Simple</title>
</head>
<body>
    <h1>Mi Página Web Simple</h1>
    <p>Este es un ejemplo de una página web que utiliza una DLL en C#.</p>

    <!-- Agrega un espacio para mostrar el mensaje de la DLL -->
    <div id="message"></div>

    <!-- Agrega un botón para cargar el mensaje desde la DLL -->
    <button onclick="loadMessage()">Cargar Mensaje</button>

    <script>
        function loadMessage() {
            // Utiliza JavaScript para cargar el mensaje desde la DLL
            fetch('MyLibrary.dll/MyLibrary.Message/GetMessage')
                .then(response => response.text())
                .then(message => {
                    document.getElementById('message').textContent = message;
                });
        }
    </script>
</body>
</html>



)
; SendInput, {U+00F3} caracter ó
SendInput, {Raw}
(
)
; SendInput, {U+00F3} caracter ó
SendInput, {Raw}
(
)
Return


; Code sender (It's just Raw Text) 
<!^+r::
SendInput, {Raw}
(
dev2017

)
Sleep, 1000
SendInput, {Raw}
(
sudo su

)
; espera 1 segundo
Sleep, 1000
SendInput, {Raw}
(
dev2017

)
Return