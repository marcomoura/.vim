" trailing whitespace will be highlighted automatically
match ErrorMsg '\s\+$'

" to not leave trailing whitespaces or line endings
autocmd BufWritePre * :%s/\s\+$//e

" nerdtree fix
let g:NERDTreeDirArrows=0

syntax on

" switch buffers without save
set hidden

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

" presentation settings
set number              " precede each line with its line number
set numberwidth=3       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ruler               " line and column number of the cursor position
set wildmenu            " enhanced command completion
set list

set tabstop=2
set shiftwidth=2
set expandtab

" behavior
                        " ignore these files when completing names and in


set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif


set autoindent          " automatically indent new line

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

" folding
set foldcolumn=0        " columns for folding
set foldmethod=indent
set foldlevel=9
set nofoldenable        "dont fold by default "

let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" show status line all the time
set laststatus=2


" Useful status information at bottom of screen
" "set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}\
" %{exists('g:loaded_rvm')?rvm#statusline():''}\ %=%-16(\ %l,%c-%v\ %)%P
" "statusline setup
set statusline=%f " tail of the filename
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}, " file encoding
set statusline+=\ %{&ff}] " file format
set statusline+=\ %r " Opened type (read-only)
set statusline+=\ %m " Modify?
set statusline+=\ %y " File type (vim, php, ruby)
set statusline+=\ %{fugitive#statusline()} " Git
set statusline+=\ %{exists('g:loaded_rvm')?rvm#statusline():''} " RVM
set statusline+=%= " left/right separator
set statusline+=%c, " cursor column
set statusline+=%l/%L " cursor line/total lines
set statusline+=\ %P " percent through file

" Warning syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" nerdtree fix
let g:NERDTreeDirArrows=0

