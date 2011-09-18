#!perl -w

use strict;
use warnings;
# 脚本将自动解析 关键字 语法高亮文件
# 将大小写混合的单词提取出来，把不重复的制作成缩写形式
# 将重复的单词制作成 单独的 脚本高亮显示。
# 良好的帮助文档是学习的好帮手
# 最基本的帮助文档分类清楚，解说明确
# 深入学习的文档，实例多，可全文查询
# 帮助文档应当非常容易维护和扩展
# 基本帮助文档应当有一个框架，分类清楚
# 查询是目录树结构，展示内容是。
# 1. 像一个chm 有目录，有文本展示
my $input = 'perl.vim';

my @all_keywords;
open (my $fh, '<', $input) or die $!;
while (my $line = <$fh>) {
	chomp $line;
	if ($line =~ m{syn\s+keyword\s+\w+\s+(\w+.*)$}) {
	    my $keyword = $1;
		my @keywords = split /\s+/, $keyword;
		push @all_keywords, @keywords;
		next;
	}
}
close $fh;
my %keywords;
%keywords = map { $_ => lc($_) } @all_keywords;

sub bychar { $a cmp $b };
open (my $out, '>', '../ftplugin/perl.vim') or die $!;
print {$out} <<EOF;
augroup filetypedetect
au BufNewFile,BufRead *.pl	setf pl
augroup END
""""""""""""""""""""""""""""""""""""""""

EOF
# 获取有重复小写的关键字散列
my %repeat_keywords = get_repeat_value(\%keywords);
# 获取不重复小写的关键字散列
delete @keywords{keys %repeat_keywords};

foreach my $key (sort bychar keys %keywords) {
	my $value = $keywords{$key};
	next if ($value eq $key); # 如果关键字小写则跳过
	print {$out} "iab $value $key\n";
}

# 输出重复的单词列表
open (my $pun, '>', 'Pun.vim') or die $!;
sub byvalue { $repeat_keywords{$a} cmp $repeat_keywords{$b} };
foreach my $key (sort byvalue keys %repeat_keywords) {
	print {$pun} "syn keyword perlPun $repeat_keywords{$key}\n";
	print "syn keyword perlPun $repeat_keywords{$key}\n";
}

# 获取散列值重复的片段
sub get_repeat_value {
	my $temp = shift;
	my %temp = %{$temp};
	my (%temp_bak, %reverse_temp, %reverse_temp_bak);
	%reverse_temp = reverse %temp;
	%reverse_temp_bak = %reverse_temp;
	%reverse_temp = reverse %reverse_temp;
	%temp_bak = %temp;
	delete @temp{keys %reverse_temp};
	%temp = reverse %temp;
	delete @reverse_temp_bak{keys %temp};
	%reverse_temp = reverse %reverse_temp_bak;
	delete @temp_bak{keys %reverse_temp};
	undef %temp;
	undef %reverse_temp;
	undef %reverse_temp_bak;
	return %temp_bak;
}

# 拆分有重复值的散列为不重复的三个片段
sub split_uniq_value {
	my $temp = shift;
	my %temp = %{$temp};
	my(%temp0, %temp1, %temp2);
	%temp0 = reverse %temp;
	delete @temp{values %temp0};
	%temp1 = reverse %temp;
	delete @temp{values %temp1};
	%temp2 = reverse %temp;
	return (\%temp0, \%temp1, \%temp2);
}

