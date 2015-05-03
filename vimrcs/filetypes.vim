""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f #--- PH ----------------------------------------------<esc>FP2xi
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return 
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction


""""""""""""""""""""""""""""""
" => CoffeeScript section
"""""""""""""""""""""""""""""""
function! CoffeeScriptFold()
    setl foldmethod=indent
    setl foldlevelstart=1
endfunction
au FileType coffee call CoffeeScriptFold()


""""""""""""""""""""""""""""""
" => Go section
"""""""""""""""""""""""""""""""
 au FileType go nmap <Leader>i <Plug>(go-info)
 au FileType go nmap <Leader>gd <Plug>(go-doc)
 au FileType go nmap <Leader>r <Plug>(go-run)
 au FileType go nmap <Leader>b <Plug>(go-build)
 au FileType go nmap <Leader>t <Plug>(go-test)
 au FileType go nmap gd <Plug>(go-def-tab)
 
""""""""""""""""""""""""""""""
" => Code indentation 
"""""""""""""""""""""""""""""""

au FileType * setlocal shiftwidth=2 softtabstop=2
au FileType ruby setlocal shiftwidth=2 softtabstop=2
au FileType html setlocal shiftwidth=2 softtabstop=2
au FileType xml setlocal shiftwidth=2 softtabstop=2
au FileType eruby.html setlocal shiftwidth=2 softtabstop=2
au FileType eco.html setlocal shiftwidth=2 softtabstop=2
au FileType jsp setlocal shiftwidth=2 softtabstop=2
au FileType gsp.html setlocal shiftwidth=2 softtabstop=2
au FileType coffee setlocal shiftwidth=2 softtabstop=2
au FileType java setlocal shiftwidth=2 softtabstop=2
au FileType groovy setlocal shiftwidth=2 softtabstop=2
au FileType css setlocal shiftwidth=2 softtabstop=2
au FileType javascript setlocal shiftwidth=4 softtabstop=4
au FileType python setlocal shiftwidth=4 softtabstop=4
au FileType go setlocal shiftwidth=4 softtabstop=4
au FileType markdown setlocal shiftwidth=4 softtabstop=4

