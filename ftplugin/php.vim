" PHP
" Convert table scheme to php class variable
vnoremap <leader>v :s/.*`\(.*\)`.*/public $\1;/g<cr>

" Convert to php tag from dot string with single quote
vnoremap t. :s/'\s*\.\s*/<?php echo /g<CR> :s/\s*\.\s*'/ ?>/g<CR>
" Convert to php tag from dot string with double quote
vnoremap t.2 :s/"\s*\.\s*/<?php echo /g<CR> :s/\s*\.\s*"/ ?>/g<CR>

" Convert to php tag from comma string with single quote
vnoremap t, :s/',\s*/<?php echo /g<CR> :s/,\s*'/ ?>/g<CR>
" Convert to php tag from comma string with double quote
vnoremap t,2 :s/",\s*/<?php echo /g<CR> :s/,\s*"/ ?>/g<CR>

" Convert to dot string in single quote from php tag
vnoremap .t :s/<?php echo\s*/' . /g<CR> :s/\s*?>/ . '/g<CR>
" Convert to dot string in double quote from php tag
vnoremap .t2 :s/<?php echo\s*/" . /g<CR> :s/\s*?>/ . "/g<CR>

" Convert to comma string in single quote from php tag
vnoremap ,t :s/<?php echo\s*/', /g<CR> :s/\s*?>/, '/g<CR>
" Convert to comma string in double quote from php tag
vnoremap ,t2 :s/<?php echo\s*/", /g<CR> :s/\s*?>/, "/g<CR>
