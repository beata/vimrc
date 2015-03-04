" vim: set foldmethod=marker

runtime plugins.vim

" Functions {{{
fun! StripTrailingWhitespace()
    if g:auto_strip_trailing_whitespace
        %s/\s\+$//e
    endif
endfun

" load xml plugin
fun! LoadXMLEdit()
    let orig=&filetype
    unlet b:did_ftplugin
    set ft=xhtml
    ru ftplugin/xml.vim
    unlet b:did_ftplugin
    exec "set ft=".orig
endfun


function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
" }}}


" Basic Settings {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
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
set noerrorbells
set visualbell
set t_vb=
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

if has('gui_running')
    colorscheme torte
    set guifont=Monaco:h12
    set guioptions-=T
else
    colorscheme torte
    set t_Co=256
endif

" backups and undo
set nobackup
set nowb
set noswapfile
" Persistent undo
try
    if MySys() == "windows"
      set undodir=C:\Windows\Temp
    else
      set undodir=~/.vim_runtime/undodir
    endif
    set undofile
catch
endtry

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

" utility - yankring
let yankring_history_file = '.vim_yankring_history'

" syntax - php.vim--Garvin
let php_sql_query = 1
let php_html_in_strings = 1

" utility - vim-indent-guides
let indent_guides_start_level = 2
let indent_guides_guide_size = 1


let g:auto_strip_trailing_whitespace = 1

runtime user/gist.vim
runtime user/vimwiki.vim

" Automatic commands {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType php,javascript,html,scss,less setl expandtab ts=4 shiftwidth=4 softtabstop=4
autocmd FileType haml,css,sass,cucumber,yaml,ruby,eruby setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType html setl ft=xhtml
autocmd FileType css ino !! !import
autocmd FileType text setl textwidth=78
autocmd FileType javascript setl foldmethod=marker
autocmd BufEnter,BufNew *.hbs setl ft=xhtml


autocmd BufWritePre * call StripTrailingWhitespace()


" Map Commands {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","

" Window {{{2
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-h> <C-W>h
    map <C-l> <C-W>l

" Misc {{{2
    " Remove the Windows ^M - when the encodings gets messed up
    nnoremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
    " open other file
    nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Plugin {{{2
    nnoremap <leader>xml :call LoadXMLEdit()<CR>

" Visual mode related {{{2

    "  Convert table scheme to comma separated field list.
    vnoremap <leader>s :s/.*\(`.*`\).*\n/\1, /g<cr>

    "  In visual mode when you press * or # to search for the current selection
    vnoremap <silent> * :call VisualSearch('f')<CR>
    vnoremap <silent> # :call VisualSearch('b')<CR>

    " When you press gv you vimgrep after the selected text
    vnoremap <silent> gv :call VisualSearch('gv')<CR>
    map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" }}}2

runtime user/other.vim
