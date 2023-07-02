---
title: "Functions"
date: "2023-07-01"
weight: 80
next: true
---

```lua
function calculateTax(price)
    return price * 0.21
end

local result = calculateTax(100)
print(result)
```

``` {.fs95 .output}
21.0
```

<br>

```lua
function info(name, age, country)
  print(name .. " is " .. age .. " years old.")
end

info("Kenneth", 12, "Jupiter")
```

``` {.fs95 .output}
Kenneth is 12 years old.
```
