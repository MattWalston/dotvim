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

" backups in less annoying place
if isdirectory($HOME . '/.vim/backup') == 0
  :silen !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save your swap files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backup files, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif
