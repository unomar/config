" Vim color file
" Maintainer:   Kevin M. Weiss <kevin@weissbrewing.com>
" Last Change:	$Date: 2019/02/07 11:08:06 $

set background=dark
highlight clear
if exists("syntax on")
  syntax reset
endif

let g:colors_name = "darkzen-custom"
"lyj---//2006-03-15 @ 23:16 By Lyj---------------
hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen
"endlyjset background=light

highlight Normal     term=none ctermfg=gray    cterm=none guifg=gray    gui=none guibg=black
highlight Comment    term=none ctermfg=cyan    cterm=none guifg=cyan    gui=none
highlight Constant   term=none ctermfg=red     cterm=none guifg=red     gui=none
highlight Special    term=none ctermfg=red     cterm=bold guifg=red     gui=bold
highlight Identifier term=none ctermfg=gray    cterm=none guifg=gray    gui=none
highlight Statement  term=bold ctermfg=gray    cterm=bold guifg=gray    gui=bold
highlight Operator   term=bold ctermfg=gray    cterm=bold guifg=gray    gui=bold
highlight PreProc    term=bold ctermfg=lightgreen   cterm=none guifg=green   gui=none
highlight Type       term=bold ctermfg=magenta cterm=none guifg=magenta gui=none
highlight String     term=none ctermfg=red     cterm=none guifg=red     gui=none
highlight Number     term=none ctermfg=red     cterm=none guifg=red     gui=none

" Custom additions to de-shitify vimdiff
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
" END Custom additions
" vim:ts=2:sw=2:et
