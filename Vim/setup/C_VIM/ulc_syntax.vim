" Vim syntax file
" Language: ULC2 C
" Maintainer: Songzhiquan
" Last Change: 2010 Oct 15

" Quit when a custom syntax file was already loaded
if exists("b:current_syntax")
	finish
endif

" Comment group 注释
hi def link cComment Comment
hi def link cGray    Comment
" Constant group 常数
hi def link cConstant Constant
hi def link cString String
hi def link cCharacter Character
hi def link cNumber Number
hi def link cBoolean Boolean
hi def link cFloat Float
hi def link cPink Constant
" Identifier group 变量，函数
hi def link cIdentifier Identifier
hi def link cFunction Function
hi def link cTeal Identifier
" Statement group 关键字 保留字 连接符
hi def link cStatement Statement
hi def link cConditional Conditional
hi def link cRepeat Repeat
hi def link cLabel Label
hi def link cOperator Operator
hi def link cKeyword Keyword
hi def link cException Exception
hi def link cYellow Statement
" PreProc group 预处理命令
hi def link cPreProc PreProc
hi def link cInclude Include
hi def link cDefine Define
hi def link cMacro Macro
hi def link cPreCondit PreCondit
hi def link cRed PreCondit
" Type group 数据类型
hi def link cType Type
hi def link cStorageClass StorageClass
hi def link cStructure Structure
hi def link cTypedef Typedef
hi def link cGreen Typedef
" Special group 特殊字符，需注意字符
hi def link cSpecial Special
hi def link cSpeicialChar SpecialChar
hi def link cTag Tag
hi def link cDelimiter Delimiter
hi def link cSpecialComment SpecialComment
hi def link cDebug Debug
hi def link cOrange Debug
" Underlined group 链接 地址
hi def link cUnderlined Underlined
" Ignore Group 忽略 隐藏 格式方面的内容
hi def link cIgnore Ignore
" Error group 错误
hi def link cError Error
hi def link cBadContinuation Error
" Todo group 需要特殊注意的地方
hi def link cTodo Todo

" Include Files 头文件分类
" armInclude c166公用头文件
" winInclude 模拟器公用头文件
" pubInclude 公用头文件
" ulcInclude 用户定义头文件
" virInclude 虚拟头文件
" notInclude 不存在头文件
" uleInclude 大小写错误头文件
" othInclude 包含文件
" binInclude 二进制文件
" temInclude 中间文件

" PreProc scalar 预处理常量
" 分支编译常量
" 头文件标识符
" 宏定义
" 环境变量
hi def link armInclude cGray
hi def link winInclude cPink
hi def link pubInclude cRed
hi def link ulcInclude cTeal
hi def link virInclude cGreen
hi def link notInclude Error
hi def link uleInclude Todo
hi def link othInclude Underlined
hi def link binInclude cYellow
hi def link temInclude cOrange

syn keyword armInclude armInclude
syn keyword winInclude winInclude
syn keyword pubInclude pubInclude
syn keyword ulcInclude ulcInclude
syn keyword virInclude virInclude
syn keyword notInclude notInclude
syn keyword uleInclude uleInclude
syn keyword othInclude othInclude
syn keyword binInclude binInclude
syn keyword temInclude temInclude

let b:current_syntax = "c"

" vim: ts=8


