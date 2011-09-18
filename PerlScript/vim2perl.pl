#!perl

use strict;
use warnings;
use 5.010;

my %hash = (
'\a' => '[a-zA-Z_]',
'\+' => '+',
'\c' => '(?i)',
'\C' => '(?-i)',
'\%(' => '(?:',
'atom\@=' => '(?=atom)',
);

my $reg_vim_string = '';
my $reg_per_string = '';

sub vim2perl {
    my $vim_string = shift;
    # 将方括号内的内容提取出来
    my @vim_string = $vim_string =~ /[.*?]/g;
    # 如何保证顺序呢？
}

