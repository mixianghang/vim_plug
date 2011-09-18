# 使用Vim的脚本模拟其他的语言，使之能看到及时的效果。
# 其他任何一种语言都无法随时看到效果，解释型语言可及时看到
# 语法的执行的效果，是否正确执行，是否有输出，是否语法正确。
# Vim平台的圣经浏览器 Vim版本的脚本调试器，运行脚本，编辑脚本
# 执行脚本，看到效果，将执行结果返回到当前缓冲区，看到效果。
# Sql 的用sqlite测试，前端加一个命令的转换命令
# 例如易表 有语法编译的需求，前端转换，各种函数对应的语法，
# 用 Perl 来写各种函数的运行机理，替代算法。
# 模拟一个运行环境，多表，多行，多列，图形
# 各种脚本的调试运行环境，能运行的环境下。一些小的脚本
# 只是汇报，是否正确，还是是否错误，错误的地方在哪里。
# perl6 tools? vim 脚本 来输入，编辑代码，进行基本的处理。
# perl6语言更加适合一种静态的程序的语法更加适合解析复杂的数据结构，
# 
# Perl6的 语法更加高效，更加 表达汇编语言最合适的语言，就是
# 表达CPU运作状况的，针对Parrot的定义CPU的结构和寄存器数量。
# 针对现有的硬件能力，制作最小模块单元的语法。指令集对应相应的
# 硬件体系。太多的CPU，太多的体系架构，硬件可以很复杂，可以通过
# 门电路实现复杂的算法。最基本的硬件语言。更快？更稳定？更具维护性？
# 测试几个C代码。我的问题，如何切换风格，使用
my %keyword = (
	global => g,
	source => so,
	sleep => sl,
	map => ma,
	noremap => no,
	unmap => unm,
	cmap => cmap,
	imap => imap,
	nmap => nmap,
	vmap => vmap,
	omap => omap,
	mapc => mapclear,
	imapc => imapclear,
	vmapc => vmapclear,
	omapc => omapclear,
	nmapc => nmapclear,
	mkexrc => mk,
	mksession => mks,
	abbreviate => ab,
	unabbreviate => una,
	noreabbrev => norea,
	iabbrev => iab,
	cabbrev => cab,
	abclear => abc,
	cabclear => cabc,
	iabclear => iabc,
	set => se,
	setLocal => setl,
	setglobal => setg,
	fix => fixdel,
	options => opt,
	aleph => al,
	allowrevins => ari,
	altkeymap => skmm
	ambiwidth => akm,
	antialias => anti,
	autochdir => acd
	arabic => arab,
	arabicshape => arshape,
	autoindent => ai,
	autoread => ar,
	autowrite => aw,
	autowriteall =>  awa,
	background => bg,
	backup => bk,
	backspace => bs,
	backupcopy => bkc,
	backupext => bex,
	backupdir => bdir,
	backupskip => bsk,
	balloondelay => bdlay,
	ballooneval => beval,
	balloonexpr => bexpr,
	binary => bin,
	bioskey => biosk,
	breakat => brk,
	browsedir => bsdir,
	bufhidden => bh,
	buflisted => bl,
	buftype => bt,
	basemap => cmp,
	cdpath => cd
	charconvert => ccv,
	cindent => cin,
	ciinkes => cink,
	cinoptions => cino,
	cinwords => cinw,
	clipboard => cb,
	cmdheight => ch,
	cmdwinheight => cwh,
	colorcolumn => cc,
	columns => co,
	comments => com,
	commentstring => cms,
	compatible => cp,
	complete => cpt,
	completefunc => cfu,
	completeopt => cot,
	concealcursor => cocu,
	conceallevel => cole,
	confirm => cf,
	conskey => consk,
	copyindent => ci,
	cpoptions => cpo,
	crpptmethod => cm,
	cscopepathcomp => cspc,
	cscopeprg => csprg,
	cscopequickfix => csqf,
	cscopetag => cst,
	cscopetagorder => csto,
	cscopeverbose => csverb,
	cursorbind => crb,
	cursorcolumn => cuc,
	cursorline => cul,
	define => def,
	delcombine => deco,
	dictionary => dict,
	diffexpr => dex,
	diffopt => dip,
	digraph => dg,
	directory => dir
	display => dy,
	eadirection => ead,
	edcompatible => ed,
	encoding => enc,
	endofline => eol,
	equalalways => ea,
	equalprg -> ep,
	errorbells => eb,
	errorfile => ef,
	errorformat => efm,
	esckeys => ek,
	eventignore => ei,
	expandtab => et,
	exrc => ex,
	fileencoding => fenc,
	fileencodings => fencs,
	fileformat => ff,
	fileformats => ffs,
	filetype => ft,
	fillchars => fcs,
	fkmap => fk,
	foldclose => fcl,
);

