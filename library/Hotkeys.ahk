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

;重新加载程序
^F9::Reload

;切换输入法
^Space::#Space

;快速置顶软件
CapsLock & t:: WinSetAlwaysOnTop -1, 'A'    ;置顶当前窗口

; 上下左右映射
CapsLock & h:: Send "{left}"
CapsLock & j:: Send "{down}"
CapsLock & k:: Send "{up}"
CapsLock & l:: Send "{right}"

; Pycharm
#HotIf WinActive("ahk_exe pycharm64.exe")
F5:: Send "^+{F10}"  ;快速运行
Esc::Send "{Shift}+{Esc}" ;隐藏窗口
