" Author: Kazark
" Purpose: Provide a :Ggraph command that allows you to view a
" pretty-formatted git log wihin Vim

if exists('g:ggraph_loaded_plugin')
    finish
endif
let g:ggraph_loaded_plugin = 1

command -nargs=? Ggraph call ggraph#LoadNCommitsInCurrentBuffer(<q-args>)
