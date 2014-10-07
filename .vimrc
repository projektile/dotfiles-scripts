
" General {{{
"---------------

" basic settings
set tabstop=4
set shiftwidth=4 "expandtab
set nowrap
set noswapfile
set backspace=indent,eol,start
set foldmethod=marker
set nofoldenable
set scrolloff=5
set number
set ruler
set noerrorbells
set history=1000
set wildmenu
set wildmode=longest,list
set vb t_vb=
set fillchars+=vert:│
set list
set listchars=tab:\│\ ,trail:-
set laststatus=2
set splitright
set splitbelow
set autochdir
"set mouse=a
set completeopt=longest,menuone

" enable clipboard
set clipboard=unnamedplus

" enable pathogen
execute pathogen#infect()

" enable NeoComplete
"au VimEnter * NeoCompleteEnable
let g:neocomplete#enable_at_startup = 1

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" enable utf8
set encoding=utf8
set termencoding=utf-8

" searching
set nohlsearch
set incsearch
set ignorecase
set smartcase

" backups
set backup
set backupdir=~/.vim/backup,/tmp
set directory=~/.vim/tmp

" persistent undo history
set undofile " Save undo's after file closes
set undodir=~/.vim/undo,/tmp " where to save undo histories
set undolevels=1000 " How many undos
set undoreload=1000 " number of lines to save for undo

" cursorline
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" statusline
let g:lightline = {
      \ 'colorscheme': 'glitchco',
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

" source .vimrc
autocmd vimenter * source $MYVIMRC

" return to last edit position when opening files
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \ exe "normal! g`\"" |
            \ endif

" disable auto comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set formatoptions-=cro

" turn on syntax highlighting
syntax on

" key bindings
cmap w!! %!sudo tee > /dev/null %
map K 10k
map J 10j
map <C-k> <C-u>
map <C-j> <C-d>
map p e
map o b
map L :tabnext<cr>
map H :tabprev<cr>
map T :tabnew<cr>
map j gj
map k gk
map r :so $MYVIMRC<cr>
map R :so $MYVIMRC<cr>
map <C-o> :NERDTreeToggle<cr>
map <C-b> :TagbarToggle<cr>
"Map xclip copy/paste only
"map <C-c> y
"map <C-v> p
map <C-c> :w !xclip<CR><CR>
vmap <C-c> "*y
map <C-v> :r!xclip -o<CR><CR>
map <C-a> ggvG
map <C-s> {v}
map <C-n> :NERDTreeToggle<CR>
nmap q :q<cr>
nmap Q :wq<cr>
"nmap <C-v> V
noremap <F1> <Esc>
noremap ; :
noremap , ;
noremap D <Delete>
noremap <Space> <Nop>
let mapleader=" "
noremap <leader>v :vsplit<cr>
noremap <leader>j <C-W>j
noremap <leader>k <C-W>k
noremap <leader>l <C-W>l
noremap <leader>h <C-W>h
noremap <leader>a 8 <C-w><
noremap <leader>d 8 <C-w>-
noremap <leader>s 8 <C-w>+
noremap <leader>f 8 <C-w>>
noremap <leader><Space> za
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>

"}}}

" Colors {{{
"--------------

set t_Co=16

"colorscheme koehler
colorscheme glitchco

au VimEnter * RainbowParenthesesToggle
au VimEnter * RainbowParenthesesLoadRound
au VimEnter * RainbowParenthesesLoadSquare
au VimEnter * RainbowParenthesesLoadBraces

" }}}

