---
title: "Assertions"
date: "2023-07-01"
weight: 210
next: true
---

```lua
local function add(a,b)
   assert(type(a) == "number", "a is not a number")
   assert(type(b) == "number", "b is not a number")
   return a+b
end

add(10)
```

```console {.output}
lua: temp.lua:3: b is not a number
stack traceback:
        [C]: in function 'assert'
        temp.lua:3: in local 'add'
        temp.lua:7: in main chunk
        [C]: in ?
```
