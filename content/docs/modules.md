---
title: "Modules"
weight: 21
next: true
---

A Module is like a library full of functions and variables.

`info.lua`:

```lua
local m = {}

function m.valueOf(x)
    io.write("Value: ", x)
end

return m
```

`main.lua`:

```lua
local info = require("info")

info.valueOf("John")
```

<br>

```bash {.no-border}
$ lua main.lua
Value: John
```
