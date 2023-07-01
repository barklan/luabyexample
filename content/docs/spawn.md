---
title: "Spawning Processes"
date: "2023-07-01"
weight: 250
next: true
---

This is how to spawn external processes in Lua

```lua
local exit_code = os.execute("uname -s")

print(exit_code)
```

```txt {.fs90 .output}
Linux
0
```

If you want to capture the output

```lua
function os.capture(cmd, raw)
    local f = assert(io.popen(cmd, 'r'))
    local s = assert(f:read('*a'))
    f:close()
    if raw then return s end
    s = string.gsub(s, '^%s+', '')
    s = string.gsub(s, '%s+$', '')
    s = string.gsub(s, '[\n\r]+', ' ')
    return s
end

output = os.capture("uname -s")
print(output)
```

```txt {.fs90 .output}
Linux
```
