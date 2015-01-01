set background=dark
syntax on
set number
set nowrap
set textwidth=0
set shiftwidth=4
set tabstop=4
set expandtab
set hlsearch
set visualbell t_vb=
set nobackup
set nowritebackup
set noswapfile
set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp,default,latin
set nocompatible
set cursorline
set cursorcolumn
set autoread
set virtualedit=block " 矩形選択のモード
set guioptions-=L "左スクロールバーを非表示
set guioptions-=T "メニューバーを非表示
set guioptions-=r "右スクロールバーを非表示
set guioptions-=e "タブバーをテキストモードに
set formatoptions+=mM
set shellslash " Windowsでもパスを/で扱えるように
set laststatus=2
set showtabline=2 " タブバーを常に表示
set matchpairs& matchpairs+=<:>
set matchtime=3
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set foldmethod=syntax
set foldlevel=5
set scrolloff=8
set undofile
set undodir=~/.vimundo
set grepprg=ag\ --nogroup\ -iS
set grepformat=%f:%l:%m
