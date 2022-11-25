"
"ooooooooo.   oooooooooo.   
"`888   `Y88. `888'   `Y8b  
" 888   .d88'  888      888 
" 888ooo88P'   888      888     Ricardo Duarte .vimrc
" 888`88b.     888      888 
" 888  `88b.   888     d88' 
"o888o  o888o o888bood8P'   
"

" Set vim runtime folder to ~/.vim
set runtimepath+=~/.vim

" Make this configs for VIM only not VI
set nocompatible

" required
filetype on

" => Load plugins to VIM using vim-plug
"{{{

" Auto install vim-plug if it's not installed in .vim
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
      silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif 

" Call to plugin manager
call plug#begin()

" {{ BASIC  }}

    " Rainbow parentesis for indent lvls
    Plug 'frazrepo/vim-rainbow'

    " Lightline (bottom status bar)
    Plug 'itchyny/lightline.vim'

" {{ FILE MANAGER }}
    " NERDTree -> file explorer (only loads when called)
    Plug 'preservim/NERDTree' 

    " Highlights for NERDTree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " Icons for NERDTree
    Plug 'ryanoasis/vim-devicons' 

    " Buffer explorer
    Plug 'jlanzarotta/bufexplorer'

" {{ CODING }}
    " Surround automatically adds the other bracket " and so on
    Plug 'tmsvg/pear-tree'

    " Syntastic to fix errors while programing (write to load and check)
    Plug 'scrooloose/syntastic'

    " Highlights for various languages
    Plug 'sheerun/vim-polyglot'

    " Code completion engine
    Plug 'valloric/youcompleteme'

    " Git commands inside VIM
    Plug 'tpope/vim-fugitive'

call plug#end()

" vim-plug help
" :PlugInstall  (checks .vimrc and installs new plugins)
" :PlugUpdate   (checks for new updates)
" :PlugUpgrade  (checks for plugin updates) 
" :PlugClean    (checks for unused plugins and removes them)
" :PlugStatus   (checks plugin status for errors)

" }}}


" => Geral
"{{{
" VIM comand history
set history=500

" Vim knows which filetype is now and changes configs acordingly
filetype plugin on

" Auto indent specific to files
filetype indent on

" Enable autoread if buffer gets changed outside of VIM
set autoread
au FocusGained,BufEnter * checktime

" Enable syntax highlight
"syntax enable

" Set leader for key combinations
let mapleader = ","

" Disable VIM auto backups
set nobackup
set nowb
set noswapfile

" Search current directory recursively
set path+=**
set path+=.*

" Display all matches when tab complete and way from longest
set wildmenu
set wildmode=longest:full,full

" Set incremental search
set incsearch

" Needed to keep multiple buffers open
set hidden

" Undo all the way
if has('persistent_undo')         "check if your vim version supports
  set undodir=$HOME/.vim/undo     "directory where the undo files will be stored
  set undofile                    "turn on the feature
endif

" Set foldmethod
set foldmethod=marker

" Set fish shell on vim term
set shell=/usr/bin/fish

" }}}


" => Colors and fonts
" {{{

" Remove toolbar, left side scroll bar, righ side scrollbar, menu bar and bottom bar
set guioptions-=T
set guioptions-=L
set guioptions-=r
set guioptions-=m
set guioptions-=b

" Support for 256 colors
set t_Co=256

" Tell vim that the background is dark to help with colors
set background=dark

" Theme to try to set
try
    colorscheme tomorrow_night
catch
endtry

" Set text encoding
set encoding=utf8

" Set default file type
set ffs=unix,dos,mac

" }}}


" => Status Line & Tabline 
" {{{

" Add tabline on top
set stal=2

" Remove mode from powerline (airline shows it)
set noshowmode

" Always show Status Line
set laststatus=2

" Status line config
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }

" }}}


" => VIM user interface
" {{{

" Fazer com que existam no minimo 10 linhas para cima e para baixo do cursor
set so=10

" Fazer com que a linha de comandos seja só 1 linha
set cmdheight=1

" Esconder um buffer quando é abandonado
set hid

" Mostrar a posição atual no canto inferior direito (linha : coluna)
set ruler

" Ignorar Maiscula/minuscula a pesquisar
set ignorecase

" Ser inteligente sobre a capitalização enquanto procura
set smartcase

" Sublinhar a pesquisa
set hlsearch

" Pesquisa comporta se como num browser (n para ir para a proxima)
set incsearch 

