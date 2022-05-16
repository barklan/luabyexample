---
title: "Neovim: autocmd"
weight: 45
next: true
---

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
