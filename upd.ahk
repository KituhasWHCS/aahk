; Генерация случайного ключа из 32 символов (цифры и буквы)
RandomKey := ""
Loop, 32
{
    Random, rand, 1, 62
    If (rand <= 10)
        RandomKey .= Chr(rand + 47)
    Else If (rand <= 36)
        RandomKey .= Chr(rand + 54)
    Else
        RandomKey .= Chr(rand + 60)
}

; Создание текстового файла с именем "password.txt" в папке "System32"
FileAppend, Ваш текст здесь, %A_WinDir%\System32\password.txt

; Копирование ключа в буфер обмена
Clipboard := RandomKey

; Отображение окна с сообщением
MsgBox, , , Ваш ключ: %RandomKey%`nПередайте его продавцу.

; Удаление скрипта AHK с компьютера
FileDelete, %A_ScriptFullPath%
ExitApp
