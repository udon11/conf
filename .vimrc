"vi互換をオフ
set nocompatible
syntax enable
filetype plugin indent on
"行番号
set number
set hlsearch
set tabstop=4
"自動インデント
set autoindent
"タブの代わりに空白文字を使用
set expandtab
set shiftwidth=4
"インクリメンタルサーチ
set incsearch
" バックアップファイルの場所
set backupdir=$HOME/vimbackup
"スワップファイルの場所
set directory=$HOME/vimbackup
"補完ウィンドウの色
highlight Pmenu guibg=#666666
highlight PmenuSel guibg=#AA0000 guifg=#FFFFFF
