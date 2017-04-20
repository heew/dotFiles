" environment settings {
    " incase it is not set, it should be set by default
    set nocompatible

    " display line numbers on left side
    set number

    " syntax hilighting on
    syntax on

    " enable the cursor line to indicate where in a file I am
    set cursorline

    " jump to the line we were at when last editing a file.
    if has("autocmd")
        autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    endif

    " shell, I use bash
    set shell=/bin/bash
" }

" indentation settings {
    " default to 4 spaces when pressing tab
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab

    " use 2 spaces when pressing tabs for the following file types:
    if has("autocmd")
        autocmd Filetype html setlocal ts=2 sts=2 sw=2
        autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
        autocmd Filetype cpp setlocal ts=2 sts=2 sw=2
        autocmd Filetype c setlocal ts=2 sts=2 sw=2
    endif
" }

" color settings {
    " use 256 colors if terminal supports it
    if $TERM == "xterm-256color"
        set t_Co=256
    endif

    " my color scheme - desert
    colorscheme desert

    " hilight current line with black-ish background color
    highlight CursorLine cterm=NONE ctermbg=234 ctermfg=NONE
" }

" backup settings {
    " for these settings the following must be ran:
    " $ mkdir ~/.vim/{undo,backup,swap}
    " make undo files go under here with full paths
    set undodir=~/.vim/undo//
    " place backup files under here with full paths
    set backupdir=~/.vim/backup//
    " place swap files under here with full paths
    set directory=~/.vim/swap//
    " enable backups
    set backup
" }
