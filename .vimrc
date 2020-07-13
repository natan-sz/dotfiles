filetype indent on
syntax on

set smartindent
set nu
set nowrap
set noswapfile
set incsearch

autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2

inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj

call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'morhetz/gruvbox'
	Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

inoremap { {}<Esc>i
