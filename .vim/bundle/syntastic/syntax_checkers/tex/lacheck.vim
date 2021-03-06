"============================================================================
"File:        tex.vim
"Description: Syntax checking plugin for syntastic.vim
"Maintainer:  Martin Grenfell <martin.grenfell at gmail dot com>
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"
"============================================================================

if exists("g:loaded_syntastic_tex_lacheck_checker")
    finish
endif
let g:loaded_syntastic_tex_lacheck_checker=1

function! SyntaxCheckers_tex_lacheck_IsAvailable()
    return executable("lacheck")
endfunction

function! SyntaxCheckers_tex_lacheck_GetLocList()
    let makeprg = syntastic#makeprg#build({ 'exe': 'lacheck' })
    let errorformat =  '%-G** %f:,%E"%f"\, line %l: %m'
    return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'tex',
    \ 'name': 'lacheck'})
