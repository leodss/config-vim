""Plugin
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'ervandew/supertab'
	Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

""Shortcut
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <F9> :NERDTree<cr>

""Mapleader
let mapleader = "c"
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>vs :vsplit $MYVIMRC<cr>

""Common
set number
set ruler
set autoread
set autowrite
set mouse=v
set scrolloff=5
set mousehide
set hlsearch
set incsearch
set ignorecase
set fdm=diff
set t_Co=256
set term=screen-256color
set splitright
set tabstop=2 shiftwidth=2 expandtab
set tags=tags;/
set encoding=utf-8
set cmdheight=4
set textwidth=80
set updatetime=250
set laststatus=3
set statusline=%t%m\ [%l/%L]\ %y\ [%F]
set backspace=indent,eol,start
set iskeyword+=_,$,@,%,#
set wildmenu
set wildmode=longest:full,full
set autoindent
set smartindent
set background=dark
set nowrap
set tw=100
set formatoptions=tnmM
set cursorline
colorscheme apprentice

""Function
function StripTrailingWhiteSpace()
	%s/\s\+$//e
endfunction
nmap <silent> <leader>d :call StripTrailingWhiteSpace()<CR>

""Yank a region in VIM without the cursor moving to the top of the block
vmap y y']

""Paste a region in VIM without the cursor moving to the top of the block
noremap p p']

""Load header
autocmd bufnewfile *.sv :0r ~/.vim/header/_.sv
autocmd bufnewfile *.v :0r ~/.vim/header/_.v
autocmd bufnewfile *.csh :0r ~/.vim/header/_.csh
"autocmd BufWritePre * %s/\s\+$//e

""Load script
source ~/.vim/script/sample_stamp.vim
set rtp^=~/.vim/plugin/supertab.vim

""Config plugin
let NERDTreeIgnore = ['\~$', '\.swp$', '\.o']
let NERDTreeWinSize=30
let NERDTreeShowHidden=1
let NERDTreeDirArrows=1
