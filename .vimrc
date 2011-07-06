" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Basic Settings {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set nobackup
set history=50
set number
set cursorline
set scrolloff=7
set ruler
set showcmd

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

set langmenu=zh_tw.utf-8
language messages zh_TW.UTF-8

if has('win32') && !has('win32unix')
    set shell=cmd.exe
endif

if !has('guirunning')
    colorscheme twilight256
endif

filetype on
filetype plugin indent on
syntax on

" Plugin Settings {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ftplugin - xml.vim
let xml_use_xhtml = 1
let xml_no_html = 1

" indent - Simple-Javascript-Indenter
let SimpleJsIndenter_BriefMode = 1

" utility - taglist
let Tlist_Inc_Winwidth = 0

" utility - buftabs
let buftabs_only_basename = 1

" utility - yankring
let yankring_history_file = '.vim_yankring_history'

" syntax - php.vim--Garvin
let php_sql_query = 1
let php_html_in_strings = 1
let php_folding = 1

" vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

runtime user/gist.vim
runtime user/snipMate.vim
runtime user/vimwiki.vim
runtime user/ConqueTerm.vim

" Automatic commands {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType html setl ft=xhtml
autocmd FileType html,js,css setl expandtab ts=4 shiftwidth=4 softtabstop=4
autocmd FileType css ino !! !import
autocmd FileType text setl textwidth=78

autocmd BufWritePre * :%s/\s\+$//e " Strip white spaces before write


" Map Commands {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","

" Buffers {{{2
    " Close the current buffer
    nnoremap <leader>bd :Bclose<cr>
    " Close all the buffers
    nnoremap <leader>ba :1,300 bd!<cr>

" Misc {{{2
    " Remove the Windows ^M - when the encodings gets messed up
    nnoremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
    " open other file
    nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

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

    nnoremap <leader>xml :call LoadXMLEdit()<CR>
    nnoremap <silent> <leader>t :TlistToggle<CR>
    nnoremap <silent> <leader>y :YRShow<CR>
    nnoremap <silent> <leader>f :NERDTreeToggle<CR>

" }}}2
" vim: set foldmethod=marker