# 每种脚本或编程语言都有一定的运行环境，虽然最终都是在
# CPU上完成动作，Perl 6善于文本处理，而且和CPU连接在一起，虚拟机
# 的升级非常频繁，而且发布快，说明这个软件平台相对较简单，功能较单一。
# 使得Perl对C的依赖程度降低了很多。如果这个简单的平台能够用 go language
# 重写，将彻底脱离C语言的依赖，成为一种更加独立的语言。
# 机器语言->低级语言之间的问题，是最后一个Perl需要处理的问题。
# 学习脱离C，道隐藏在外面的思路之中，告诉了以后才能知道。
# 编译原理阐述了编译的基本原理，两个月，还有这么久，要做点什么呢？
# 1. gd的图片展示技术？
# 2. 帮助文档的平台？
# 3. POD->tag  支持中文，圣经->pod 和合本校对。
# vim 模拟函数 现有的脚本转换，
sub nr2char {
	# 通过ASC码值获得一个字符
	my $asc = shift;
	my $char = chr($asc);
	return $char;
}

sub char2nr {
	# 通过字符获得Asc值
	my $char = shift;
	my $asc = ord $char;
	return $asc;
}

# 字符串处理
# str2nr() 把字符串转换为数值
# str2float() 把字符串转换成浮点数
# printf() 根据 % 项目格式化字符串
# escape() 将字符串通过 '\' 转义
# shellescape() 转义字符串用于外壳命令
# fnameescape() 转义 Vim 命令使用的文件名
# tr() 将一组字符翻译成另一组
# strtrans() 将一个字符串变成可显示的格式
# tolower() 将一个字符串转换成小写
# toupper() 将一个字符串转换为大写
# match()			字符串中的模式匹配处
# matchend()		字符串中的模式匹配结束处
# matchstr()		在一个字符串中匹配一个模式
# matchlist()		类似 matchstr()，同时返回子匹配
# stridx()		子串在母串中第一次出现的地方
# strridx()		子串在母串中最后一次出现的地方
# strlen()		字符串长度
sub strlen {
	my $string = shift;
	my $length = len($string);
	return $length;
}
# substitute() 	用一个字符串替换一个匹配的模式
# submatch()	取得 ":substitute" 匹配中指定的某个匹配
# strpart()		取得字符串的一部分
# expand()		展开特殊的关键字
# iconv()		转换文本编码格式
# byteidx()		字符串里字符的字节位置
# repeat()		重复字符串多次

sub repeat {
	my ($string, $times) = @_;
	my $repeat_string = $string x $times;
	return $repeat_string;
}
# perl运算的变量结果，如何传递到Vim的脚本中，不同运行环境的语言
# 是无法沟通的。Vim的基本功能： 脚本的学习，展示，帮助文件的展示
# 代码的展示，文档浏览器，高亮显示，作为文档的标准格式。
# 可进行方便的转换。方便的浏览，方便的修改和维护。

