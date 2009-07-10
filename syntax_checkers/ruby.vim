if exists("loaded_ruby_syntax_checker")
    finish
endif
let loaded_ruby_syntax_checker = 1

"bail if the user doesnt have ruby installed
if !executable("ruby")
    finish
endif

function! SyntaxCheckers_ruby_GetQFList()
    set makeprg=ruby\ -c\ %
    silent make!
    return getqflist()
endfunction
