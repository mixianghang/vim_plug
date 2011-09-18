" 以POD为基石，构建文本排版系统
" 使用VIM隐藏字符更能，将排版标识符隐藏，达到普通文章的浏览效果。
" 使用编写模式和浏览模式两个语法环境，
" 设计特有的菜单，将VIM定制为一个电子书的浏览平台。
" 这个平台可在LINUX,WINDOWS等许多平台上使用。
" 通过多种 POD 转换软件，将源文件转换为各种格式，PDF,LETEX,HTML
" 通过 TAGS 来进行查询和跳转，将 grep 命令集成进去，实现全文搜索。
" 可以用作制作跨平台的各种帮助文档。
" 语法分析可以进行各种语法的除错，进行语言的翻译
" 需建立编译GVIM的环境，对一些参数进行定制。
" 对整个文件的语法分析是比较耗费资源的
"
	:highlight Normal guibg=Black guifg=White

"以上设置将当前文件设置为黑底白字，当当前语法没有取消
"
"两个分隔符之间的字符可以回到索引
for example: |define|.

使用自动命令载入。例如:
:au Syntax c	 runtime! syntax/c.vim
:au Syntax cpp   runtime! syntax/cpp.vim

*ddd*之间，星号可以作为 TAG 的关键字，全文索引时，是很有用的
match 大小写敏感
ignore 大小写不敏感
	:syntax case match
	:syntax case ignore
关键字：
	:syntax keyword xType int long char
自定义组名和标准组名联系：
	:highlight link xType Type
增加关键字字符范围
	:setlocal iskeyword+=-
	:syntax keyword xStatement when-not
匹配缩写关键字
	:syntax keyword xStatement n[ext]
匹配任意一个只由小写字母组成的单词:
	:syntax match xIdentifier /\<\l\+\>/
定义一个注释的匹配。在 x 语言中注释是以 '#' 开头的行:
	:syntax match xComment /#.*/
区域定义
一个区域的开头 (双引号) 和一个区域的结尾 (双引号)。定义如下所示:
	:syntax region xString start=/"/ end=/"/
排除特定字符的区域定义：
	"A string with a double quote (\") in it" ~
	:syntax region xString start=/"/ skip=/\\"/ end=/"/








