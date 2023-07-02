---
title: "Sorting Tables"
date: "2023-07-01"
weight: 74
next: true
---

```lua
local t = {
    { id = 1, num = 3},
    { id = 2, num = 12},
    { id = 3, num = 7},
    { id = 4, num = 5},
    { id = 5, num = 8},
}

--sort ascending by num
table.sort(t, function(a,b) return a.num < b.num end)

for i, v in ipairs(t) do
    print(v.num)
end
```

``` {.fs95 .output}
3
5
7
8
12
```
