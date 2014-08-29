Vim Git Graph
==========

Show pretty-printed git logs (graphs) within Vim. Uses
[AnsiEsc](https://github.com/vim-scripts/AnsiEsc.vim) to provide colors;
however, it will function without that plugin.

## Example
Load a repo's entire graph into Vim:

    :Ggraph

Load a specific number of commits:

    :Ggraph 10
