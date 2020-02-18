set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Package management
Plugin 'VundleVim/Vundle.vim'

"General
Plugin 'vim-airline/vim-airline'

" Navigation
Plugin 'scrooloose/nerdtree'

" Searching
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Git
Plugin 'zivyangll/git-blame.vim'
Plugin 'airblade/vim-gitgutter'

" Syntax Highlighting
" Plugin 'sheerun/vim-polyglot'

" Editing
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'ycm-core/YouCompleteMe'

" Novelty
Plugin 'vimwiki/vimwiki'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let mapleader = " "

syntax enable
set background=dark
colorscheme solarized
set updatetime=200
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set timeoutlen=500
set ttimeoutlen=0
set number
set hlsearch
set incsearch
set splitbelow
set splitright
set noswapfile
set textwidth=0 " Removes max line length
set backspace=indent,eol,start

let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -U -g ""'
let g:ctrlp_use_caching = 1
let g:ctrlp_custom_ignore = 'node_modules\|docs'

let NERDTreeShowHidden=1

let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

nnoremap <leader>d "_d
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>/ :Ag<cr>
nnoremap <leader> :noh<cr> :<C-u>call gitblame#echo()<cr>

nnoremap oo o<Esc>k
nnoremap OO O<Esc>j

" Mappings for tab and window manipulation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap H gT
nnoremap L gt
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>s :split<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>


nnoremap <Up> :resize +20<cr>
nnoremap <Down> :resize -20<cr>
nnoremap <Right> :vertical resize +20<cr>
nnoremap <Left> :vertical resize -20<cr>

nnoremap <C-y> 3<C-y>
nnoremap <C-e> 3<C-e>

" Move up and down by visible lines if current line is wrapped
nnoremap j gj
nnoremap k gk

" I prefer 0 to take me to the first non-space character on the line
nnoremap 0 0w

inoremap jk <esc>
inoremap kj <esc>
vnoremap jk <esc>
vnoremap kj <esc>

nnoremap <leader>gt :YcmCompleter GoTo<cr>
nnoremap <leader>gr :YcmCompleter GoToReferences<cr>

augroup auto_saves
  autocmd!
  autocmd InsertLeave * :w
augroup END
