" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set expandtab
set showcmd
set cursorline
set ruler
set magic
set mat=2
set noerrorbells
set novisualbell
set wildmenu
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
syntax on  		" Enables syntax highlighting for programming languages
set showmatch 		" Highlights matching brackets in programming languages
set autoindent  	" If you're indented, new lines will also be indented
set smartindent  	" Automatically indents lines after opening a bracket in programming languages
set backspace=2  	" This makes the backspace key function like it does in other programs.
set tabstop=4  		" How much space Vim gives to a tab
set number  		" Enables line numbering
set smarttab  		" Improves tabbing
set shiftwidth=4  	" Assists code formatting
colorscheme elflord 	" Changes the color scheme. 
set clipboard=unnamed
set foldmethod=manual   " Lets you hide sections of code

"Disabling arrow keys

nnoremap <Left> :echo "Forget your left arrow key!"<CR>
vnoremap <Left> :<C-u>echo "Forget your left arrow key!"<CR>
inoremap <Left> :<C-o>echo "Forget your left arrow key!"<CR>
nnoremap <Left> :echo "Forget your left arrow key!"<CR>
vnoremap <Left> :<C-u>echo "Forget your left arrow key!"<CR>

inoremap <Right> :<C-o>echo "Forget your right arrow key!"<CR>
nnoremap <Right> :echo "Forget your right arrow key!"<CR>
vnoremap <Right> :<C-u>echo "Forget your right arrow key!"<CR>
inoremap <Right>> :<C-o>echo "Forget your left arrow key!"<CR>

inoremap <Down> :<C-o>echo "Forget your down arrow key!"<CR>
nnoremap <Down> :echo "Forget your down arrow key!"<CR>
vnoremap <Down> :<C-u>echo "Forget your down arrow key!"<CR>
inoremap <Down>> :<C-o>echo "Forget your down arrow key!"<CR>

inoremap <Up> :<C-o>echo "Forget your up arrow key!"<CR>
nnoremap <Up> :echo "Forget your down up key!"<CR>
vnoremap <Up> :<C-u>echo "Forget your up down arrow key!"<CR>
inoremap <Up> :<C-o>echo "Forget your up arrow key!"<CR>

set backspace=indent,eol,start " allow backspacing over everything in insert mode. 

set copyindent " copy the previous indentation on autoindeting

set path+=** " is used to find files in all sub directories in all files use :find

let g:netrw_banner=0 "disable banners
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 "open splits to the right
let g:netrw_liststyle=3 "new tree

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

