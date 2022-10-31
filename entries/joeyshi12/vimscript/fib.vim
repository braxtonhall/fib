" Add me to your .vimrc :]

function! Fib(n)
    if a:n == 0
        return "0"
    elseif a:n == 1
        return "0,1"
    endif
    let sequence = "0,1"
    let prev = 0
    let curr = 1
    let iter = 2
    while iter <= a:n
        let curr = prev + curr
        let prev = curr - prev
        let sequence .= "," . curr
        let iter += 1
    endwhile
    return sequence
endfunction

function! AppendFib(n)
    execute "normal! i" . Fib(a:n) . "\<Esc>"
endfunction

" Map AppendFib to \fib
:command! -nargs=1 AppendFib :call AppendFib(<q-args>)
nnoremap <Leader>fib :AppendFib<Space>
