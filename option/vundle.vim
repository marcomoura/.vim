set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'leroyg/vim-flay'
Bundle 'scrooloose/syntastic.git'
Bundle 'sheerun/vim-polyglot'


" dependencies to snipmante
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
Bundle "garbas/vim-snipmate"

" Bundle 'godlygeek/tabular.git'
Bundle 'adelarsq/vim-matchit'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/closetag.vim.git'

Bundle 'scrooloose/nerdtree.git'
Bundle 'widox/vim-buffer-explorer-plugin.git'

"plugin to auto complete single quote, double quote, parentheses"
Bundle 'vim-scripts/Auto-Pairs.git'
Bundle 'ajh17/VimCompletesMe'


" Add a buffer close to vim that doesn't close the window
Bundle 'rgarver/Kwbd.vim.git'
Bundle 'ddollar/nerdcommenter.git'

Bundle 'kien/ctrlp.vim.git'
Bundle 'mileszs/ack.vim.git'

Bundle 'vim-scripts/AutoTag.git'
Bundle 'mhinz/vim-startify'

" color
Bundle 'altercation/vim-colors-solarized.git'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


