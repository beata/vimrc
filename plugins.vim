set nocompatible

" Requred Vundle setup
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Lib
Plugin 'tomtom/tlib_vim' " required by vim-snipmate
Plugin 'MarcWeber/vim-addon-mw-utils' " required by vim-snipmate
Plugin 'mattn/webapi-vim' " required by Gist and emmet-vim

" Navigation
Plugin 'wincent/command-t'
Plugin 'sandeepcr529/Buffet.vim'
Plugin 'scrooloose/nerdtree'

" ctags
Plugin 'vim-scripts/taglist.vim'
Plugin 'majutsushi/tagbar'


Plugin 'vim-scripts/YankRing.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/auto_mkdir'


" Editing
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ervandew/supertab'
Plugin 'garbas/vim-snipmate'
Plugin 'beata/snipmate-snippets'
Plugin 'vim-scripts/Auto-Pairs'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'tsaleh/vim-align'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'alpaca-tc/beautify.vim'

" Color
" Plugin 'vim-scripts/jellybeans.vim'
" Plugin 'vim-scripts/molokai'
" Plugin 'vim-scripts/twilight256.vim'
Plugin 'gosukiwi/vim-atom-dark'

" Javascript
" Plugin 'vim-scripts/Simple-Javascript-Indenter'
" Plugin 'jelera/vim-javascript-syntax'
Plugin 'isRuslan/vim-es6'
Plugin 'trotzig/import-js'
Plugin 'kchmck/vim-coffee-script'

" Javascript - React
Plugin 'mxw/vim-jsx'
Plugin 'justinj/vim-react-snippets'

" PHP
Plugin 'vim-scripts/php.vim--Garvin'
Plugin 'vim-scripts/php.vim--Nicholson'
Plugin 'rayburgemeestre/phpfolding.vim'

" HTML
Plugin 'gcmt/breeze.vim'
Plugin 'othree/xml.vim'
Plugin 'digitaltoad/vim-jade'

" reStructured Text
Plugin 'vim-scripts/VST'
Plugin 'vim-scripts/RST-Tables-CJK'

" mustache/handlebars
Plugin 'mustache/vim-mustache-handlebars'

" Ruby
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'

" CSS
Plugin 'groenewege/vim-less'

" SQL
Plugin 'vim-scripts/SQLUtilities'

" Git
Plugin 'tpope/vim-fugitive'

" Note
Plugin 'beata/vimwiki'

" Presentation
Plugin 'sotte/presenting.vim'


call vundle#end()
