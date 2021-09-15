" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

set showcmd                             " Show (partial) command in status line.
set showmatch	  	                    " Show matching brackets.
set ignorecase  	                    " Do case insensitive matching
set smartcase	  	                    " Do smart case matching
set incsearch	  	                    " Incremental search
set autowrite	  	                    " Automatically save before commands like :next and :make
set expandtab                           " expand tabs to spaces
set showcmd                             " display incomplete commands
set cursorline                          " highlight the current line in every window and update cursor moves.
set ruler                               " line number, the column number, the virtual column number
set wildmenu                            " enable enhanced command line completion
set hidden		                        " Hide buffers when they are abandoned
set mouse=a		                        " Enable mouse usage (all modes)
syntax on  		                        " Enables syntax highlighting for programming languages
set showmatch 	                        " Highlights matching brackets in programming languages
set autoindent                          " If you're indented, new lines will also be indented
set smartindent                         " Automatically indents lines after opening a bracket in programming languages
set backspace=2                         " This makes the backspace key function like it does in other programs.
set tabstop=4  	                        " How much space Vim gives to a tab
set number  		                    " Enables line numbering
set smarttab  	                        " Improves tabbing
set shiftwidth=4  	                    " Assists code formatting
colorscheme elflord 	                " Changes the color scheme. 
set foldmethod=manual                   " Lets you hide sections of code
set backspace=indent,eol,start          " allow backspacing over everything in insert mode. 
set copyindent                          " copy the previous indentation on autoindeting
set path+=**                            " is used to find files in all sub directories in all files use :find

let g:netrw_banner=0 "disable banners
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 "open splits to the right
let g:netrw_liststyle=3 "new tree

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
