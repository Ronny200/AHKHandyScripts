; 替换文本为url编码格式
ToUrlEncode(txt) {
  ; 将空格替换为 %20
  replacedData := RegExReplace(txt, " ", "%20")
  ; 将回车符替换为 %0A%0A
  replacedData := RegExReplace(txt, "`r`n", "%0A%0A")
  ; 返回内容
  return replacedData
}