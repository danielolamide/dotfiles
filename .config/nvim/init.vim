set encoding=UTF-8
set tabstop=2
set number
set softtabstop=2
set shiftwidth=2
set guicursor=
set autoindent
set smartindent
set conceallevel=3

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif


" Plugins
call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'itchyny/lightline.vim'
Plug '907th/vim-auto-save'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdcommenter'
Plug 'whatyouhide/vim-gotham'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/greplace.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'cohama/lexima.vim'
"Plug 'lukas-reineke/indent-blankline.nvim'
"Plug 'akinsho/nvim-bufferline.lua'
call plug#end()

" Autosave
let g:auto_save = 1
let g:auto_save_silent=1

" Ctrlp
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

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


"Split window
nmap sv :split<Return><C-w>w
nmap ss :vsplit<Return><C-w>w

"Move window
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

"Switch tab
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"Vim
source ~/.config/nvim/plug-config/lsp-config.vim
source ~/.config/nvim/plug-config/ultisnips-config.vim
source ~/.config/nvim/plug-config/nvim-tree.vim
source ~/.config/nvim/plug-config/telescope.vim
source ~/.config/nvim/plug-config/compe-config.vim 

"Lua
luafile ~/.config/nvim/lua/js-lsp.lua
luafile ~/.config/nvim/lua/py-lsp.lua
luafile ~/.config/nvim/lua/php-lsp.lua
luafile ~/.config/nvim/lua/json-lsp.lua
luafile ~/.config/nvim/lua/compe-config.lua
luafile ~/.config/nvim/lua/bash-lsp.lua
luafile ~/.config/nvim/lua/html-lsp.lua
luafile ~/.config/nvim/lua/css-lsp.lua
"luafile ~/.config/nvim/plug-config/bufferline-config.lua

"Rust Analyzer
lua << EOF
local nvim_lsp = require'lspconfig'

local on_attach = function(client)
    require'completion'.on_attach(client)
end

nvim_lsp.rust_analyzer.setup({
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "by_self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
        }
    }
})
EOF
