colorscheme peaksea

set number
syntax on
set autoindent
set smartindent

" \347\212\266\346\200\201\346\240\217
set laststatus=2      " \346\200\273\346\230\257\346\230\276\347\244\272\347\212\266\346\200\201\346\240\217
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
" \350\216\267\345\217\226\345\275\223\345\211\215\350\267\257\345\276\204\357\274\214\345\260\206$HOME\350\275\254\345\214\226\344\270\272~
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g")
    return curdir
endfunction
set statusline=\ %{CurDir()}\ \ %f%m%r%h\ \ 
set statusline+=\%p%%\             "??????/??? (???) IU 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=./tags,./TAGS,tags,TAGS,./../tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags,./../../../../../../tags,./../../../../../../../tags,./../../../../../../../../tags,./../../../../../../../../../tags,./../../../../../../../../../../tags,./../../../../../../../../../../../tags




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

