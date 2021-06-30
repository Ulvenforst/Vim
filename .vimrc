"SETS"
syntax on
set mouse=a
set clipboard=unnamed
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
call plug#begin('~/.vim/plugged')
	Plug 'preservim/nerdtree'
	Plug 'mattn/emmet-vim'
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'morhetz/gruvbox'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'itchyny/lightline.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"CONFIGS"
let g:user_emmet_leader_key=','
nnoremap <Space>n :NERDTree<CR>
nnoremap ,t :IndentGuidesToggle<CR>

"INDENT LINES CONFIG"
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=239
hi IndentGuidesEven ctermbg=darkgrey

"COLORSCHEME"
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox
"LIGHTLINE"
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

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
