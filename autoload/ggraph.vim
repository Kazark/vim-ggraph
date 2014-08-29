" Author: Kazark

if exists('g:fugitive_ggraph_loaded')
    finish
endif
let g:fugitive_ggraph_loaded = 1

" TODO have not figured out how to make these work, so this plugin is brittle
let g:fugitive_ggraph_blacknwhite = "log --graph --branches --remotes --tags --abbrev-commit --decorate --color=never --format=format:'%h - %aD (%ar)%d%n''          %s - %an'"
let g:fugitive_ggraph_color = "log --graph --branches --remotes --tags --abbrev-commit --decorate --color=always --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) - %an'"

function ggraph#LoadNCommitsInCurrentBuffer(n)
    let l:numCommits = ""
    if a:n > 0
        let l:numCommits = " -" . a:n " TODO was trying to get this to work but haven't yet
    endif
    if exists(":AnsiEsc") == 2
        Gread! graph --color=always
        AnsiEsc
    else
        Gread! blacknwhite
    endif
endfunction
