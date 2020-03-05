set nocompatible " be iMproved

" trailing whitespace will be highlighted automatically
match ErrorMsg '\s\+$'

" auto remove trailing whitespaces or line endings
autocmd BufWritePre * :%s/\s\+$//e

" nerdtree bookmakr
autocmd Filetype nerdtree nnoremap <buffer> <leader>b :Bookmark

" nerdtree fix
let g:NERDTreeDirArrows=1
let g:NERDTreeShowBookmarks=1

syntax on

" non-interactive shells do not load their ~/.(bash, zsh, whatever)rc files
" where RVM is being initialized
" remove the -i to not be interactive
" set shellcmdflag=-ic
set shellcmdflag=-c

" color scheme
set term=xterm-256color
let g:solarized_termcolors=256
set background=dark
" let g:solarized_termtrans = 1
colorscheme solarized

" switch buffers without save
set hidden

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

" presentation settings
set number              " precede each line with its line number
set numberwidth=3       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
set wrap                " Do wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ruler               " line and column number of the cursor position
set wildmenu            " enhanced command completion
set list

" Tab size and indentation: Use 2 spaces instead of hard tabs for indentation.
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent          " automatically indent new line

" force vim to use a older version of regex engine and it is actually FASTER for ruby
set regexpengine=1

set cursorline
set cursorcolumn

filetype plugin indent on " Enable filetype-specific indenting and plugins



"
" augroup myfiletypes
"   " Clear old autocmds in group
"   autocmd!
"   " autoindent with two spaces, always expand tabs
"   autocmd FileType ruby,eruby,yaml,markdown set ai sw=2 sts=2 et
" augroup END


" behavior
" ignore these files when completing names and in

set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

" search settings
set incsearch           " Incremental search
set hlsearch            " Highlight search match
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS

" directory settings
silent !mkdir -vp ~/.backup/undo/ > /dev/null 2>&1
set backupdir=~/.backup,.       " list of directories for the backup file
set directory=~/.backup,~/tmp,. " list of directory names for the swap file
set nobackup            " do not write backup files
set noswapfile          " do not write .swp files
set undofile
set undodir=~/.backup/undo/,~/tmp,.
set viminfo+=n~/.vim/viminfo


" folding
set foldcolumn=0        " columns for folding
set foldmethod=indent
set foldlevel=9
set nofoldenable        "dont fold by default "

" show status line
" 0: never
" 1: only if there are at least two windows
" 2: always
set laststatus=2


" Useful status information at bottom of screen
" "set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}\
" %{exists('g:loaded_rvm')?rvm#statusline():''}\ %=%-16(\ %l,%c-%v\ %)%P
" "statusline setup
set statusline=%f " tail of the filename
" set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}, " file encoding
set statusline+=\ %{&ff}] " file format
" set statusline+=\ %r " Opened type (read-only)
" set statusline+=\ %m " Modify?
" set statusline+=\ %y " File type (vim, php, ruby)
set statusline+=\ %{fugitive#statusline()} " Git
" set statusline+=\ %{exists('g:loaded_rvm')?rvm#statusline():''} " RVM
set statusline+=%= " left/right separator
set statusline+=%c, " cursor column
set statusline+=%l/%L " cursor line/total lines
set statusline+=\ %P " percent through file

" Warning syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" let g:ackprg="ack-grep -H --nocolor --nogroup --column"
" let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Ctrlp - Vimscript fuzzy file opener

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:ctags_file = '.git/tags'
let g:ctags_command = "ctags --tag-relative -f '%f' -R --exclude='.git'"
let g:ctags_excludes = [ '~', '~/dotfiles'  ]"

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

" Allow opening mutlipe splits with same file via CtrlP
let g:ctrlp_switch_buffer = 0

let g:ctrlp_match_window_bottom = 0
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_mruf_default_order = 1
let g:ctrlp_max_height = 45
let g:ctrlp_max_files = 300
let g:ctrlp_max_depth = 99
let g:ctrlp_prompt_mappings = {
\ 'MarkToOpen()':         ['<c-z>', '<c-x>'],
\ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>', '<C-@>', '<c-space>'],
\ }

