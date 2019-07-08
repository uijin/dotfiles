" Plugin {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/vimfiles/bundle/')
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Base16 theme
Plugin 'chriskempson/base16-vim'

" NerdTree
Plugin 'scrooloose/nerdtree'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}
"
Plugin 'chase/vim-ansible-yaml'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this linePlugin 'chriskempson/base16-vim'
" }}}

" Reference: https://keelii.github.io/2016/06/13/awsome-window-vimrc/
" Startup {{{
filetype indent plugin on

" vim ���P�|�覡�� marker
augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker
augroup END
" }}}

" General {{{
set nocompatible
set nobackup
set noswapfile
set history=1024
set autochdir
set whichwrap=b,s,<,>,[,]
set nobomb
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Vim ���q�{�H�s���M�t�ΰŶK�O�@��
set clipboard+=unnamed
" �]�m alt �䤣�M�g������
set winaltkeys=no
" }}}
"
" Lang & Encoding {{{
set fileencodings=utf-8,cp950,big5,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_TW
let $LANG = 'en_US.UTF-8'
"language messages en_US.UTF-8
" }}}

" GUI {{{
colorscheme base16-woodland

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"set cursorline
set hlsearch
set number
" ���f�j�p
"set lines=35 columns=140
" ���ΥX�Ӫ����f����e���f�U��/�k��
set splitbelow
set splitright
"����ܤu��/�����
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" �ϥΤ��m tab �˦��Ӥ��O gui
set guioptions-=e
set nolist
" set listchars=tab:?\ ,eol:?,trail:�E,extends:>,precedes:<
set guifont=Inconsolata:h12:cANSI
" }}}

" Format {{{
set autoindent
set smartindent
set tabstop=4
set expandtab
set softtabstop=4
set foldmethod=indent
syntax on
" }}}

" Format for YAML file{{{
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" }}}
"
" Keymap {{{
let mapleader=","

nmap <leader>s :source $VIM/_vimrc<cr>
nmap <leader>e :e $VIM/_vimrc<cr>

map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>th :tabp<cr>
map <leader>tl :tabn<cr>

" ���ʤ��ε��f
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" ���`�Ҧ��U alt+j,k,h,l �վ���ε��f�j�p
nnoremap <M-j> :resize +5<cr>
nnoremap <M-k> :resize -5<cr>
nnoremap <M-h> :vertical resize -5<cr>
nnoremap <M-l> :vertical resize +5<cr>

" ���J�Ҧ����ʥ��� alt + ��V��
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <left>
inoremap <M-l> <Right>

" IDE like delete
inoremap <C-BS> <Esc>bdei

nnoremap vv ^vg_
" �ഫ��e�欰�j�g
inoremap <C-u> <esc>mzgUiw`za
" �R�O�Ҧ��U���歺��
cnoremap <C-a> <home>
cnoremap <C-e> <end>

nnoremap <F2> :setlocal number!<cr>
nnoremap <leader>w :set wrap!<cr>

imap <C-v> "+gP
vmap <C-c> "+y
vnoremap <BS> d
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y
imap <C-V>      "+gP
map <S-Insert>      "+gP
cmap <C-V>      <C-R>+
cmap <S-Insert>     <C-R>+

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

" ���}��e�ؿ� windows
map <leader>ex :!start explorer %:p:h<CR>

" ���}��e�ؿ�CMD
map <leader>cmd :!start<cr>
" ���L��e�ɶ�
map <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>

" �ƻs��e���/���|��ŶK�O
nmap ,fn :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
nmap ,fp :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>

" �]�m����Buffer�ֱ���"
nnoremap <C-left> :bn<CR>
nnoremap <C-right> :bp<CR>

" }}}

