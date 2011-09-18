电脑世界
欢迎来到电脑世界，这个世界中时间的概念和现实中不同，1秒钟的时间，CPU可以运行上亿次指令，转瞬间，你的计划可能就实现了。

C语言是一种计算机编程语言，是计算机语言发展初期的一门为了构建操作系统而开发的语言，操作系统从事的工作比较繁重，要不断和硬件打交道，这样C 语言必须具备直接的硬件控制能力，指针就是能满足这个需求的C语言特殊能力。
事实证明，C语言成了当之无愧的操作系统语言。

C语言代码转化为计算机可以执行的程序需要一个过程：编译和链接。这是一个语言翻译的过程，将构建程序的人能理解的语言转换成特定的计算机能执行的指令。

对于一个普通的C程序，一般都会涉及许多经测试可重用的模块，这就是C库，库里面的函数可以被直接拿过来用，这样许多人的工作就能被作为基础，而另外的人能在基础上做其他的工作，而不必考虑基础的原因和道理，只是相信并按照一定的规则，就可以享受前人工作的成果。

事实上，编译器和连接器大部分也是C 做的，不过这个过程是在反复测试的基础上完成的，我们只要相信就可以了。

C 的标准有 ANSI C 和 C99 两个，目前大多数编译器没有完全实现所有的C99修改。

第一章：C 语言的基本语法
1.1 语法形式
1.1.1 文件引用

#include <stdio.h>
#include "mmi.h"

文件引用体现了C语言的模块化结构，文件引用的许多规则并不是C语言的规则，只是C语言预处理过程中的一些标记指示。
引用文件的格式是不区分大小写的，包含文件的方式也是灵活的。文件所在的路径也有人去查找，所以这里的引用有一定的随意性，当你看到如下格式的引用时，不要奇怪，因为人的随意性在这里是被允许在一定程度上展现的。

#include "stdio.h"
#include "Stdio.H"
#include <mmi.h>

有一些程序会引用很多文件，而人在做重复的单调工作时又容易出错。

#include "mmi.h"
#include <stdio.h>
#include "mmi.h"

当一个文件被重复引用的时候，经常会发生意料不到的事情，好在大多数头文件（就是可能被别人包含的文件），都设置了防重复引用的装置
。
#ifndef MMI
#def MMI
printf("include mmi.h successful.\n");
#endif

有人用#if!def 来做 #ifndef 用，都是可以执行的。

文件的路径在编译的Makefile中进行定义，所以Makefile也是程序的一部分。而Makefile的语法和 C 语言也是不同的，所以学习 C 语言的同时还是需要学习一些其他的语法，Make(项目管理), 宏预处理，注释过滤原则等。

附注：常用C语言库函数
#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <limits.h>
#include <stddef.h>
#include <time.h>
#include <float.h>
#include <math.h>
#include <error.h>
#include <locale.h>
#include <setjmp.h>
#include <signal.h>
#include <stdarg.h>

屏蔽头文件函数名称的宏处理语法

#include <stdio.h>
#undef fgetc
int main(void) {
	int fgetc = getchar();
	return (0);
}

1.1.2.main 函数：

int main (void)

一个C程序，总是从被称为 main () 的函数开始执行的。圆括号代表这是一个函数。
函数名后面的圆括号一般包含传递给函数的信息。void 代表没有传递任何信息。

1.1.3. 注释

/* This is comments */
/*
This is also comments
*/

C99 增加了另外一种注释风格

// This is comments
int rigue;	// This is also comments

1.1.4. 函数体和代码块
花括号划定了函数的界限，通常所有的C函数都使用花括号来表示函数体的开始与结束。
花括号还可以用来把函数中的语句聚集到一个单元或代码块中。

1.1.5 声明 (declaration statement)
int num;
编译器根据声明为变量在内存中分配一个合适的存储空间，int 作为关键字，有具体的意义，不能用作其他的用途，num 作为一个标识符(Identifier)

变量名称的选择只能以字母或下划线开始，然后可以是大小写字母，数字和下划线。
最初的编译器只允许8个字符，C90扩展到31个，C99扩展到63个。
附注：由于目录名称经常会被程序中用到，所以在目录命名中养成一个良好的习惯，
尽量不用空格和减号连接符。这样会避免很多问题。

1.1.6 赋值 (assignment statement)
num = 1;

1.1.7 printf() 函数
printf("I am a simple");
printf("computer.\n");
printf("My favorite number is %d because it is first.\n", num)

1.1.8 return 语句
return 0;
return 语句是返回语句，是程序的最后一个语句、C标准要求main函数这样做。

2.1.1 关键字和保留标识符
这些字符不能用作变量名和函数名称。
auto	break case char const continue default do double else
enum	extern float for goto if inline int long register
restrict return short signed sizeof static struct switch
typedef union unsigned void volatile while _Boot
_Complex _Imaginary
附注: ULC手机平台定义了大量的新的数据类型和变量名称，这些名称非常多。
很难看出是什么意思。需要列出一个表来可以查询。

2.1.2 如何阅读C 代码
阅读大量C代码是一件很让人头痛的事情，但采取一些措施，可以让情况好一点。
/* 1. 将代码中的常量，变量，函数名称，各种标识符，结构，枚举，不同的数据类型的代码用不同的颜色显示出来，这样有助于提高代码浏览效率。
* /
2. 将所有定义的常量名称，变量名称，函数名称，数据结构名称，制作一个TAG文件，将这些常量名称的解释，说明，放置进去，在看代码的时候，遇到不懂的名字，可以随时查询。
3. 将所有代码中涉及到的单词的中文意思，制作一个词典，可以用TAG的方式随时查询，随时检索。

