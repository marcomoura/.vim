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


"regenerate ctags
map <Leader>ct :!ctags --extra=+f --exclude=.git --exclude=log -R * `rvm gemdir`/gems/*<CR><CR>

" Ruby configurations
"------------------------

" Convert 1.8 hash syntax to 1.9 syntax
nmap <leader>19 :%s/:\([^ ]*\)\(\s*\)=>/\1:/gc<cr>
nmap <leader>18 :%s/\(\w\+\):\s/:\1 => /gc<cr>

nmap <leader>bp orequire 'pry'; binding.pry<esc>^


nnoremap <leader>gc :CtrlP app/controllers<cr>
nnoremap <leader>gj :CtrlP app/assets/javascripts<cr>
nnoremap <leader>gl :CtrlP lib<cr>
nnoremap <leader>gm :CtrlP app/models<cr>
nnoremap <leader>gs :CtrlP spec<cr>
nnoremap <leader>gt :CtrlP app/assets/templates<cr>
nnoremap <leader>gv :CtrlP app/views<cr>
nnoremap <leader>gw :CtrlP app/workers<cr>
nnoremap <leader>gy :CtrlP app/assets/stylesheets<cr>
nnoremap <leader>go :CtrlP config<cr>

nmap <LEADER>rf :CtrlP ~/.vim/rcfiles<cr>
nmap <LEADER>rp :CtrlP ~/.vim/rcplugins<cr>

nnoremap <leader>cpt :CtrlPTag<cr>

" Use current directory as base for CtrlP, but expose <leader>cpr for root
" let g:ctrlp_cmd = 'CtrlP =expand("%:p:h")<cr>'
nnoremap <leader>cpr :CtrlP =system('git rev-parse --show-toplevel')<cr><bs><cr>

map <leader>a :A<CR> " \t to jump to alternative file
map <leader>r :r<cr> " \t to jump to related file
