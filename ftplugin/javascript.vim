function! FoldText()
    return substitute(getline(v:foldstart), '{.*', '{...}', '')
endfunction
