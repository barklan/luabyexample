---
title: "Functions"
weight: 7
---

# Functions

```lua
function calculateTax(price)
    return price * 0.21
end

local result = calculateTax(100)
print(result)
```

```txt {.output}
21.0
```

```lua
function info(name, age, country)
  print(name .. " is " .. age .. " years old.")
end

info("Kenneth", 12, "Jupiter")
```

```txt {.output}
Kenneth is 12 years old.
```

{{< button relref="docs/tables"  >}}Next: Tables{{< /button >}}
