if exists('g:loaded_httpx') | finish | endif " prevent loading file twice

" command to run httpx plugin
command! Httpx lua require("httpx").execute()


let g:loaded_httpx = 1