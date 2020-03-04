:imap jk <Esc>
:set number
:set relativenumber
set encoding=utf-8
set hlsearch
set incsearch
map <silent> <CR> :noh<CR>
set cursorline
set title
set autoread
:map <F7> :checktime<CR>

filetype plugin indent on
" show existing tab with 4 spaces width

set tabstop=4
" when indenting with '>', use 4 spaces width

set shiftwidth=4
" On pressing tab, insert 4 spaces

set expandtab

call plug#begin('~/.config/nvim/plugged')

" Plugins go here. Example
" Plug 'foo/bar'
"

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    let g:deoplete#enable_at_startup = 1
    " use tab for completion
    inoremap <exrp><tab> pumvusible() ? "\<c-n>" : "\<tab>"

Plug 'sheerun/vim-polyglot'

Plug 'neomake/neomake'
    " Run Neomake when I save any buffer
    augroup localneomake
        autocmd! BufWritePost * Neomake
    augroup END
    " Don't tell me to use smartquotes in markdown
    let g:neomake_markdown_enabled_makers = []

Plug 'slashmili/alchemist.vim'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
nnoremap <silent> <C-k><C-k> :NERDTreeToggle<CR>

" command bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" :TestFile
Plug 'janko/vim-test'
" :Gblame
Plug 'tpope/vim-fugitive'

" brew instll fzy; brew install rg
Plug 'cloudhead/neovim-fuzzy'

" vtr
Plug 'christoomey/vim-tmux-runner'

nnoremap <silent> <C-f> :FuzzyOpen<CR>
nnoremap <silent> <C-s> :FuzzyGrep<CR>

Plug 'KKPMW/sacredforest-vim'

call plug#end()

set termguicolors
colorscheme sacredforest

let g:airline_theme = "base16_ocean"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
let test#strategy = "vtr"

nnoremap <silent> <C-h> :bprevious<CR>
nnoremap <silent> <C-l> :bnext<CR>
