" Author: Kazark
" Purpose: Provide a :Ggraph command that allows you to view a
" pretty-formatted git log wihin Vim

if exists('g:fugitive_ggraph_loaded_plugin')
    finish
endif
let g:fugitive_ggraph_loaded_plugin = 1

command -nargs=? Ggraph call ggraph#LoadNCommitsInCurrentBuffer(<q-args>)
