" VimPlug
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-signify'
"Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()

"" Leader
let mapleader = " "

"" General
set number " Show line number on current line
"set relativenumber	" Show relative numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
 
"set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set expandtab	" Use spaces instead of tabs
set shiftwidth=2	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=2	" Number of spaces per Tab
"set foldmethod=indent
"set foldlevel=2
 
"" Advanced
set ruler	" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

set listchars=tab:>-,trail:~
set list

"" My additions
filetype on
syntax on
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
set background=dark
set colorcolumn=90
set hidden
set history=100

" NERDTree
map <C-o> :NERDTreeToggle<CR>

"insert mode
inoremap {}<CR> {<CR>}<C-o>O
autocmd InsertEnter,InsertLeave * set cul!
set timeoutlen=1000 
set ttimeoutlen=0

" split remaps
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>> 10<C-W>>
nnoremap <leader>< 10<C-W><
nnoremap <leader>- 10<C-W>-
nnoremap <leader>+ 10<C-W>+

set splitbelow
set splitright
set guioptions-=L

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" ControlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|build'
"vimgrep
set wildignore+=**/node_modules/**,git/**,**/build/**,**/semantic/**,**/android/**,**/ios/**
" vim signify (gitgutter)
let g:signify_realtime = 0
