syntax on
filetype plugin on
filetype indent on

if v:progname == 'gvim.exe'
	set guifont=Lucida_Console:h9:cANSI
elseif v:progname =='Vim'
	set bg=light
    hi Normal guibg=white guifg=black
else
	colorscheme elflord
endif

set nowrap
set tabstop=4
set autoindent
set shiftwidth=4

set noequalalways

set nocompatible  " We don't want vi compatibility.
 
" Add recently accessed projects menu (project plugin)
set viminfo^=!
"  
" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
 
" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>
  
" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

" Helpful navigation keys

nmap <F1> :bprevious!<CR>
nmap <F2> :bnext!<CR>
nmap <F3> <C-W>k<C-W>_
nmap <F4> <C-W>j<C-W>_
imap <F3> <ESC><C-W>k<C-W>_
imap <F4> <ESC><C-W>j<C-W>_
nmap W <C-W>_

set wmh=0

set is
set bs=2

set formatoptions+=roc
set laststatus=2
set ruler
set hls

" .build = nAnt
au BufNewFile,BufRead  *.build    set syntax=ant

