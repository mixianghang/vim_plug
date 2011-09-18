#!perl

use strict;
use warnings;

my @pod_string = (
	'L<POD>',
	'L<=head1 I<Heading text>>',
	'=encoding big5',
	'E<lt>',
	'E<gt>',
	'C<BE<lt>textE<gt>>',
	'C<LE<lt>text|...E<gt>>',
	'C<$a E<lt>=E<gt> $b>',
	'C<< $a <=> $b >>',
	'C<<< $a <=> $b >>>',
	'C<<<<  $a <=> $b     >>>>',
	'C<$a E<lt>=E<gt> $b>',
	'L<Pod::HTML2Pod|Pod::HTML2Pod>',
	'L<< >> >>',
	'The I<SantaMarE<iacuate>a> left port alreay',
	'B<touch> S<B<-t> I<time>> I<file>',
	'B<1B<2B<3B<t>>>>',
);

foreach my $string (@pod_string) {
	print "[$string]";
	$string = pod2txt($string);
	print " : [$string]\n";
}

sub pod2txt {
	my $string = shift;
	# 如果以=开头，则去掉标识符
	if ($string =~ m/^=(?:encoding|item|for|end|begin|over)\s+(.*)$/) {
		$string = $1;
	}

	# 如果以以下开头，则取后面的值，分流算法，提高速度
	if ($string =~ /^=head(?:1|2|3|4)\s+(.*)$/) {
		$string = $1;
	}

	# 如果以以下开始，则忽略 
	next if ($string =~ /^=(?:pod|cut|back)/);
	# 其他特殊格式
	
	# 替换小于号和大于号
	$string =~ s/E<lt>/JEltSUS/g;
	$string =~ s/E<gt>/JEgtSUS/g;

	# 将多个连续的 < & > 合并成一个
	# 因为有嵌套结构，所以要逐一进行替换
	$string =~ s/B<+\s+(.*?)\s+>+/$1/g;
	$string =~ s/C<+\s+(.*?)\s+>+/$1/g;
	$string =~ s/I<+\s+(.*?)\s+>+/$1/g;
	$string =~ s/L<+\s+(.*?)\s+>+/$1/g;
	$string =~ s/S<+\s+(.*?)\s+>+/$1/g;
	$string =~ s/B<(.*?)>/$1/g;
	$string =~ s/C<(.*?)>/$1/g;
	$string =~ s/I<(.*?)>/$1/g;
	$string =~ s/L<(.*?)>/$1/g;
	$string =~ s/S<(.*?)>/$1/g;

	# 替换小于号和大于号
	$string =~ s/JEltSUS/</g;
	$string =~ s/JEgtSUS/>/g;

	return $string;
}

