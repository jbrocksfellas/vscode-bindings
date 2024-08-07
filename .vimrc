" Basic settings
set number relativenumber
set clipboard=unnamed,unnamedplus
set timeout timeoutlen=200
let mapleader=" "

" Enable syntax highlighting
syntax enable

" Search settings
set ignorecase
set smartcase
set incsearch
set hlsearch

" Key mappings
" Insert mode
inoremap kj <Esc>l

" Normal mode
nnoremap vn vg_y
nnoremap df gd
nnoremap dn dg_

" Clear search highlight
nnoremap <C-n> :nohlsearch<CR>

" Splits
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>

" Navigate splits
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" File explorer (using built-in netrw)
nnoremap <leader>ne :Explore<CR>

" Visual mode
" Move selected lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Paste in visual mode without yanking the replaced text
vnoremap p "_dP

" Additional helpful settings
set hidden
set nowrap
set scrolloff=8
set sidescrolloff=8
" set colorcolumn=80
set signcolumn=yes

" Use true colors in vim under tmux
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif