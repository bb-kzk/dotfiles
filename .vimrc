

" VIM互換にしない。vimへの影響が大きいため、.vimrcの先頭に記述する。
set nocompatible

" 複数ファイルの編集を可能にする
set hidden

" 内容が変更されたら自動的に再読み込み
"set autoread

" Swapを使わない 
set noswapfile
" Swapを作るまでの時間m秒
" set updatetime=0

" Unicodeで行末が変になる問題を解決
"set ambiwidth=double

" 行間をでシームレスに移動する
"set whichwrap+=h,l,<,>,[,],b,s

" カーソルを常に画面の中央に表示させる
"set scrolloff=999

" バックスペースキーで行頭を削除する
set backspace=indent,eol,start

" カッコを閉じたとき対応するカッコに一時的に移動
"set nostartofline

" C-X,C-Aを強制的に10進数認識させる
set nrformats=
"set nrformats=alpha

" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title

" コマンドラインでTABで補完できるようにする
"set wildchar=<C-Z>

" 改行後に「Backspace」キーを押すと上行末尾の文字を1文字消す
set backspace=2

"C-vの矩形選択で行末より後ろもカーソルを置ける
"set virtualedit=block

" コマンド、検索パターンを50まで保存
set history=50

" 履歴に保存する各種設定
"set viminfo='100,/50,%,<1000,f50,s100,:100,c,h,!

" バックアップを作成しない
set nobackup


"-------Search--------
" インクリメンタルサーチを有効にする
set incsearch

" 大文字小文字を区別しない
set ignorecase

" 大文字で検索されたら対象を大文字限定にする
set smartcase

" 行末まで検索したら行頭に戻る
"set wrapscan


""-------Format--------
"自動インデントを有効化する
"set smartindent
"set autoindent

" フォーマット揃えをコメント以外有効にする
set formatoptions-=c

"括弧の対応をハイライト
"set showmatch


" Vimが挿入するインデントの幅
set shiftwidth=2
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab

" ターミナル上からの張り付けを許可
set paste

"http://peace-pipe.blogspot.com/2006/05/vimrc-vim.html
"set tabstop=2
"set shiftwidth=2
"set softtabstop=0
"set expandtab


""-------Look&Feel-----
"TAB,EOFなどを可視化する
"set list
"set listchars=tab:>-,extends:<,trail:-,eol:<

" 検索結果をハイライトする
set hlsearch

" ルーラー,行番号を表示
set ruler
set number

" コマンドラインの高さ
set cmdheight=1

" マクロなどの途中経過を描写しない
" set lazyredraw

" カーソルラインを表示する
set cursorline




""------- vundle関連 -----


filetype plugin on

" vundleを使うためのおまじない
set rtp+=~/.vim/vundle/
call vundle#rc('~/.vim/bundle')

" 使うプラグインを指定
Bundle 'petdance/vim-perl'
Bundle 'hotchpotch/perldoc-vim'
Bundle 'Shougo/neocomplcache'
"Bundle 'Shougo/neocomplcache-snippets-complete'
Bundle 'Shougo/neosnippet'
Bundle 'thinca/vim-quickrun'



""------- Perl開発 -----

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

 " Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Select with <TAB>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

let g:neocomplcache_ctags_arguments_list = {
  \ 'perl' : '-R -h ".pm"'
  \ }

let g:neocomplcache_snippets_dir = "~/.vim/snippets"
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default'    : '',
    \ 'perl'       : $HOME . '/.vim/dict/perl.dict'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" for snippets
imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-n>"
smap <C-k> <Plug>(neocomplcache_snippets_expand)











