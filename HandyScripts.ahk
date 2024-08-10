#Requires AutoHotkey >=2.0
#SingleInstance Force
#Include library
#Include Hotkeys.ahk

;加载托盘图标
if FileExist("img\assistant.png") {
    TraySetIcon("img\assistant.png")
}
