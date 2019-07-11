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

" Color
" Plugin 'vim-scripts/jellybeans.vim'
" Plugin 'vim-scripts/molokai'
" Plugin 'vim-scripts/twilight256.vim'
Plugin 'gosukiwi/vim-atom-dark'

" Javascript
" Plugin 'vim-scripts/Simple-Javascript-Indenter'
" Plugin 'jelera/vim-javascript-syntax'
Plugin 'isRuslan/vim-es6'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Galooshi/vim-import-js'

" Javascript - React
Plugin 'justinj/vim-react-snippets'

" PHP
Plugin 'vim-scripts/php.vim--Nicholson'
Plugin 'rayburgemeestre/phpfolding.vim'
Plugin 'shawncplus/phpcomplete.vim'

" HTML
Plugin 'gcmt/breeze.vim'
Plugin 'othree/xml.vim'
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-pug'

" SQL
Plugin 'vim-scripts/SQLUtilities'

" Git
Plugin 'tpope/vim-fugitive'

" Syntax pack
Plugin 'sheerun/vim-polyglot'

" Presentation
Plugin 'sotte/presenting.vim'


call vundle#end()
