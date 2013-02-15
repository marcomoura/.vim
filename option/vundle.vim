set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/vundle/
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
Bundle 'scrooloose/syntastic.git'
Bundle 'bbommarito/vim-slim.git'
Bundle 'vim-scripts/vim-coffee-script.git'
Bundle 'rodjek/vim-puppet.git'


Bundle 'tpope/vim-markdown.git'
Bundle 'tpope/vim-cucumber.git'
Bundle 'tsaleh/vim-matchit.git'

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


