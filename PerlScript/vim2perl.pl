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
    # ���������ڵ�������ȡ����
    my @vim_string = $vim_string =~ /[.*?]/g;
    # ��α�֤˳���أ�
}

