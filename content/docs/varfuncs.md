---
title: "Variadic Functions"
weight: 12
---

# Variadic Functions

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

```txt {.output}
Sum : 21
```

{{< button relref="docs/scope"  >}}Next: Variable Scope{{< /button >}}
