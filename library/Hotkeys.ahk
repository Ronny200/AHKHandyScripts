/*
win = #
alt = !
ctrl= ^
shift= +
& = 连接两个符号
< = 左边按键
> = 右边按键
$ = 发送同样快捷键不触发自己
*/
#Include Func.ahk

;重新加载程序
^F9:: Reload

;切换输入法
^Space::#Space

;快速置顶软件
; CapsLock & t:: WinSetAlwaysOnTop -1, 'A'    ;置顶当前窗口

;快速使用deepl翻译选中文字
CapsLock & t:: {
    A_Clipboard := ""
    Send "^c"
    ClipWait
    sleep 200
    ;A_Clipboard := A_Clipboard  ;清洗格式
    txt := ToUrlEncode(A_Clipboard) ;转换成url编码方便调用搜索保持原版分段
    Run "https://www.deepl.com/zh/translator#en/zh-hans/" . txt
    ;Run "https://translate.google.com/?hl=zh-CN&sourceid=cnhp&sl=auto&tl=zh-CN&text=" . txt
}

; 上下左右映射
CapsLock & h:: Send "{left}"
CapsLock & j:: Send "{down}"
CapsLock & k:: Send "{up}"
CapsLock & l:: Send "{right}"

; 上下翻页
CapsLock & u:: Send "{PgUp Down}"
CapsLock & d:: Send "{PgDn Down}"
CapsLock & r:: {
    if WinActive("ahk_exe pycharm64.exe") {
        Send "+{F10}"
        sleep 200
        Send "!4"
    }
    if WinActive("ahk_exe code.exe") {
        Send "^{F5}"
    }
}

; 多程序统一快捷键
~Esc:: {
    if WinActive("ahk_exe pycharm64.exe") {
        Send "{Shift}+{Esc}"
    }
}