set nocompatible

" Requred Vundle setup
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/vundle'

Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'mattn/webapi-vim'

Plugin 'vim-scripts/buftabs'
Plugin 'kien/ctrlp.vim'
Plugin 'sandeepcr529/Buffet.vim'
Plugin 'vim-scripts/Conque-Shell'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/taglist.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'beata/vimwiki'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'vim-scripts/Gist.vim'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/auto_mkdir'


" Editing
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ervandew/supertab'
Plugin 'garbas/vim-snipmate'
Plugin 'beata/snipmate-snippets'
Plugin 'vim-scripts/Auto-Pairs'
Plugin 'mattn/zencoding-vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/RST-Tables-CJK'
Plugin 'vim-scripts/SQLUtilities'
Plugin 'vim-scripts/VST'
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
Plugin 'vim-scripts/phpfolding.vim'

" HTML
Plugin 'gcmt/breeze.vim'
Plugin 'vim-scripts/xml.vim'
Plugin 'digitaltoad/vim-jade'

" Ruby
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'

" CSS
Plugin 'groenewege/vim-less'

Plugin 'beata/fecompressor.vim'

call vundle#end()
