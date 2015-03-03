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

Plugin 'vim-scripts/buftabs'
Plugin 'kien/ctrlp.vim'

Plugin 'sandeepcr529/Buffet.vim'

Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/taglist.vim'

Plugin 'vim-scripts/The-NERD-tree'

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
Plugin 'vim-scripts/jellybeans.vim'
Plugin 'vim-scripts/molokai'
Plugin 'vim-scripts/twilight256.vim'

" Javascript
Plugin 'vim-scripts/jQuery'
Plugin 'vim-scripts/Simple-Javascript-Indenter'
Plugin 'kchmck/vim-coffee-script'
Plugin 'itspriddle/vim-jquery'

" PHP
Plugin 'vim-scripts/php.vim--Garvin'
Plugin 'vim-scripts/php.vim--Nicholson'
Plugin 'rayburgemeestre/phpfolding.vim'

" HTML
Plugin 'gcmt/breeze.vim'
Plugin 'vim-scripts/xml.vim'
Plugin 'digitaltoad/vim-jade'

" reStructured Text
Plugin 'vim-scripts/VST'
Plugin 'vim-scripts/RST-Tables-CJK'

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
Plugin 'vim-scripts/Gist.vim'
Plugin 'beata/vimwiki'
" Processor
Plugin 'beata/fecompressor.vim'

call vundle#end()
