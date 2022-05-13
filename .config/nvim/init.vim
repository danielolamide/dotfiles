"------------------------------------
"General
"------------------------------------
set encoding=UTF-8
set tabstop=2
set number relativenumber
set softtabstop=2
set shiftwidth=2
set guicursor=
set autoindent
set smartindent
set conceallevel=3
set mouse=a
set list
set listchars=tab:▸\ ,trail:·
set scrolloff=15

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"-----------------------------------
" Plugins
"-----------------------------------
call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'itchyny/lightline.vim'
Plug '907th/vim-auto-save'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdcommenter'
Plug 'whatyouhide/vim-gotham'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets' , {'rtp' : '.'}
Plug 'tpope/vim-surround'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'cohama/lexima.vim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'ray-x/lsp_signature.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'


call plug#end()

" Autosave
let g:auto_save = 1
let g:auto_save_silent=1

" Ctrlp
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'


"-------------------------------
"Key Maps
"-------------------------------


" Move Lines
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

nmap // <plug>NERDCommenterToggle
vmap // <plug>NERDCommenterToggle

"NERDCommenterToggle
let g:NERDCustomDelimiters={
	\ 'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}

"Vim Colors
colorscheme gotham
let g:lightline = { 'colorscheme': 'gotham' }
let g:lightline = { 'colorscheme': 'gotham256' }
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none



"Split window
nmap sv :split<Return><C-w>w
nmap ss :vsplit<Return><C-w>w

"Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

"Reach
au BufReadPost *.rsh set filetype=reach
au Filetype reach set syntax=javascript




"-------------------------------
"Plugin Configurations
"-------------------------------

"Vim
source ~/.config/nvim/plug-config/ultisnips-config.vim
source ~/.config/nvim/plug-config/nvim-tree.vim
source ~/.config/nvim/plug-config/telescope.vim
source ~/.config/nvim/plug-config/floaterm.vim

"Lua
luafile ~/.config/nvim/lua/js-lsp.lua
luafile ~/.config/nvim/lua/py-lsp.lua
luafile ~/.config/nvim/lua/php-lsp.lua
luafile ~/.config/nvim/lua/json-lsp.lua
luafile ~/.config/nvim/lua/bash-lsp.lua
luafile ~/.config/nvim/lua/html-lsp.lua
luafile ~/.config/nvim/lua/css-lsp.lua
source ~/.config/nvim/lua/_nvim-comp.lua
luafile ~/.config/nvim/lua/_nvim-tree.lua
luafile ~/.config/nvim/lua/_lsp-installer.lua
luafile ~/.config/nvim/lua/_lsp-config.lua
luafile ~/.config/nvim/lua/_lsp-signature-config.lua
luafile ~/.config/nvim/lua/_nvim-treesitter.lua
