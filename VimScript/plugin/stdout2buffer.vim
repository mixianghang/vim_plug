perl <<EOF
my $bufname = $curbuf->Name();
my $buffer = (VIM::Buffers($bufname))[0]
my $string = q{};
close STDOUT;
open STDOUT, '>', \$string;

eval($buffer);

VIM::Msg($string);
EOF
