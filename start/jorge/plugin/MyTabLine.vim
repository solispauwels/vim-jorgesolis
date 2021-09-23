function MyTabLine()

    let s = ''
    let t = tabpagenr()
    let i = 1

    while i <= tabpagenr('$')
        let buflist = tabpagebuflist(i)
        let winnr = tabpagewinnr(i)

        let s .= '%' . i . 'T'
        let s .= (i == t ? '%1*' : '%2*')
        "let s .= ' '
        "let s .= i . ')'
        let s .= '%*'
        "let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
        let s .= (i == t ? '%#TabLineSel#' : '%#TabLineFill#')

        let file = bufname(buflist[winnr - 1])
        let file = fnamemodify(file, ':p:t')

        if getbufvar(buflist[winnr - 1], "&modified")
            let file .= ' +'
        endif

        if file == ''
            let file = '[No Name]'
        endif

        let s .= ' '
        let s .= file
        let s .= ' '

        let i = i + 1
    endwhile

    let s .= '%T%#TabLineFill#%='
    "let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')

    return s

endfunction
