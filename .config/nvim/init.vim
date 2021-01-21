call plug#begin("~/.vim/plugged")
  " Theme
  Plug 'sonph/onehalf', { 'rtp': 'vim' }

  " File explorer with icons
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  " Autocomplete
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " Java autocomplete
  Plug 'artur-shaik/vim-javacomplete2'
call plug#end()
" Autocomplete
let g:deoplete#enable_at_startup = 1
" Java autocomplete
autocmd FileType java setlocal
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

" Tree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore= []
let g:NERDTreeStatusline= ''
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Terminal
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+;
" uses zsh instead of bash
function! OpenTerminal()
split term://bash
resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

set splitright
set splitbelow

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space

set number          " show line number
set rnu

set clipboard=unnamed

" Theme
 syntax on
set t_Co=256
 set cursorline
 colorscheme onehalfdark
let g:airline_theme='onehalfdark'
" lightline
let g:lightline = { 'colorscheme': 'onehalfdark' }
