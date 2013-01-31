autocmd BufNewFile,BufRead *.mdz
      \ if &ft =~# '^\%(conf\|modula2\)$' |
      \   set ft=markdownz |
      \ else |
      \   setf markdownz |
      \ endif
