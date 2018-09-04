" current millenium
set nocompatible

" color scheme
set termguicolors " send full color commands, afterall it is 2018
let g:gruvbox_italic='1' " gruvbox color scheme disables italics, this enables
set background=dark
colorscheme gruvbox

" enable syntax and plugins
syntax enable
filetype plugin on
set path+=** " recurse into subfolder
set wildmenu

" perhaps move this
set wildignore+=*/min/*,*/node_modules/*,*/bower_components/*

" file browsing
let g:netrw_banner=0 " disable banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_list_style=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()

" standard indents
set tabstop=2 " 2 space tab
set expandtab " use spaces for tabs
set softtabstop=2
set shiftwidth=2
filetype indent on
set autoindent

" line length marker
set colorcolumn=80

" line numbers
set number
set nocursorline

set showcmd
