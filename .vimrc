"set pastetoggle=<F2>
"colorscheme desert
filetype plugin indent on

execute pathogen#infect()

set laststatus=2
set term=xterm-256color
set termencoding=utf-8
set wm=8        " set wrapmargin
set nohls       " turn off highlight on search
set et          " turn on expand tab
set tabstop=4   " set tab width
set shiftwidth=4 " set indent width
set smarttab     " enable smart tabs
set relativenumber " Set relative numbers
set number      " Set exact line number
" autocmd vimenter * if !argc() | NERDTree | endif
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1
let g:Powerline_symbols = 'fancy'

" Custom key bindings
nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>
nmap \e :NERDTreeTabsToggle<CR>

" have syntax highlighting in terminals which can display colours:
if has('syntax') && (&t_Co > 2)
   syntax on
endif
   

" colorscheme adjustments :hi lists the symbols and values for this
colorscheme darkzen    " change the colorscheme
" make the preprocessor stuff a lighter color
"hi PreProc ctermfg=yellow
"hi Constant cterm=underline,bold ctermfg=9
" turn on comment continuation for C style comments
set fo+=r       " formatoptions r adds new comment line automagically
" only apply on C comments, and mail forwarding "> "
set com=s1:/*,mb:*,ex:*/,:>,fb:-
"
" AUTO-COMMANDS
" for Makefiles
" added some special formatting in Makefiles
autocmd BufEnter ?akefile* set noet ts=8 sw=8 nocindent list lcs=tab:>-,trail:x
" for source code
autocmd BufEnter *.cc,*.cpp,*.h,*.c,*.java,*.pl set et ts=4 sw=4 cindent
" change the filetype
autocmd BufEnter *.pro,*.prolog set et ts=4 sw=4 cindent ft=prolog
" for html
autocmd BufEnter *.html set et ts=4 sw=4 wm=8 nocindent
" Resume last line
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
"
" abbreviations
ab teh the
ab tomarrow tomorrow
" The man plugin does lookup with control-k, or :Man
runtime ftplugin/man.vim
