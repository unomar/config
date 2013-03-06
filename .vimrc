set tabstop=4
"set pastetoggle=<F2>
colorscheme desert
filetype plugin indent on

execute pathogen#infect()

set laststatus=2
set term=xterm-256color
set termencoding=utf-8
" autocmd vimenter * if !argc() | NERDTree | endif
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1

" Custom key bindings
nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>
nmap \e :NERDTreeTabsToggle<CR>