# eval()		计算字符串表达式
# 列表处理:						*list-functions*
# 互相转换，将一种语言转换成Perl, 将Perl转换成任何一种语言
# 函数式语言，解析，将易表解析成一种语法树，然后，合并成
# Perl5语言。学习好VIM，善用Vim来提高工作效率，
# 开发编译器来优化程序的运行，
# get()			得到项目，错误索引不报错
# len()			列表的项目总数
# empty()		检查列表是否为空
# insert()		在列表某处插入项目
# add()			在列表后附加项目
# extend()		在列表后附加另一个列表
sub extend {
	my ($ref_array, $ref_add_array) = @_;
	push @{$ref_array}, @{$ref_add_array;
	return $ref_array;
}

# remove()		删除列表里一或多个项目
# copy()		建立列表的浅备份
# deepcopy()	建立列表的完整备份
# filter()		删除列表的选定项目
# map()			改变每个列表项目
# sort()		给列表排序
# reverse()		反转列表项目的顺序
# split()		分割字符串成为列表
# join()		合并列表项目成为字符串
# range()		返回数值序列的列表
# string()		列表的字符串表示形式
# call()		调用函数，参数以列表形式提供
# index()		列表里某值的索引
# max()			列表项目的最大值
# min()			列表项目的最小值
# count()		计算列表里某值的出现次数
# repeat()		重复列表多次

# 字典处理:						*dict-functions*
# get()			得到项目，错误的键不报错
# len()			字典项目的总数
# has_key()		检查某键是否出现在字典里
# empty()		检查字典是否为空
# remove()		删除字典的项目
# extend()		从一个字典增加项目到另一个字典
# filter()		删除字典的选定项目
# map()			改变每个字典项目
# keys()		得到字典的键列表 same with keys
# values()		得到字典的值列表 same with values
# items()		得到字典的键-值组对的列表
# copy()		建立字典的浅备份
# deepcopy()	建立字典的完整备份
# string()		字典的字符串表示形式
# max()			字典项目的最大值 same with List::Util::max()
# min()			字典项目的最小值 same with list::Util::min()
# count()		计算字典里某值的出现次数

# 浮点数计算:						*float-functions*
# float2nr()	把浮点数转换为数值
# abs()			绝对值 (也适用于数值)
# round()		四舍五入
# ceil()		向上取整
# floor()		向下取整
sub floor {
	my $number = shift;

}

# 面向对象的开发技术，使得Perl的根据环境有不同的表现形式的语法
# 构造更加简单。
# trunc()		删除小数点后的值
# log10()	 	以 10 为底的对数
# pow()			x 的 y 次方
sub pow {
	my ($number, $count) = @_;
	my $Result = $number ** $count;
	return $Result;
}

# sqrt()		平方根 same with perl
# sin()			正弦 same with perl
# cos()			余弦 same with perl
# atan()		反正切 same with stan

# 变量:						 	*var-functions*
# type()			变量的类型
# islocked()		检查变量是否加锁
# function()		得到函数名对应的函数引用
# getbufvar()		取得指定缓冲区中的变量值
# setbufvar()		设定指定缓冲区中的变量值
# getwinvar()		取得指定窗口的变量值
# gettabvar()		取得指定标签页的变量值
# gettabwinvar()  取得指定窗口和标签页的变量值
# setwinvar()		设定指定窗口的变量值
# settabvar()		设定指定标签页的变量值
# settabwinvar()	设定指定窗口和标签页的变量值
# garbagecollect() 可能情况下释放内存

# 光标和位置标记位置:			*cursor-functions* *mark-functions*
# col()			光标或位置标记所在的列
# virtcol()		光标或位置标记所在的屏幕列
# line()			光标或位置标记所在行
# wincol()		光标所在窗口列
# winline()		光标所在窗口行
# cursor()		置光标于 行／列 处
# getpos()		得到光标、位置标记等的位置
# setpos()		设置光标、位置标记等的位置
# byte2line()		取得某字节位置所在行号
# line2byte()		取得某行之前的字节数
# diff_filler()	得到一行之上的填充行数目

# 操作当前缓冲区的文本:					*text-functions*
# getline()		从缓冲区中取一行
# setline()		替换缓冲区中的一行
# append()		附加行或行的列表到缓冲区
# indent()		某行的缩进
# cindent()		根据 C 缩进法则的某行的缩进
# lispindent()	根据 Lisp 缩进法则的某行的缩进
# nextnonblank()		查找下一个非空白行
# prevnonblank()		查找前一个非空白行
# search()		查找模式的匹配
# searchpos()		寻找模式的匹配
# searchpair()		查找 start/skip/end 配对的另一端
# searchpairpos()		查找 start/skip/end 配对的另一端
# searchdecl()		查找名字的声明

# 				*system-functions* *file-functions*
# 系统调用及文件操作:
# glob()			展开通配符
# globpath()		在几个路径中展开通配符
# findfile()		在目录列表里查找文件
# finddir()		在目录列表里查找目录
# resolve()		找到一个快捷方式所指
# fnamemodify()		改变文件名
# pathshorten()		缩短路径里的目录名
# simplify()		简化路径，不改变其含义
# executable()		检查一个可执行程序是否存在
# filereadable()		检查一个文件可读与否
# filewritable()		检查一个文件可写与否
# getfperm()		得到文件权限
# getftype()		得到文件类型
# isdirectory()		检查一个目录是否存在
# getfsize()		取得文件大小
# getcwd()		取得当前工作路径
# haslocaldir()		检查当前窗口是否使用过 |:lcd|
# tempname()		取得一个临时文件的名称
# mkdir()			建立新目录
# delete()		删除文件
# rename()		重命名文件
# system()		取得一个 shell 命令的结果
# hostname()		系统的名称
# readfile()		读入文件到一个行列表
# writefile()		把一个行列表写到文件里

# 日期和时间:				*date-functions* *time-functions*
# getftime()		得到文件的最近修改时间
# localtime()		得到以秒计的当前时间
# strftime()		把时间转换为字符串
# reltime()		得到准确的当前或者已经经过的时间
# reltimestr()		把 reltime() 的结果转换为字符串

# 		*buffer-functions* *window-functions* *arg-functions*
# 缓冲区，窗口及参数列表:
# argc()			参数列表项数
# argidx()		参数列表中的当前位置
# argv()			从参数列表中取得一项
# bufexists()		检查缓冲区是否存在
# buflisted()		检查缓冲区是否存在并在列表内
# bufloaded()		检查缓冲区是否存在并已加载
# bufname()		取得某缓冲区名
# bufnr()			取得某缓冲区号
# tabpagebuflist()	得到标签页里的缓冲区列表
# tabpagenr()		得到标签页号
# tabpagewinnr()		类似于特定标签页里的 winnr()
# winnr()			取得当前窗口的窗口号
# bufwinnr()		取得某缓冲区的窗口号
# winbufnr()		取得某窗口的缓冲区号
# getbufline()		得到指定缓冲区的行列表

# 命令行:						*command-line-functions*
# getcmdline()		得到当前命令行
# getcmdpos()		得到命令行里的光标位置
# setcmdpos()		设置命令行里的光标位置
# getcmdtype()		得到当前命令行的类型

# quickfix 和位置列表:				*quickfix-functions*
# getqflist()		quickfix 错误的列表
# setqflist()		修改 quickfix 列表
# getloclist()		位置列表项目的列表
# setloclist()		修改位置列表

# 插入模式补全:					*completion-functions*
# complete()		设定要寻找的匹配
# complete_add()		加入要寻找的匹配
# complete_check()	检查补全是否被中止
# pumvisible()		检查弹出菜单是否显示

# 折叠:						*folding-functions*
# foldclosed()		检查某一行是否被折叠起来
# foldclosedend()		类似 foldclosed() 但同时返回最后一行
# foldlevel()		检查某行的折叠级别
# foldtext()		产生折叠关闭时所显示的行
# foldtextresult()	得到关闭折叠显示的文本

# 语法和高亮:		 *syntax-functions* *highlighting-functions*
# clearmatches()	清除 |matchadd()| 和 |:match| 诸命令定义的所有匹配
# getmatches()		得到 |matchadd()| 和 |:match| 诸命令定义的所有匹配
# hlexists()		检查高亮组是否存在
# hlID()			取得高亮组标示
# synID()			取得某位置的语法标示
# synIDattr()		取得某语法标示的特定属性
# synIDtrans()		取得翻译后的语法标示
# diff_hlID()		得到 diff 模式某个位置的高亮标示
# matchadd()		定义要高亮的模式 (一个 "匹配")
# matcharg()		得到 |:match| 参数的相关信息
# matchdelete()		删除 |matchadd()| 或 |:match| 诸命令定义的匹配
# setmatches()		恢复 |getmatches()| 保存的匹配列表

# 拼写:	 					*spell-functions*
# spellbadword()		定位光标所在或之后的错误拼写的单词
# spellsuggest()		返回建议的拼写校正列表
# soundfold()		返回 "发音相似" 的单词等价形式

# 历史记录:					*history-functions*
# histadd()		在历史记录中加入一项
# histdel()		从历史记录中删除一项
# histget()		从历史记录中提取一项
# histnr()		取得某历史记录的最大索引号

# 交互:						*interactive-functions*
# browse()		显示文件查找器
# browsedir()		显示目录查找器
# confirm()		让用户作出选择
# getchar()		从用户那里取得一个字符输入
# getcharmod()		取得最近键入字符的修饰符
# feedkeys()		把字符放到预输入队列中
# input()			从用户那里取得一行输入
# inputlist()		让用户从列表里选择一个项目
# inputsecret()		从用户那里取得一行输入，不回显
# inputdialog()		从用户那里取得一行输入，使用对话框
# inputsave()		保存和清除预输入 (typeahead)
# inputrestore()		恢复预输入 (译注：参阅 input())

# GUI:						*gui-functions*
# getfontname()		得到当前使用的字体名
# getwinposx()		GUI Vim 窗口的 X 位置
# getwinposy()		GUI Vim 窗口的 Y 位置

# Vim 服务器:					*server-functions*
# serverlist()		返回服务器列表
# remote_send()		向 Vim 服务器发送字符命令
# remote_expr()		在 Vim 服务器内对一个表达式求值
# server2client()		向一个服务器客户发送应答
# remote_peek()		检查一个服务器是否已经应答
# remote_read()		从一个服务器读取应答
# foreground()		将一个 Vim 窗口移至前台
# remote_foreground()	将一个 Vim 服务器窗口移至前台

# 窗口大小和位置:					*window-size-functions*
# winheight()		取得某窗口的高度
# winwidth()		取得某窗口的宽度
# winrestcmd()		恢复窗口大小的返回命令
# winsaveview()		得到当前窗口的视图
# winrestview()		恢复保存的当前窗口的视图

# 杂项:						*various-functions*
# mode()			取得当前编辑状态
# visualmode()		最近一次使用过的可视模式
# hasmapto()		检查映射是否存在
# mapcheck()		检查匹配的映射是否存在
# maparg()		取得映射的右部 (rhs)
# exists()		检查变量，函数等是否存在
# has()			检查 Vim 是否支持某特性
# changenr()		返回最近的改变号
# cscope_connection()	检查有无与 cscope 的连接
# did_filetype()		检查某文件类型自动命令是否已经使用
# eventhandler()		检查是否在一个事件处理程序内
# getpid()		得到 Vim 的进程号
# 
# libcall()		调用一个外部库函数
# libcallnr()		同上，但返回一个数值
# getreg()		取得寄存器内容
# getregtype()		取得寄存器类型
# setreg()		设定寄存器内容及类型
# taglist()		得到匹配标签的列表
# tagfiles()		得到标签文件的列表
# mzeval()		计算 |MzScheme| 表达式

