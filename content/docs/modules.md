---
title: "Modules"
weight: 21
next: true
---

A Module is like a library full of functions and variables.

`info.lua`:

```lua
local M = {}

function M.valueOf(x)
    io.write("Value: ", x)
end

return M
```

`main.lua`:

```lua
local info = require("info")

info.valueOf("John")
```

<br>

```bash
$ lua main.lua
Value: John
```
