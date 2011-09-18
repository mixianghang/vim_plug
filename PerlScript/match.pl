#!perl

use strict;
use warnings;

my $string = '<<< << >>>';
my ($times) = $string =~ s/</</g;
print "matched <$times> times\n";
学习模块的接口，比自己完成相应的功能要简单一些。
POD''SIMPLE模块能带给我什么呢？
1. 配置字体信息
2. 后台处理功能，将POD转换成TXT，
3. 一定要完成POD显示的这个模块

