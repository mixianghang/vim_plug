if exists("b:current_syntax")
  finish
endif
hi def link head1    Comment
hi def link head2    Constant
hi def link head3    Identifier
hi def link head4    Statement
hi def link head5    PreProc
hi def link head6    Type
hi def link head7    Special
hi def link head8    Underlined
hi def link head9    Ignore
hi def link heada    Error
hi def link headb    Todo

syn keyword Comment		head1
syn keyword Constant	head2
syn keyword Identifier	head3
syn keyword Statement	head4
syn keyword PreProc		head5
syn keyword Type		head6
syn keyword Special		head7
syn keyword Underlined	head8
syn keyword Ignore		head9
syn keyword Error		heada
syn keyword Todo		headb
