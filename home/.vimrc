set encoding=utf-8 " scriptencodingより後に書くと文字コードをうまく扱えないため
scriptencoding utf-8 " マルチバイト文字を使用するので宣言

" ------------------------------
" vimrcを呼びこむダビにautocmdが登録されないようにgroupを指定
" ------------------------------
augroup vimrc
  autocmd!
augroup END

" ------------------------------
" 本体の設定
" ------------------------------
set nobackup " バックアップファイルを作成しない
set noswapfile " ゴミが残るので、スワップファイルは作成しない
set noundofile " .{file-name}.un~を作成しない
set clipboard=unnamed,autoselect " ヤンクと選択をクリップボードにコピー
set autoread " 外部変更の自動読込
set laststatus=2 " ステータスラインを表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
syntax on
set cmdheight=1 "コマンドラインの行数
set showcmd " 入力中のコマンドを表示
set wildmenu " コマンドの補完候補を表示
set number " 行番号を表示
highlight LineNr ctermfg=7
highlight CursorLineNr cterm=bold ctermfg=0 ctermbg=3
set cursorline " 現在行の可視化
set ruler " カーソルの位置を表示
set showmatch " 括弧を強調
set ambiwidth=double " マルチバイト文字や記号でカーソルがずれないようにする
set nowrap " 折り返しなし
set scrolloff=5 " 余裕を持たせてスクロール
set title " タイトルバーにファイル名を表示
set whichwrap=b,s,h,l,<,>,[,] " カーソルが行頭/行末で止まらないようにする
set notitle " vimを使ってくれてありがとう
let mapleader=','

" ------------------------------
" インデント
" ------------------------------
set nocindent
set nosmartindent
set autoindent
set expandtab " Tabキー to 半角スペース
set tabstop=2 " Tab幅
set shiftwidth=2 " インデント時のスペース数

" ------------------------------
" 検索
" ------------------------------
set ignorecase " 大文字小文字を無視
set smartcase " 大文字の場合は普通の検索
set nowrapscan " 検索の次へで先頭に戻らない
set incsearch " インクリメンタルサーチ

" ------------------------------
" 不可視文字
" ------------------------------
set list " 不可視文字を表示
set listchars=tab:▸\ ,trail:░,eol:↲

" ------------------------------
" vim-plug （Vimプラグイン管理）
" ------------------------------
if has('vim_starting')
  set runtimepath+=~/.vim/plugged/vim-plug
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    call system('mkdir -p ~/.vim/plugged/vim-plug')

    " vim-plugをインストール
    echo 'install vim-plug...'
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')

    " 日本語のvim helpをインストール
    echo 'install vimdoc-ja...'
    call system('git clone https://github.com/vim-jp/vimdoc-ja.git ~/.vim/plugged/vim-plug/vimdoc-ja')
    helptags ~/.vim/plugged/vim-plug/vimdoc-ja/doc
    set helplang=ja
  endif
endif

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-plug', {'dir': '~/.vim/plugged/vim-plug/autoload'}
  Plug 'vim-scripts/vim-auto-save'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'tpope/vim-fugitive' " Vimからgit操作
  Plug 'airblade/vim-gitgutter' " gitの差分を視覚化
  Plug 'marijnh/tern_for_vim', {'for': ['javascript']} " Javascriptの入力補完
  Plug 'pangloss/vim-javascript' " Javascriptのsyntaxhilight
  Plug 'Shougo/neocomplete' " 自動入力補完
  Plug 'cohama/lexima.vim' " 括弧の自動入力補完
  Plug 'mattn/emmet-vim' " Zen Coding
call plug#end()

" ------------------------------
" Auto Save
" ------------------------------
let g:auto_save=1 " 自動保存を有効化

" ------------------------------
" インデントガイド
" ------------------------------
let g:indent_guides_auto_colors=0 " 自動カラーを無効
highlight IndentGuidesEven ctermbg=darkgray
let g:indent_guides_enable_on_vim_startup=1 " Vim起動時にenable
nmap <Leader>ig <Plug>IndentGuidesToggle

" ------------------------------
" 入力補完
" ------------------------------
let g:neocomplete#enable_at_startup = 1 " neocompleteを起動時に有効化
let g:neocomplete#enable_underbar_completion = 1 " _区切りの補完を有効化
let g:neocomplete#smart_case = 1 " 大文字が入力されるまで大文字小文字の区別を無視する
autocmd vimrc InsertLeave * pclose " インサートモードから抜ける時にプレビューを閉じる

" ------------------------------
" Zen Coding
" ------------------------------
let g:user_emmet_leader_key='<C-e>'

" ------------------------------
" Key Mapping
" ------------------------------
" 表示行単位で移動（折り返しでの振る舞い
noremap j gj
noremap k gk
" 通常動作も残しておく
noremap gj j
noremap gk k
" ハイライトを止める
nnoremap <silent> <Esc><Esc> :<C-u>nohlsearch<CR>
" C-cでInsertLeaveが反応しないためEscに統一
inoremap <C-c> <Esc>
" Tabで次の候補を選択
inoremap <expr><Tab> pumvisible()? "\<C-n>" : "\<Tab>"
" Zen CodingのExpandをTabで発動
" imap <expr><tab> emmet#expandAbbrIntelligent("\<Tab>")
