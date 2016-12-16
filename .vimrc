" .vimrc
"
" Cole Smith
"

" Editor Options
syntax on
set number
set cursorline
filetype plugin on

" Indentation Settings
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cindent

" GUI Options
set guioptions-=m
set guioptions-=T
set guioptions-=L
set guioptions-=r
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 10
set linespace=2

" Copy and Paste for Gvim
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Remap <leader>
let mapleader = "'"

" Map Modal toggle to jk
map! jk <ESC>

" Window Movement Mappings
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Auto change the directory to the current file
autocmd BufEnter * lcd %:p:h


" Vundle Recquirements
set nocompatible
filetype off

" Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdTree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'chriskempson/base16-vim'
Plugin 'fatih/vim-go'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on
" End Vundle Plugins

" Color Scheme
set background=dark
if has("gui_running")
    let base16colorspace=256
    colorscheme base16-flat
endif
let g:airline_theme='base16_flat'

" Powerline Config
set laststatus=2    " Always display the statusline in all windows
set noshowmode      " Hide the default mode text (e.g. -- INSERT -- below the statusline)
let g:Powerline_symbols = 'unicode'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" NERDTree Config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
