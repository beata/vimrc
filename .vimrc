" =================================================
" Basic Settings
" =================================================
filetype on
filetype plugin on
filetype indent on
syntax on

set nobackup
set nocompatible
set number
set cursorline
set ruler

" indent
" -------------------------------------------------
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" paste 選項打開會造成sts等選項被復位
set nopaste

" search
" -------------------------------------------------
set magic
set hlsearch
set incsearch
set noignorecase
set smartcase

" charset
" -------------------------------------------------
set fileformats=unix,dos
set fileformat=unix

set fileencodings=ucs-bom,utf-8,big5,cp936,gb18030,euc-jp,euc-kr,latin1
set encoding=utf-8
set termencoding=utf-8
language messages zh_TW.UTF-8

" eye candy
" -------------------------------------------------
colorscheme desert
if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono:h13
    set guioptions-=T
    source $VIMRUNTIME/delmenu.vim
    set langmenu=zh_tw.utf-8
    source $VIMRUNTIME/menu.vim
endif

" Auto complete of (, ", ', [, {
" -------------------------------------------------
ino ( ()<esc>:let leavechar=")"<CR>i
ino { {}<esc>:let leavechar="}"<CR>i
ino [ []<esc>:let leavechar="]"<CR>i
ino ' ''<esc>:let leavechar="'"<CR>i
ino " ""<esc>:let leavechar='"'<CR>i

" ============================================================
" Plugin settings
" ============================================================
" Pathogen
" -------------------------------------------------
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" ftplugin - xml.vim
let xml_use_xhtml = 1
let xml_no_html = 1

" indent - Simple-Javascript-Indenter
let SimpleJsIndenter_BriefMode = 1

" utility - buftabs
let buftabs_only_basename = 1

" utility - gist
let gist_show_privates = 1

if has('win32unix')
    source $HOME/.vim/gist.vimrc
else
    source $HOME/vimfiles/gist.vimrc
endif

" ============================================================
" Syntax & Filetype
" ============================================================
autocmd BufNewFile,BufRead *.html setfiletype xhtml | set noexpandtab
autocmd BufNewFile,BufRead *.js   set noexpandtab
autocmd BufNewFile,BufRead *.txt  setfiletype txt | let Tlist_Sort_Type = "order"
" Markdown
autocmd BufNewFile,BufRead *.{md,mkd,mkdn,mark*} setfiletype=markdown

autocmd BufWritePre * :%s/\s\+$//e


" ============================================================
" Hotkeys
" ============================================================
let mapleader=","
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

