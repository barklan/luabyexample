---
title: "Variadic Functions"
date: "2023-07-01"
weight: 90
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

```console {.output}
Sum : 21
```
