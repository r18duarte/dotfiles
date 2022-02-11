""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Add plugins to VIM using vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()

"NERDTree -> file explorer
Plug 'preservim/NERDTree'

"Git commands inside VIM
Plug 'tpope/vim-fugitive'

"Surround automatically adds the other bracket " and so on
Plug 'tpope/vim-surround'

"Syntastic to fix errors while programing (write to enable)
Plug 'scrooloose/syntastic'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Config Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"NERDTree config
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 35
map <leader>nn :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Personal Maps and Settings  <leader> = , // nmap = normal mode map // imap = insert mode // no = no repetition
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"resizer janelas
map <leader>1 :vertical resize -5<cr>
map <leader>2 :vertical resize +5<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"compile and run 

"del executable
nmap <F1> :! rm %< && echo "Executavel apagado"<CR>

"Compile and run C
nmap <F2> :w <CR>:!gcc % -o %< && ./%< <CR>

"Compile and run C++
nmap <F3> :w <CR>:!g++ % -o %< && ./%< <CR>

"setas em insert
inoremap º <
inoremap ª >

"Numero Linha Highlight
highlight LineNr           ctermfg=8    ctermbg=none    cterm=none
highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
set cursorline

"show commands
set showcmd
