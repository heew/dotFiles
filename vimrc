" incase it is not set, it should be set by default
"set nocompatible

" default to 4 spaces when pressing tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" use 2 spaces when pressing tabs for the following file types:
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype cpp setlocal ts=2 sts=2 sw=2
autocmd Filetype c setlocal ts=2 sts=2 sw=2

" display line numbers on left side
set number

" 256 colors in the terminal
if $TERM == "xterm-256color"
    set t_Co=256
endif

" my color scheme - desert
colorscheme desert

" syntax hilighting on
syntax on

" enable the cursor line to indicate where in a file I am
set cursorline
