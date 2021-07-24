"SETS"
syntax on
set mouse=a
set clipboard=unnamed
set guicursor=
set noerrorbells
set nu rnu
set smartindent
set nowrap
set noswapfile
set nobackup
set tabstop=4 softtabstop=4 shiftwidth=4
set undodir=~/.vim/undodir
set undofile
set incsearch
set laststatus=2
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set noshowmode
set background=dark
let g:AutoPairsFlyMode = 1
let g:indent_guides_enable_on_vim_startup = 0

"PLUGINS"
call plug#begin('~/.config/nvim/autoload/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'morhetz/gruvbox'
	Plug 'mattn/emmet-vim'
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree'
	Plug 'andweeb/presence.nvim'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'jiangmiao/auto-pairs'
call plug#end()

"COLORSCHEME"
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox
"LIGHTLINE"
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

"CONFIGS"
let g:user_emmet_leader_key=','
let g:presence_neovim_image_text   = "Neovim"
nnoremap <Space>n :NERDTree<CR>
nnoremap ,t :IndentGuidesToggle<CR>

"SAVE FOLDING"
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"AUTOCOMMANDS"
fun! TrimWhiteSpace()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN
	autocmd!
	autocmd BufWritePre * :call TrimWhiteSpace()
augroup END
