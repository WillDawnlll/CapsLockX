;
; ����Ϊ UTF8 With BOM
;
#IfWinExist �������ռ�
    ~^c::
        Clipboard := ""
        ClipWait, 3, 1
        If ErrorLevel
        {
            MsgBox, The attempt 2 copy text onto the clipboard failed.
            Return
        }

        winid := WinExist("�������ռ�")
        if(winid){
            WinGet, current, ID, A
            WinActivate, ahk_id %winid%
            WinWaitActive, ahk_id %winid%
            SendEvent, ^{End}!{Enter 2}
            FormatTime, TimeString, , [yyyyMMdd.HHmmss]
            SendEvent {Text}%TimeString%
            SendEvent, ^v
            WinActivate, ahk_id %current%
        }
        return
