call s:Change_colorscheme()
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

let b:current_count += 1
let s:current_colorscheme = s:dict_colorscheme[b:current_count]
echo b:current_count ':' s:current_colorscheme
exe ":colorscheme " . s:current_colorscheme
endfun

