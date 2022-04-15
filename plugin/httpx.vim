if exists('g:loaded_httpx') | finish | endif " prevent loading file twice

" command to run httpx plugin
command! Httpx lua require("httpx").execute()

let g:loaded_httpx = 1

autocmd BufNewFile *.http :call setline('.', '#!/usr/bin/env httpx --httpfile\n')
autocmd FileType httpfile :iabbrev <buffer> hget 
\<CR>### http get
\<CR>GET http://httpbin.org/ip

autocmd FileType httpfile :iabbrev <buffer> hpost 
\<CR>### http post
\<CR>POST http://httpbin.org/post
\<CR>Content-Type: application/json
\<CR>
\<CR>