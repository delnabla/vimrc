colorscheme peaksea

set number
syntax on
set autoindent
set smartindent

" 状态栏格式定义
set laststatus=2

" 空格键向上滚屏 光标不变
nnoremap <SPACE> 2<C-e>
noremap <C-j> 3<C-e>
noremap <C-k> 3<C-y>

imap jk <ESC>

" 自动缩进
set cindent
set nocompatible
set bs=2

" 换行不注释
set paste

highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
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

