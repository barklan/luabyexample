---
title: "Sleeping"
date: "2023-07-01"
weight: 160
next: true
---

Lua doesn't provide a standard `sleep` function, but there are several ways to implement one.

Linux:

```lua
function sleep(n)
    os.execute("sleep " .. tonumber(n))
end
```

Windows:

```lua
function sleep(n)
    if n > 0 then
        os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL")
    end
end
```

With [LuaSocket](https://github.com/diegonehab/luasocket) module (`luarocks install luasocket`):

```lua
socket = require("socket")

socket.sleep(0.2)
```
