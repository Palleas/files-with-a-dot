" Ruby
" ---------------------------------------------------------------

autocmd FileType ruby call Ruby()
function! Ruby()
    " Prevents @remi from judging you on Twitter
    " https://twitter.com/remi/status/767701379926331392
    set sts=2 sw=2 ts=2

    " RSpec.vim mappings
    map <Leader>t :call RunCurrentSpecFile()<CR>
    map <Leader>s :call RunNearestSpec()<CR>
    map <Leader>l :call RunLastSpec()<CR>
    map <Leader>a :call RunAllSpecs()<CR>
endfunction

autocmd BufRead,BufNewFile Gemfile set filetype=ruby
autocmd BufRead,BufNewFile Dangerfile set filetype=ruby
autocmd BufRead,BufNewFile Fastfile set filetype=ruby
autocmd BufRead,BufNewFile Podfile set filetype=ruby
