httpx.vim Neovim plugin
====================

# Getting started

* Install httpx.vim manually: 

```
git clone https://github.com/httpx-sh/httpx.vim.git \
  ~/.config/nvim/pack/github/start/httpx.vim
```

* Open index.http file and move the cursor to a request, then invoke `:Httpx` command
* You can bind keymap as following and press `ctrl-h` to make request

```
nnoremap <c-h> :Httpx<CR>
```

# ScreenShot

![httpx Neovim](./doc/screen-shot.png)

# References

* Nvim Documentation API: https://neovim.io/doc/user/api.html
