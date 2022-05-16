---
title: "Variadic Functions"
weight: 12
next: true
---

Variadic Function receive unknown number of parameters

```lua
function getSum(...)
    local sum = 0

    for k, v in pairs{...} do
        sum = sum + v
    end
    return sum
end

io.write("Sum : ", getSum(1,2,3,4,5,6), "\n")
```

```txt {.fs90 .no-border}
Sum : 21
```
