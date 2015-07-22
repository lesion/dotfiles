set nocompatible              " be iMproved, required
" filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" "}}}
"
Plugin 'tmhedberg/matchit'
"Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/genutils'
"Plugin 'vim-scripts/Nibble'
"Plugin 'vim-scripts/HJKL'
Plugin 'tpope/vim-fugitive'
Plugin 'gorodinskiy/vim-coloresque.git'
Plugin 'ervandew/supertab'


"Plugin 'Shougo/neocomplcache'
"Plugin 'Shougo/neocomplete'
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'

Plugin 'bling/vim-airline'           " status bar and tabs fancy things
Plugin 'scrooloose/syntastic'        " syntax checking

 "Plugin 'msanders/snipmate.vim'
Plugin 'majutsushi/tagbar'           " F8 and tag bar appears
Plugin 'kien/ctrlp.vim'              " open file smarty
Plugin 'ntpeters/vim-better-whitespace' " strip white spaces
" Plugin 'godlygeek/tabular'               "
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'jelera/vim-javascript-syntax'
"Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'

"Plugin 'Yggdroot/indentLine'

Plugin 'plasticboy/vim-markdown'
" Plugin 'mattn/emmet-vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'marijnh/tern_for_vim'
" Plugin 'SirVer/ultisnips'
Plugin 'airblade/vim-gitgutter'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

Plugin 'garbas/vim-snipmate'

Plugin 'hynek/vim-python-pep8-indent'

"Plugin 'kshenoy/vim-signature'
Plugin 'honza/vim-snippets'

"  provides automatic closing of quotes, parenthesis, brackets,
"Plugin 'Raimondi/delimitMate'

" themes
Plugin 'sjl/badwolf'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Slava/vim-colors-tomorrow'
Plugin 'Lokaltog/vim-distinguished'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" a
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab

set nrformats-=octal

set ttimeout
set ttimeoutlen=100

set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set laststatus=2
set ruler
set showcmd
set wildmenu

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if has('path_extra')
  setglobal tags-=./tags tags^=./tags;
endif

if &shell =~# 'fish$'
  set shell=/bin/bash
endif

set autoread
set fileformats+=mac

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options
set laststatus=2  " make airline statusbar appears also for first tab
set t_Co=256
let g:airline_powerline_fonts = 1



map <C-left> :bp!<Enter>
imap <C-left> <Esc>:bp!<Enter>li
map <C-right> :bn!<Enter>
imap <C-right> <Esc>:bn!<Enter>li

imap <C-up> <Esc>:e 
map <C-up> :e 
map <C-down> :bp<Enter>:bd #<Enter>
imap <C-down> <Esc>:bp<Enter>:bd #<Enter>


let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

set background=dark
set incsearch

" leave always 5 lines between cursor and the end of screen
set so=5
set nostartofline

filetype plugin on
filetype indent on

set nobackup
set nowritebackup
set noswapfile

set autoread

set wildmenu

set ruler
set number
set ignorecase
set smartcase
set hlsearch
set magic
set showmatch
set mat=2
syntax on
set encoding=utf8

set autoindent
set smartindent
set wrap
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
"set relativenumber

nmap <F3> :TagbarToggle<CR>


nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

 set omnifunc=syntaxcomplete#Complete " override built-in C omnicomplete with C++ OmniCppComplete plugin
  let OmniCpp_GlobalScopeSearch   = 1
  let OmniCpp_DisplayMode         = 1
  let OmniCpp_ShowScopeInAbbr     = 1 "do not show namespace in pop-up
  let OmniCpp_ShowPrototypeInAbbr = 1 "show prototype in pop-up
  let OmniCpp_ShowAccess          = 1 "show access in pop-up
  let OmniCpp_SelectFirstItem     = 1 "select first item in pop-up
  set completeopt=menuone,menu,longest

let g:airline#extensions#tabline#enabled = 1
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_check_on_open=1


 set cursorline
 colorscheme distinguished
 " badwolf

let g:indentLine_color_term = 239


"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>


highlight ExtraWhitespace ctermbg=234
set synmaxcol=100

let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
vmap <silent> <leader>sv :so $MYVIMRC<CR>

nmap <leader>] :GitGutterNextHunk<CR>
nmap <leader>[ :GitGutterPrevHunk<CR>

"GitGutterLineHighlightsEnable


"you can have unwritten changes to a file and open a new file using :e,
" without being forced to write or undo your changes first.
set hidden
set colorcolumn=100


let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

