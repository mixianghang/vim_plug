set nocompatible
set tabstop=4
set shiftwidth=4
set matchpairs+=<:>
set encoding=utf-8
"set fileencoding=utf-8,gb2312,gbk,gb18030,latin1
set fileencodings=ucs-bom,utf-8,chinese,cp949
"set fileencodings=utf-8,gb2312,gbk,gb18030,cp949
set langmenu=none
language messages zh_CN.utf-8
syntax on
set backspace=indent,eol,start
set guifont=Yahei_Mono:h12.5
set foldmethod=marker
colorscheme murphy
"colorscheme desert
"colorscheme torte
"colorscheme ron
"colorscheme pablo
"colorscheme koehler
set wrap
set linebreak
set formatoptions=croqn2mM1
set autoindent
set textwidth=78
set expandtab
set smartindent
set showmatch
set nobackup
set hls
set novisualbell
au GUIEnter * simalt ~x
set autoread
set ambiwidth=double
filetype plugin on
filetype indent on
"set shortmess=atI
set number
set whichwrap+=<,>,h,l
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
set cindent
set ignorecase smartcase
"""""""""""""""""""""""""
"cTag设定
""""""""""""""""""""""""
set tags=tags
set autochdir
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_close=1
" sets how many lines of history vim
set history=300
"Toggle Menu and Toolbar
"set guioptions-=m
"set guioptions-=T
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<CR>
"let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplMapWindowsNavVim=1
"let g:miniBufExplMapWindowNavArrows=1
nnoremap <silent> <F3> :Grep<CR>
map <F4> :Tlist<CR>
map <F9> :call Perl_Run()<CR>
" For Xml vim
"let xml_tag_completion_map="<Ctrl-m>"
