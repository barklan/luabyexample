---
title: "Running via `nvim -l`"
date: "2025-04-15"
weight: 300
next: false
---

[Neovim](https://neovim.io/) has an ability to run lua scripts non-interactively
with LuaJIT runtime providing many [builtin functions](https://neovim.io/doc/user/builtin.html),
powerful ["standard library"](https://neovim.io/doc/user/lua.html#_lua-standard-modules)
and an [event-loop](https://neovim.io/doc/user/lua.html#vim.uv)
for asyncronous processing.

You can learn more about it in Neovim by invoking `:help -l`.

### Example

Create `lemp.lua`:

```lua {linenos=inline}
local greeting = "Hi!"
vim.fn.system("notify-send " .. greeting)
print(greeting)
```

Run:

```bash
nvim -l temp.lua
```

```console {.output}
Hi!
```

If you have `notify-send` available you should see a notification.
