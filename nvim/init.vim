colorscheme catppuccin-macchiato
syntax on
set relativenumber
set nocompatible
set nobackup

let mapleader = " "
nnoremap <Space> <Nop>

let mapleader=" "


noremap <leader>s :w<CR>
noremap <leader>sq :wq <CR>
noremap <leader>q :q <CR>
noremap <leader>t :NERDTreeToggle<CR>
noremap <C-f> :NERDTreeFind<CR>
call plug#begin()
Plug 'mfussenegger/nvim-jdtls'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
call plug#end()

