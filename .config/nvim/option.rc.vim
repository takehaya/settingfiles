"seting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" ルーラー表示
set ruler
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

# 左右のカーソル移動において、行を跨いで移動出来る様にするオプション。行頭で左を押すと前行末に跳ぶ様に、行末で右を押すと次行頭に跳ぶようにする。
set whichwrap=b,s,h,l,<,>,[,],~
# モードラインのフォーマット
set ts=2 sts=0 sw=2 et
# clikeなインデント
set cindent

set fileencodings=utf-8,euc-jp,ucs-bom,iso-2022-jp,sjis,cp932,latin1
set nowrap
if has('nvim')
  set clipboard+=unnamedplus
  if has('mouse')
    set mouse=
  endif
else
  set laststatus=2
  set wildmenu
  set clipboard=unnamed,autoselect
  set backspace=indent,eol,start
endif
" visual tab
if has('unix')
  autocmd MyAutoCmd ColorScheme * hi SpecialKey ctermfg=darkmagenta ctermbg=none
else
  autocmd MyAutoCmd ColorScheme * hi SpecialKey ctermfg=darkmagenta
endif
set list listchars=tab:¦_
" highlighting zenkaku space
autocmd MyAutoCmd BufRead,BufNew * match Error /　/

" ===========================================================
" disable default plugins

let g:loaded_gzip              = 1
let g:loaded_tar               = 1
let g:loaded_tarPlugin         = 1
let g:loaded_zip               = 1
let g:loaded_zipPlugin         = 1
let g:loaded_rrhelper          = 1
let g:loaded_2html_plugin      = 1
let g:loaded_vimball           = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_getscript         = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_netrwFileHandlers = 1
"let g:loaded_matchparen        = 1
let g:loaded_LogiPat           = 1
let g:loaded_logipat           = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_spellfile_plugin  = 1
let g:loaded_man               = 1
let g:loaded_matchit           = 1

"
" for Lang
"
autocmd MyAutoCmd FileType fortran set colorcolumn=5
autocmd MyAutoCmd FileType cpp set ts=4 sts=0 sw=4 noet
