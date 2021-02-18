let mapleader=","

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround' " parenthesis plugin
Plug 'preservim/nerdtree' " file manager        
Plug 'jreybert/vimagit' " git plugin
Plug 'vimwiki/vimwiki' " rmd support 
Plug 'bling/vim-airline' " statusbar
Plug 'tpope/vim-commentary' " shortcuts for commenting
Plug 'ap/vim-css-color' " hex code color highlighter
Plug 'lervag/vimtex'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" Some basics:
set nocompatible
filetype plugin on

" apperance
set bg=dark
set encoding=utf-8
set number
syntax enable

syntax enable
colorscheme dracula

" tab behaviour
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus

map <C-c> "+y
map <C-v> "+P

let skip_defaults_vim=1
set viminfo=""

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Nerd tree
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Check file in shellcheck:
map <leader>s :!clear && shellcheck %<CR>

" Compile document, beit groff/LaTeX/markdown/etc.
map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
map <leader>p :!opout <c-r>%<CR><CR>

" Ensure files are read as what I want:
let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
map <leader>v :VimwikiIndex
let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
autocmd BufRead,BufNewFile *.tex set filetype=tex

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Paste text without auto indentation
set pastetoggle=<F3>

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abdmg'

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit="vertical"
