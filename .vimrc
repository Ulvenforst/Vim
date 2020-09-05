"SETS"
set mouse=a
set noerrorbells
set nu rnu
set smartindent
set nowrap
set noswapfile
set nobackup
set tabstop=4 softtabstop=4 shiftwidth=4
set undodir=~/.vim/undodir
set undofile
set laststatus=2
let g:indent_guides_enable_on_vim_startup = 0 

"PLUGINS"
call plug#begin('~/.vim/plugged')
	Plug 'itchyny/lightline.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdtree'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'mattn/emmet-vim'
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'hugolgst/vimsence'
call plug#end()

"CONFIGS"
let g:user_emmet_leader_key=','
nnoremap <Space>f :Files<CR>
nnoremap <Space>n :NERDTree<CR>
nnoremap ,t :IndentGuidesToggle<CR>

"INDENT LINES CONFIG"
let g:indent_guides_auto_colors = 0 
hi IndentGuidesOdd  ctermbg=239
hi IndentGuidesEven ctermbg=darkgrey

"COLORSCHEME / LIGHTLINE"
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }
