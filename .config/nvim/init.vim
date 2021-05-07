set encoding=UTF-8
set tabstop=2
set number
set softtabstop=2
set shiftwidth=2
set guicursor=
set autoindent
set smartindent
set conceallevel=3
set termguicolors


" Plugins
call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug '907th/vim-auto-save'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

" Autosave
let g:auto_save = 1
let g:auto_save_silent=1

" Ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Move Lines
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-b> :NERDTreeToggle<CR>
nmap // <plug>NERDCommenterToggle
vmap // <plug>NERDCommenterToggle
let NERDTreeShowHidden=1

" NERDTrees File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

"NERDCommenterToggle
let g:NERDCustomDelimiters={
	\ 'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}

colorscheme xcodedarkhc
"Vim Colors
augroup vim-colors-xcode
    autocmd!
augroup END

autocmd vim-colors-xcode ColorScheme * hi Comment        cterm=italic gui=italic
autocmd vim-colors-xcode ColorScheme * hi SpecialComment cterm=italic gui=italic

"Vim Devicon
"let g:webdevicons_conceal_nerdtree_brackets = 1

"after a re-source, fix syntax matching issues (concealing brackets):
"get rid of [  ] around icons in NerdTree
syntax enable
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

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

"Lua
luafile ~/.config/nvim/lua/js-lsp.lua
luafile ~/.config/nvim/lua/py-lsp.lua
luafile ~/.config/nvim/lua/php-lsp.lua
luafile ~/.config/nvim/lua/json-lsp.lua
luafile ~/.config/nvim/lua/compe-config.lua
