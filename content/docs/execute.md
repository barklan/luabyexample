---
title: "Spawning Processes"
weight: 25
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
---

# Spawning Processes

This is how to spawn external processes in Lua

```lua
local exit_code = os.execute("uname -s")
--Linux

print(exit_code)
--0
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
--Linux
```

{{< button relref="docs/luarocks" >}}Next: LuaRocks{{< /button >}}
