"" ======== VUNDLE CONFIG ========
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" LIST PLUGINS HERE
" always perform (:PluginInstall) in vim for changes to take EFFECT

" LIST PLUGINS HERE
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'  
Plugin 'itchyny/lightline.vim'
Plugin 'dag/vim2hs'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'Shougo/vimproc.vim'
Plugin 'urso/haskell_syntax.vim'
Plugin 'vim-scripts/haskell.vim'
"Plugin 'vim-airline/vim-airline-themes'
Bundle 'edkolev/tmuxline.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'arcticicestudio/nord-vim'

" VUNDLE CLEANUP    
call vundle#end()
filetype plugin indent on

" ========== GENERAL VIM SETTINGS ==========

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
"colorscheme molokai
colorscheme nord
"if has ('gui_running')
"    set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
"    set background=dark
"endif

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

"let $PATH = $PATH . ':' . expand('~/.cabal/bin')

syntax on
set hlsearch " " Enable search highlighting

set number " " Enable line numbers
set noshowmode
set pastetoggle= " " Use F11 to toggle between paste and nopaste

" " vim-sensible enables smarttab. Here, we configure the rest:
set tabstop=2 " " Set the display size of t characters

" " When hitting , insert combination of t and spaces for this width.
set softtabstop=2 " " This combination is deleted as if it were 1 t when using backspace.

" " Set code-shifting width. Since smarttab is enabled, this is also the tab
set shiftwidth=2 " " insert size for the beginning of a line.

" " When inserting tab characters, use spaces instead
set expandtab
"
" " Instead of failing command, present dialog if unsaved changes
set confirm
"
set mouse=a " " Enable mouse in all modes

set cmdheight=2 " " Set the command section height to 2 lines.  Useful if notices (like
" syntastic) are shown on command lines

"Color column 80
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)
"Color column 80 for evil"Brincadeira"
"highlight ColorColumn ctermbg=red ctermfg=blue
"exec 'set colorcolumn=' .join(range(2,80,3), ',')


inoremap jk <esc>
set tabstop=4 
set shiftwidth=4 
set expandtab
"Search Settings
set ignorecase
set smartcase
set incsearch


" mappings
" quick pairs
let mapleader =","
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


"set background=dark
"colorscheme molokai
"if has('gui_running')
"        set background=light
"    else
"            set background=light
"        endif
"let g:molokai_original = 1
"let g:airline_theme = 'badwolf'
"let g:rehash256 = 1
"let g:airline_powerline_fonts = 1

let g:ycm_global_ycm_extra_conf = 'path to .ycm_extra_conf.py'

let g:tmuxline_powerline_separators = 0

let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

"let g:lightline = {
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"      \ },
"      \ 'component_function': {
"      \   'gitbranch': 'gitbranch#name'
"      \ },
"      \ }

"let g:lightline = {
"      \ 'mode_map': {
"        \ 'n' : 'N',
"        \ 'i' : 'I',
"        \ 'R' : 'R',
"        \ 'v' : 'V',
"        \ 'V' : 'VL',
"        \ "\<C-v>": 'VB',
"        \ 'c' : 'C',
"        \ 's' : 'S',
"        \ 'S' : 'SL',
"        \ "\<C-s>": 'SB',
"        \ 't': 'T',
"        \ },
"      \ }
