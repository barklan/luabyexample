---
title: "Constants"
date: "2023-07-01"
weight: 31
next: true
---

Constants are available since **Lua 5.4**:

```lua
local a <const> = 42
a = 100500
```

Produces an error:

```txt {.fs90}
lua: tmp.lua:2: attempt to assign to const variable 'a'
```
