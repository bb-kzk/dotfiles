
set nocompatible
set hidden

"set autoread
 
set noswapfile
" set updatetime=0

"set ambiwidth=double

"set whichwrap+=h,l,<,>,[,],b,s

"set scrolloff=999

set backspace=indent,eol,start

"set nostartofline

set nrformats=
"set nrformats=alpha

set title

"set wildchar=<C-Z>

set backspace=2

"set virtualedit=block

set history=50

"set viminfo='100,/50,%,<1000,f50,s100,:100,c,h,!

set nobackup


"-------Search--------
set incsearch

set ignorecase

set smartcase

"set wrapscan


""-------Format--------
"set smartindent
"set autoindent
set nosmartindent
set noautoindent

set formatoptions-=c

"set showmatch

"set shiftwidth=2
"set smarttab

"set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

set list
set listchars=tab:>.,trail:_,eol:↲,extends:>,precedes:<,nbsp:%

"set paste

"http://peace-pipe.blogspot.com/2006/05/vimrc-vim.html
set tabstop=4
set shiftwidth=4
"set softtabstop=0

set expandtab


""-------Look&Feel-----
"set list
"set listchars=tab:>-,extends:<,trail:-,eol:<

set hlsearch

nnoremap <F3> :noh<CR>

set ruler
set number

set cmdheight=1

" set lazyredraw

set cursorline


""------- vimdiff -----
"highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
"highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
"highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
"highlight DiffText   cterm=bold ctermfg=10 ctermbg=21
hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7


""------- dein -----

"filetype off

"set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

"call dein#begin(expand('~/.vim/dein'))

"call dein#add('Shougo/dein.vim')
"call dein#add('Shougo/vimproc.vim', {'build': 'make'})

"call dein#add('Shougo/neocomplete.vim')
"call dein#add('Shougo/neomru.vim')
"call dein#add('Shougo/neosnippet')

"call dein#end()

"filetype plugin indent on
"syntax on


""------- vundle -----

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Bundle 'petdance/vim-perl'
Bundle 'hotchpotch/perldoc-vim'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'thinca/vim-quickrun'
Bundle 'w0ng/vim-hybrid'
Bundle 'chriskempson/vim-tomorrow-theme'

call vundle#end()
filetype plugin indent on
colorscheme Tomorrow-Night
syntax on


""------- Perl -----

" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
" Use neocomplcache.
"let g:neocomplcache_enable_at_startup = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
"let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

 " Use smartcase.
"let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Select with <TAB>
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"let g:neocomplcache_ctags_arguments_list = {
"  \ 'perl' : '-R -h ".pm"'
"  \ }

"let g:neocomplcache_snippets_dir = "~/.vim/snippets"
" Define dictionary.
"let g:neocomplcache_dictionary_filetype_lists = {
"    \ 'default'    : '',
"    \ 'perl'       : $HOME . '/.vim/dict/perl.dict'
"    \ }

" Define keyword.
"if !exists('g:neocomplcache_keyword_patterns')
"  let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" for snippets
"imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-n>"
"smap <C-k> <Plug>(neocomplcache_snippets_expand)

"imap <expr><C-k> neosnippet#expandable() ? "\<Plug>(neosnippet_jump_or_expand)" : pumvisible() ? "\<C-n>" : "\<C-k>"

if &term =~ "xterm-256color"
    set t_Co=256
    syntax on
endif







