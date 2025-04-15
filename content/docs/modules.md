---
title: "Modules"
date: "2023-07-01"
weight: 190
next: true
---

A Module is like a library full of functions and variables.

{{% columns %}}

`info.lua`:

```lua
local M = {}

function M.valueOf(x)
    io.write("Value: ", x)
end

return M
```

<--->

`main.lua`:

```lua
local info = require("info")

info.valueOf("John")
```

{{% /columns %}}

Running:

```bash
lua main.lua
```

```console {.output}
Value: John
```
