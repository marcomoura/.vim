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
Bundle 'tpope/vim-endwise.git'
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'tpope/vim-rvm.git'
Bundle 'prophittcorey/vim-flay.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'slim-template/vim-slim.git'
Bundle 'vim-scripts/vim-coffee-script.git'
Bundle 'rodjek/vim-puppet.git'


" dependencies to snipmante
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
Bundle "garbas/vim-snipmate"

Bundle 'vim-scripts/csv.vim.git'
Bundle 'tpope/vim-markdown.git'
Bundle 'tpope/vim-cucumber.git'
Bundle 'edsono/vim-matchit'
Bundle 'ervandew/supertab'

Bundle 'scrooloose/nerdtree.git'
Bundle 'widox/vim-buffer-explorer-plugin.git'

"plugin to auto complete single quote, double quote, parentheses"
Bundle 'vim-scripts/Auto-Pairs.git'

Bundle 'rgarver/Kwbd.vim.git'
Bundle 'kien/ctrlp.vim.git'
Bundle 'mileszs/ack.vim.git'
Bundle 'ddollar/nerdcommenter.git'
Bundle 'vim-scripts/AutoTag.git'
Bundle 'vim-scripts/closetag.vim.git'
Bundle 'godlygeek/tabular.git'
Bundle 'Valloric/YouCompleteMe'

Bundle 'pbrisbin/alt-ctags'
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


