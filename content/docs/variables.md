---
title: "Variables"
weight: 2
---

# Variables

```lua
local x = 10             --number
local x = 10.1           --number
local name = "John Doe"  --string
local isAlive = true     --boolean
local a = nil            --no value or invalid value
```

It is not an error to access a non-initialized variable; you just get the special value nil as the result:

```lua
print(b)
--nil
```

{{< button relref="docs/numbers"  >}}Next: Numbers{{< /button >}}
