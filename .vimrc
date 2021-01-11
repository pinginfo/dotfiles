call plug#begin("~/.vim/plugged")
  " Theme
  Plug 'sonph/onehalf', { 'rtp': 'vim' }

  " File explorer with icons
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
call plug#end()

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore= []
let g:NERDTreeStatusline= ''
nnoremap <silent> <C-b> :NERDTreeToggle<CR>


" set splitright
" set splitbelow

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space

set number          " show line number

" Theme
 syntax on
set t_Co=256
 set cursorline
 colorscheme onehalfdark
let g:airline_theme='onehalfdark'
" lightline
let g:lightline = { 'colorscheme': 'onehalfdark' }
