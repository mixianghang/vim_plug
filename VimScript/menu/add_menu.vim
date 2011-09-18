:an 1.05 ToolBar.New           :tabnew<CR>
:tmenu ToolBar.New             New file
" :an 1.41 ToolBar.WinClose :
" :tmenu   ToolBar.WinClose   WinClose 
" :an 1.42 ToolBar.WinMax   :
" :tmenu   ToolBar.WinMax   WinMax
" :an 1.43 ToolBar.WinSplit :
" :tmenu   ToolBar.WinSplit WinSplit
" :an 1.44 ToolBar.WinVSplit :
" :tmenu   ToolBar.WinVSplit WinVSplit
" :an 1.45 ToolBar.WinMaxWidth :
" :tmenu   ToolBar.WinMaxWidth WinMaxWidth
" :an 1.46 ToolBar.WinMinWidth :
" :tmenu   ToolBar.WinMinWidth WinMinWidth
" :an 1.47 ToolBar.Shell :
" :tmenu   ToolBar.Shell Shell
:an 1.48 ToolBar.NewSesn :call <SID>Change_colorscheme()<CR>
:tmenu   ToolBar.NewSesn Change ColorScheme
func! s:Change_colorscheme()
if !exists("s:dict_colorscheme")
	let s:dict_colorscheme = {1:'blue', 2:'darkblue', 3:'default', 4:'delek', 5:'desert', 6:'elflord',7:'evening', 8:'koehler', 9:'morning', 10:'murphy', 11:'pablo', 12:'peachpuff', 13:'ron', 14:'shine', 15:'slate', 16:'torte', 17:'zellner'}
endif
if !exists("b:current_count")
	let b:current_count = 1
endif
if b:current_count > 17
	let b:current_count = 1
endif
let s:current_colorscheme = s:dict_colorscheme[b:current_count]
exe ":colorscheme " . s:current_colorscheme
let b:current_count += 1
endfun
