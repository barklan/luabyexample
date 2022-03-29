---
title: "Modules"
weight: 21
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

# Modules

A Module is like a library full of functions and variables.

{{< columns >}}

```lua
-- main.lua
local info = require "info"

info.valueOf("John")
```

<--->

```lua
-- info.lua
local m = {}

function m.valueOf(x)
    io.write("Value: ", x)
end

return m
```

{{< /columns >}}

```
$ lua main.lua
Value: John
```
