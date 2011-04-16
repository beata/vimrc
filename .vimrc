" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Basic Settings {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on
filetype plugin on
filetype indent on
syntax on

set nocompatible
set nobackup
set number
set cursorline
set scrolloff=7
set ruler

" backspace
set backspace=eol,start,indent
set whichwrap+=<,>,[,]

" indent
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nopaste " paste 選項打開會造成sts等選項被復位

" search
set magic
set hlsearch
set incsearch
set noignorecase
set smartcase

" environment
set fileencodings=ucs-bom,utf-8,big5,cp936,gb18030,euc-jp,euc-kr,latin1
set encoding=utf-8
set termencoding=utf-8

set fileformats=unix,dos
set fileformat=unix

language messages zh_TW.UTF-8
colorscheme desert
if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono:h13
    set guioptions-=T
    source $VIMRUNTIME/delmenu.vim
    set langmenu=zh_tw.utf-8
    source $VIMRUNTIME/menu.vim
endif

if !has('win32unix')
    set shell=cmd.exe
endif

" Plugin Settings {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ftplugin - xml.vim
let xml_use_xhtml = 1
let xml_no_html = 1

" indent - Simple-Javascript-Indenter
let SimpleJsIndenter_BriefMode = 1

" utility - buftabs
let buftabs_only_basename = 1

" utility - gist
let gist_show_privates = 1
runtime user/gist.vim

" utility - snipMate
let snips_author = 'Beata Lin'

" utility - vimwiki
runtime user/vimwiki.vim

" syntax - php.vim--Garvin
let php_sql_query = 1
let php_html_in_strings = 1
let php_folding = 1

" Automatic commands {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType html setl ft=xhtml
autocmd FileType html,js,css setl noexpandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType css ino !! !import
autocmd FileType php ino <? <?php  ?><esc><esc>hhi

autocmd BufWritePre * :%s/\s\+$//e " Strip white spaces before write


" Map Commands {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","

" Buffers {{{2
    " Close the current buffer
    map <leader>bd :Bclose<cr>
    " Close all the buffers
    map <leader>ba :1,300 bd!<cr>
    " Use the arrows to something usefull
    no <right> :bn<cr>
    no <left> :bp<cr>

" Auto Complete {{{2
    ino {{ {{  }}<esc><esc>hhi
    ino {% {%  %}<esc><esc>hhi
    ino { {}<esc>i
    ino [ []<esc>i
    ino ( ()<esc>i
    ino ' ''<esc>i
    ino " ""<esc>i

" Misc {{{2
    " close highlight search
    nnoremap <silent> <ESC> <ESC>:nohlsearch<CR>
    " Remove the Windows ^M - when the encodings gets messed up
    map <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
    " open other file
    map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Plugin {{{2
    " load xml plugin {{{3
    function! LoadXMLEdit()
        let orig=&filetype
        unlet b:did_ftplugin
        set ft=xhtml
        ru ftplugin/xml.vim
        unlet b:did_ftplugin
        exec "set ft=".orig
    endfunction " }}}3

    map <leader>xml :call LoadXMLEdit()<CR>
    map <silent> <leader>t :TlistToggle<CR>
    map <silent> <leader>y :YRShow<CR>

" }}}2
" vim: set foldmethod=marker
