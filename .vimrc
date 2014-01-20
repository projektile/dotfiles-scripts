
" General {{{
"---------------

" basic settings
set tabstop=4
set shiftwidth=4
set nowrap
set noswapfile
set backspace=indent,eol,start
set foldmethod=marker
set number
set scrolloff=5
set ruler
set noerrorbells
set history=1000
set wildmenu
set wildmode=longest,list
set vb t_vb=
set mouse=
set fillchars+=vert:│
set list
set listchars=tab:\│\ ,trail:-
"set expandtab

set laststatus=4
set splitright
set splitbelow
set autochdir
set mouse=a

" enable pathogen
execute pathogen#infect()

" enable NERDtree
map <C-n> :NERDTreeToggle<CR>

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
map K <C-u>
map J <C-d>
map L :tabnext<cr>
map H :tabprev<cr>
map T :tabnew<cr>
map j gj
map k gk
map r :so $MYVIMRC<cr>
map R :so $MYVIMRC<cr>
map <C-o> :NERDTreeToggle<cr>
map <C-b> :TagbarToggle<cr>
imap jk <Esc><Esc>
imap kj <Esc><Esc
nmap q :q<cr>
nmap Q :wq<cr>
nmap <C-v> V
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

" }}}

" Colors {{{
"--------------

set t_Co=8
hi CursorLine ctermbg=7 cterm=bold
hi CursorLineNr ctermfg=238 ctermbg=235
hi LineNr ctermfg=7
hi Constant ctermfg=5
hi Statement ctermfg=1
hi MatchParen ctermfg=8 ctermbg=6 cterm=none
hi TabLineFill term=bold cterm=bold ctermbg=none
hi TabLine ctermfg=15 ctermbg=none cterm=none
hi TabLineSel ctermfg=Black ctermbg=none cterm=none
hi VertSplit ctermfg=235 ctermbg=235 cterm=none
hi StatusLine cterm=none ctermfg=0 ctermbg=7
hi StatusLineNC cterm=none ctermfg=235 ctermbg=235
hi Normal ctermfg=0 ctermbg=none
hi Directory ctermfg=4 cterm=none
hi Folded ctermbg=235 cterm=none
hi SpecialKey ctermfg=7
hi Nontext ctermfg=7
hi TagbarIcon ctermfg=red cterm=none
hi TagbarHighlight ctermfg=red cterm=bold ctermbg=none
hi TagbarScope ctermfg=blue ctermbg=none cterm=none
hi TagbarKind ctermfg=blue ctermbg=none cterm=none
hi TagbarNestedKind ctermbg=blue ctermbg=none cterm=none

" }}}

colorscheme herald
"colorscheme matrix

au VimEnter * RainbowParenthesesToggle
au VimEnter * RainbowParenthesesLoadRound
au VimEnter * RainbowParenthesesLoadSquare
au VimEnter * RainbowParenthesesLoadBraces

