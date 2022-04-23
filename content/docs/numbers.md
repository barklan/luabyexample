---
title: "Numbers"
weight: 3
---

# Numbers

The number type represents **real** (double-precision floating-point) numbers.
Lua has no integer type, as it does not need it.

```lua
local a = 3
local b = 2
local c = a + b
print(c) -- 3

local d = b - a
print(d) -- 1

local x =  1 * 2 * 5
print(x) -- 10

local y = (2 + 2) * 2
print(y) -- 8

print(10 / 2) -- 5
print(2 ^ 3)  -- 8
print(5 % 2)  -- 1
```

{{< button relref="docs/strings"  >}}Next: Strings{{< /button >}}
