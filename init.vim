" ----- Plugins -----
call plug#begin('~/.local/share/nvim/plugged')
    " NERDTree
    Plug 'scrooloose/nerdtree'

    " Autoclosing '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Autocompletion and linter
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

 " Theme
    Plug 'joshdick/onedark.vim'

    " Status bar
    Plug 'vim-airline/vim-airline'

    " Commenter
    Plug 'preservim/nerdcommenter'
call plug#end()


" ------- General Settings ------
syntax on
set encoding=UTF-8
set relativenumber
set cursorline
set nu rnu
set tabstop=4
set shiftwidth=4
set softtabstop=4 expandtab
set wildmenu
set noruler
set hls is
set colorcolumn=80
set scrolloff=8
set nowrap
set signcolumn=yes

" ------- Remaps the leader key
let mapleader = " "


"------ NERDTree Settings
nnoremap <SPACE> <Nop>
nmap <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ------ Remaps the changing windows commands
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" ------ Remaps the nohl command to unlight search
noremap <leader> :noh<CR>

" ------- NERDCommenter Settings
noremap <leader>/ :call nerdcommenter#Comment(0,"toggle")<C-m>

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" Creates a function that trims whitespaces upon saving
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    cal winrestview(l:save)
endfun

augroup CS
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

" --------- Sources the theme

source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/plgs/coc.vim
