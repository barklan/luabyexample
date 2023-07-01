---
title: "Neovim: autocmd"
date: "2023-07-01"
weight: 310
next: true
toc: true
---

An autocommand is a command that is executed automatically in response to some
event, such as a file being read or written or a buffer change
([documentation](https://neovim.io/doc/user/autocmd.html)).

## Start git commit messages in insert mode

```lua
vim.api.nvim_create_augroup("bufcheck", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
    group = "bufcheck",
    pattern = { "gitcommit", "gitrebase" },
    command = "startinsert | 1",
})
```

## Enable spell checker on certain files

```lua
vim.api.nvim_create_autocmd(
    { "BufRead", "BufNewFile" },
    { pattern = { "*.txt", "*.md", "*.tex" }, command = "setlocal spell" }
)
```

## Set timer to write all buffers every second

```lua
local function write_buf_timer()
    vim.fn.timer_start(1000, function()
        vim.api.nvim_command('wall')
    end)
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = write_buf_timer })
```
