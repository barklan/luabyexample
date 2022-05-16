---
title: "Functions"
weight: 7
next: true
---

```lua
function calculateTax(price)
    return price * 0.21
end

local result = calculateTax(100)
print(result)
```

```txt {.fs90 .no-border}
21.0
```

<br>

```lua
function info(name, age, country)
  print(name .. " is " .. age .. " years old.")
end

info("Kenneth", 12, "Jupiter")
```

```txt {.fs90 .no-border}
Kenneth is 12 years old.
```
