let mapleader = ","

nmap <leader>nt :NERDTreeToggle<CR>

" nohlsearch
nmap <leader>/ :silent noh<CR>


nmap <leader>e :e **/

nmap <leader>l :e #<CR>
nmap <leader>bd <Plug>Kwbd

" ack-grep
nmap <leader>f :Ack

" Ctrl-s to :w
" to work must set on terminal 'stty -ixon'
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
