" Vim syntax file
" Language:     Perl POD format extend
" Maintainer:   ssqq <songzan@foxmail.com>
" Last Change:  2011-09-07

augroup filetypedetect
au BufNewFile,BufRead *.pod setf pod
augroup END

" set the conceallevel
set conceallevel=2

" match conceal setup
syn match podFormat "Z<>"  conceal
syn match podlt "E<lt>"   conceal cchar=<
syn match podgt "E<gt>"   conceal cchar=>
syn match podmd "E<mdash>" conceal cchar=-
syn match podCmdText ".*$" contained contains=podFormat,@NoSpell,podlt,podgt,podBold,podItalic,podLink
" region special setup
syn region podBold   matchgroup=podConceal start="[BC]<"  end=">" contains=podlt,podgt,podBold,podItalic,podLink concealends
syn region podBold   matchgroup=podConceal start="[BC]<<\s" end="\s>>" contains=podlt,podgt,podBold,podItalic,podLink concealends
syn region podItalic matchgroup=podConceal start="I<"     end=">" contains=podlt,podgt,podBold,podItalic,podLink concealends
syn region podItalic matchgroup=podConceal start="I<<\s"    end="\s>>" contains=podlt,podgt,podBold,podItalic,podLink concealends
syn region podLink   matchgroup=podConceal start="[LF]<"  end=">" contains=podlt,podgt,podBold,podItalic,podLink concealends
syn region podLink   matchgroup=podConceal start="[LF]<<\s" end="\s>>" contains=podlt,podgt,podBold,podItalic,podLink concealends

syn region podItalic matchgroup=podIgnore start="X<" end=">"

" Hilink setup
highlight link podLink	    Underlined
highlight link podBold	    Type
highlight link podItalic    Comment
highlight link podlt        String
highlight link podgt        String
highlight link podmd        String
highlight link podConceal   Conceal
highlight link podIgnore    Ignore

" vim: ts=8
