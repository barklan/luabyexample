---
title: "Variadic Functions"
weight: 12
# bookFlatSection: false
# bookToc: true
# bookHidden: false
# bookCollapseSection: false
# bookComments: false
# bookSearchExclude: false
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
```
Sum : 21
```
