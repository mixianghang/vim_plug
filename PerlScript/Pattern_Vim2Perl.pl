#!perl

use warnings;
use strict;

# 将vim 的正则表达式 和 Perl 的正则表达式相互转换
my %pattern_vim = (
	'\+' => '+',
	'\(' => '(',
	'\)' => ')',
	'\|' => '|',
	'{-}'=> '?',
	'\<' => '\b',
	'\>' => '\b',
	'%^' => '\A',
	'%$' => '\z',
);

my %pattern_perl = reverse %pattern_vim;

my $gvim_pattern = '\w\+.*';
my $gvim2perl = vim2perl($gvim_pattern);
print "$gvim_pattern => $gvim2perl\n";

my $perl_pattern = q{\w\w\w(.*)};
my $perl2gvim = perl2vim($perl_pattern);
print "$perl_pattern => $perl2gvim\n";

# The pattern with vim transfer to perl
sub vim2perl {
	my $string = shift;
	foreach my $pattern (keys %pattern_vim) {
		my $from = quotemeta $pattern;
		my $replace = $pattern_vim{$pattern};

		$string =~ s/$from/$replace/g;
	}
	return $string;
}

# The Pattern with Perl transfer to Vim
sub perl2vim {
	my $string = shift;
	foreach my $pattern (keys %pattern_perl) {
		my $from = quotemeta $pattern;
		my $replace = $pattern_perl{$pattern};
		$string =~ s/$from/$replace/g;
	}
	return $string;
}

