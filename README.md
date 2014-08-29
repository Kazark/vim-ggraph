# Git Graph for Vim

Show pretty-printed git logs (graphs) within Vim. Uses
[AnsiEsc](https://github.com/vim-scripts/AnsiEsc.vim) to provide colors; it will
function without colors if that plugin is not installed.

This plugin does not depend on
[Fugitive](https://github.com/tpope/vim-fugitive), but I envision it as a sort
of extension. By the way, if you haven't seen Fugitive, forget about this plugin
for a while and go get it!

### Installation

I recommend installing with [Pathogen](https://github.com/tpope/vim-pathogen),
thus (you may need to `mkdir ~/.vim/bundle`):

    cd ~/.vim/bundle
    git clone https://github.com/Kazark/vim-ggraph.git

_Note_: you may have to use `~\vimfiles` instead of `~/.vim` if you are on
Windows.

After installing, you will need to run `:call ggraph#configure()`.

## How to use it
Load a repo's entire graph into Vim:

    :Ggraph

Load a specific number of commits:

    :Ggraph 10

## Troubleshooting
If you get an error like this when you run `Ggraph`:

> fatal: invalid --pretty format: ggraphblacknwhite

then you need to run `:call ggraph#configure()`.
