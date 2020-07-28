filetype indent on
syntax on

set smartindent
set nu
set nowrap
set noswapfile
set incsearch

inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj

call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'morhetz/gruvbox'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'mattn/emmet-vim'
	Plug 'ambv/black'
	Plug 'bling/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-fugitive'
	Plug 'ap/vim-css-color'
call plug#end()

colorscheme gruvbox
set background=dark

let g:airline_theme='base16'

autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.htm,*.html let g:user_emmet_expandabbr_key='<Tab>'
autocmd BufRead,BufNewFile *.htm,*.html imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
autocmd FileType html,css EmmetInstall

let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>

set pyx=3