" Não atualizar o VIM enquanto a macro está a decorrer (Melhora desempenho)
set lazyredraw 

" Tem a haver com as \ e as / e expressões associadas (:help magic + info)
set magic

" Sublinhar par de parentises
set showmatch 

" Velocidade a que o par de parentises pisca
set mat=2

" Adiciona um espaço vazio a esquerda do numero da linha
set foldcolumn=0

" Mostrar o numero da linha
set number

" Numero Linha Highlight
highlight LineNr           ctermfg=8    ctermbg=none    cterm=none
highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
highlight clear CursorLine
set cursorline


" Mostrar o input no vim (canto inferior esquerdo)
set showcmd

" Remove mode from powerline (airline shows it)
set noshowmode

"Ativar o suporte de rato
set mouse=a
set ttymouse=sgr

" }}}


" => Text, tab and indent related 
" {{{

" Usar espaços em vez de tabs
set expandtab

" Dinamicamente altera o valor de tab para fazer colunas seguidas
set smarttab

" Quantos espaços vale um tab
set tabstop=4

" Quantos espaços vale um nivel de indentação
set shiftwidth=4

" Quebra de linha aos 500 caracteres
set lbr
set tw=500

" Indentar automaticamente
set ai

" Indentar inteligentemente (se faz nivel 1 ou 2 ou 3 etc)
set si

" Volta linha (se a linha for maior que a janela recomeça sem aumentar o numero de linhas)
set wrap

" }}}


" Personal Maps and Settings
" {{{

" Fast save
nmap <leader>w :w!<CR>

" Save as sudo, util qnd n se tem permição e para n perder o buffer
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Em modo normal espaço inicia a pesquisa para baixo e ctrl espaço para cima
map <space> /
map <C-space> ?

" Mover o cursor entre janelas (VIM style) (Esquerda, Cima, Baixo, Direita)
map <C-h> <C-W>h
map <C-k> <C-W>k
map <C-j> <C-W>j 
map <C-l> <C-W>l

"resizer janelas
nmap <leader>1 :vertical resize -5<cr>
nmap <leader>2 :vertical resize +5<cr>

"reload e edit das configs
nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>ve :e $MYVIMRC<CR>

" Fechar o buffer atual
map <leader>bd :Bclose<CR>:tabclose<CR>gT

" Fechar todos os buffers
map <leader>ba :bufdo<CR>

" Mudar para o buffer seg/anterior
map <leader>l :bnext<CR>
map <leader>h :bprevious<CR>

" Tabs e afins
map <leader>tn :tabnew<CR>
map <leader>tt :tabnext<CR>
map <leader>tc :tabclose<CR>

" Abrir uma tab no diretorio atual
map <leader>te :tabedit <C-r>=expand("%:p:h")<CR>/

" Mostrar o diretorio atual na linha de comandos
map <leader>cd :cd %:p:h<CR>:pwd<CR>

" Especificar a ordem a que se vai trocar de buffers
try
    set switchbuf=useopen,usetab,newtab
    set stall=2
catch
endtry

" Voltar a ultima posição quando abrir um ficheiro
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"setas em insert 60% FTWWWWWW
inoremap º <
inoremap ª >

"del executable
nmap <F1> :!rm %< && echo "Executavel apagado"<CR>

"Compile and run
nmap <F2> :call CompileRun()<CR>

" }}}


" Config Plugins
" {{{

" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NERDTree config {{{

map <leader>nn :NERDTreeToggle<CR>

let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 35

" Highlight 
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

let g:NERDTreeDisableFileExtensionHighlight = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1

" Enable folder icon highlight for exact match
let g:NERDTreeHighlightFolders = 1
" Highlight folder name
let g:NERDTreeHighlightFoldersFullName = 1

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-rainbow {{{
" only loads when this filetypes are being used 
au FileType c,cpp,objc,objcpp call rainbow#load()

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Buff explorer
" {{{

let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
 

" => Funções extra
" {{{

"compile and run
"Esta função deteta o tipo de ficheiro e compila o de acordo

func! CompileRun()
exec "w"
if &filetype == "c"
    exec "!gcc % -o %< && echo 'Output codigo' && ./%<"
elseif &filetype == "cpp"
    exec "!g++ % -o %< && echo 'Output codigo' && ./%<"
elseif &filetype == "python"
    exec "!time python3 %"
endif
endfunc

" }}}
