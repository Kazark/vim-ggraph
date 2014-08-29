" Author: Kazark

if exists('g:ggraph_loaded')
    finish
endif
let g:ggraph_loaded = 1

let g:ggraph_log_base_cmd = "log --graph --branches --remotes --tags --abbrev-commit --decorate"
let g:ggraph_log_blacknwhite_opts = "--color=never --format=blacknwhite"
let g:ggraph_color = ""
let g:ggraph_blacknwhite = '"format:\%h - \%aD (\%ar)\%d\%n          \%s - \%an"'
let g:ggraph_color = '"format:\%C(bold blue)\%h\%C(reset) - \%C(bold cyan)\%aD\%C(reset) \%C(bold green)(\%ar)\%C(reset)\%C(bold yellow)\%d\%C(reset)\%n          \%C(white)\%s\%C(reset) - \%an"'

function ggraph#configure()
    execute "!git config --global pretty.ggraphblacknwhite " . g:ggraph_blacknwhite
    execute "!git config --global pretty.ggraphcolor " . g:ggraph_color
endfunction

function ggraph#LoadNCommitsInCurrentBuffer(n)
    let l:numCommits = ""
    if a:n > 0
        let l:numCommits = " -" . a:n
    endif
    if exists(":AnsiEsc") == 2
        execute "read! git " . g:ggraph_log_base_cmd . " --color=always --format=ggraphcolor " . l:numCommits
        AnsiEsc
    else
        execute "read !git " . g:ggraph_log_base_cmd . " --color=never --format=ggraphblacknwhite " . l:numCommits
    endif
endfunction
