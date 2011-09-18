"" 编程,什么语言的帮助，就用什么语言来写
"" 脚本实例，首先是可阅读的，其次是可执行的
"" 执行的结果，能够生成更具可读性的内容，和更详尽的信息
"":let i = 1
"":while i < 5
"":	echo "count is" i
"":	let i += 1
"":endwhile
"" 文件保存为 vim编程.vim
"" :so vim编程.vim将执行命令
"" :let {variable} = {expression}
"":for i in range(1, 44)
"":  echo "count is" i
"":endfor
"":echo 0x7f 036
"let s:count = 1
"while s:count < 5
"	let s:count += 1
"	echo s:count
"endwhile
"source vim编程.vim
"" s:count 脚本内有效的局部变量
"" b:count 缓冲区的局部变量
"" w:count 窗口的局部变量
"" g:count 全局变量，也用于函数中
"" v:name  Vim 预定义的变量
"unlet s:count " 删除变量
"unlet! s:count " 删除变量，在不存在的时候也不报错
""当一个脚本结束时，它使用的局部变量不会自动删除。下一次脚本被执行时，
""旧的变量值仍可被执行
"f !exists("s:call_count")
"let s:call_count = 0
"ndif
"et s:call_count = s:call_count + 1
"cho "called" s:call_count "times"
" exists() 函数检查一个变量是否已经被定义过，
" if !exists(s:call_count) 不会得到想要的结果
" if !exists("s:call_count")
" if "true" 将返回假值
"et name = "peter"
"cho name
"et name = "\"peter\""
"cho name
"et name = '"peter"'
"cho name
" $NAME 环境变量
" &name 选项
" @r 寄存器
"cho "The value of 'tabstop' is " &ts
"cho "Your home directory is" $HOME
"f @a > 5
"echo "a >5"
"ndif
let save_ic = &ic
set noic
/The Start/,$delete
let &ic = save_ic
