#!perl -w

use strict;
use warnings;
use 5.010;

my $language_name = q{egrid};
my %group_name = qw(
	Special    Rank01
	Comment    Rank02
	Statement  Rank03
	Identifier Rank04
	Type       Rank05
	PreProc    Rank06
	Constant   Rank07
	Underlined Rank08
	Error      Rank09
	Todo       Rank10
);

sub bychar { $group_name{$a} cmp $group_name{$b} };
foreach my $key (sort bychar keys %group_name) {
	my $value = $group_name{$key};
	say "HiLink ${language_name}${value} $key";
}

# 高亮组名定义
my $comment = qr/#.*/;
my $function = [ qw(int log push) ];
my $repeat = [ qw(for do while) ];
my $conditional = [ qw(if then else endif switch) ];
# 隐藏匹配项
my $conceal = {
	q{[a-z]+} => '',
	q{[A-Z]+} => '',
};

my @group_var_name = ($comment, $function, $repeat, $conditional, $conceal);
=pod
my %group_name = (
	comment => $comment,
	constant => $constant,
	string => $string,
	character => $character,
	boolean => $boolean,
	float => $float,
	identifier => $identifier,
	function => $function,
	statement => $statement,
	conditional => $conditional,
	repeat => $repeat,
	label => $label,
	operator => $operator,
	keyword => $keyword,
	exception => $exception,
	preproc => $reproc,
	include => $include,
	define => $define,
	macro => $macro,
	precondit => $precondit,
	type => $type,
	storageclass => $storageclass,
	structure => $structure,
	typedef => $typedef,
	special => $special,
	specialchar => $specialchar,
	tag => $tag,
	declimiter => $declimiter,
	specialcomment => $specialcomment,
	debug => $debug,
	underlined => $underlined,
	ignore => $ignore,
	error => $error,
	todo => $todo,
	conceal => $conceal,
);
=cut
# 如果是正则表达式，则转换成正则
# 如果是数组引用，则转换成关键词
# 如果是散列引用，则转换成隐藏模式
# 隐藏模式，包含一系列替换正则表达式
# SCALAR ARRAY HASH CODE GLOB Regexp
foreach my $var_name (@group_var_name) {
	my $type = ref $var_name;
	say "$var_name => $type";
}
